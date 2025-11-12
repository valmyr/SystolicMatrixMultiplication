// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Nov  9 18:56:38 2025
// Host        : ValmyrSilva07 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/ValmyrSilva07/Desktop/SystolicCore/vivado/SystolicCore/SystolicCore.sim/sim_1/synth/func/xsim/Arty7_top_sim_func_synth.v
// Design      : Arty7_top_sim
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* BAUDRATE = "115200" *) (* BYTESIZES = "8" *) (* CLOCK_REF = "10000000" *) 
(* CLOCK_TRANSFER_PC = "10000" *) (* COUNTER_CLOCK_INPUT = "100000000" *) (* OVERSAMPLING = "16" *) 
(* SIZE = "8" *) (* WIDTH = "8" *) (* WIDTHx = "1" *) 
(* NotValidForBitStream *)
module Arty7_top_sim
   (clock,
    uart_txd_in,
    btn,
    uart_rxd_out);
  input clock;
  input uart_txd_in;
  input [3:0]btn;
  output uart_rxd_out;

  wire SystolicCore0_n_1;
  wire [3:0]btn;
  wire [0:0]btn_IBUF;
  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire serial2mem_opb_clock;
  wire uart_rxd_out;
  wire uart_rxd_out_OBUF;
  wire uart_txd_in;
  wire uart_txd_in_IBUF;

  SystolicCoreTop SystolicCore0
       (.btn_IBUF(btn_IBUF),
        .clka(serial2mem_opb_clock),
        .clock_IBUF(clock_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ready_rx_out_reg(SystolicCore0_n_1),
        .uart_rxd_out_OBUF(uart_rxd_out_OBUF),
        .uart_txd_in_IBUF(uart_txd_in_IBUF));
  IBUF \btn_IBUF[0]_inst 
       (.I(btn[0]),
        .O(btn_IBUF));
  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  BUFG mem_i_1__0
       (.I(SystolicCore0_n_1),
        .O(serial2mem_opb_clock));
  OBUF uart_rxd_out_OBUF_inst
       (.I(uart_rxd_out_OBUF),
        .O(uart_rxd_out));
  IBUF uart_txd_in_IBUF_inst
       (.I(uart_txd_in),
        .O(uart_txd_in_IBUF));
endmodule

module SystolicCoreTop
   (uart_rxd_out_OBUF,
    ready_rx_out_reg,
    clock_IBUF_BUFG,
    btn_IBUF,
    uart_txd_in_IBUF,
    clka,
    clock_IBUF);
  output uart_rxd_out_OBUF;
  output ready_rx_out_reg;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input uart_txd_in_IBUF;
  input clka;
  input clock_IBUF;

  wire DUT_MatrixMultiplyM0_n_2;
  wire DUT_MatrixMultiplyM0_n_3;
  wire DUT_MatrixMultiplyM0_n_4;
  wire DUT_MatrixMultiplyM0_n_6;
  wire DUT_MatrixMultiplyM0_n_7;
  wire [7:0]a_load0;
  wire [7:0]b_load0;
  wire [0:0]btn_IBUF;
  wire clka;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire [1:0]fsm_unit_control;
  wire [3:1]fsm_unit_control_next__0;
  wire [2:0]i_counter;
  wire [2:0]j_counter;
  wire mem2serial_clock;
  wire [1:0]mem_fsm;
  wire [1:0]mem_fsm_1;
  wire p_0_in;
  wire p_0_in_0;
  wire ready_rx_out_reg;
  wire serial2mem_opA_n_12;
  wire serial2mem_opA_n_13;
  wire serial2mem_opA_n_14;
  wire serial2mem_opA_n_8;
  wire serial2mem_opB_n_12;
  wire serial2mem_opB_n_13;
  wire serial2mem_opa_in_data;
  wire serial2mem_opb_in_data;
  wire [7:0]single_port_ram_dout;
  wire [7:0]single_port_ram_dout_2;
  wire single_port_ram_we;
  wire systolicControlUnit_Global_n_29;
  wire systolicControlUnit_Global_n_30;
  wire systolicControlUnit_Global_n_31;
  wire systolicControlUnit_Global_n_32;
  wire systolicControlUnit_Global_n_4;
  wire systolicControlUnit_Global_n_5;
  wire systolicControlUnit_mem2serial_rvalid_o;
  wire systolicControlUnit_serial2mem_opa_valid_i;
  wire systolicControlUnit_serial2mem_opb_rw;
  wire systolicControlUnit_serial2mem_opb_valid_i;
  wire systolicControlUnit_syst_rready_i;
  wire systolicControlUnit_uart_valid_tx_in;
  wire uart_data_rx_out;
  wire [0:0]uart_data_tx_in;
  wire uart_ready_rx_out;
  wire uart_rxd_out_OBUF;
  wire [1:0]\uart_transmitter/px_bit_reg ;
  wire uart_txd_in_IBUF;

  systolicMatrixMultiply DUT_MatrixMultiplyM0
       (.D(fsm_unit_control_next__0[3:2]),
        .\FSM_onehot_fsm_unit_control_reg[2] (serial2mem_opA_n_8),
        .\FSM_onehot_fsm_unit_control_reg[3] ({systolicControlUnit_Global_n_4,systolicControlUnit_Global_n_5,fsm_unit_control[1]}),
        .Q({DUT_MatrixMultiplyM0_n_2,DUT_MatrixMultiplyM0_n_3}),
        .\a_load_reg[7]_0 (a_load0),
        .\b_load_reg[7]_0 (b_load0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\j_counter_reg[2] (uart_data_tx_in),
        .\px_bit_reg[0] (DUT_MatrixMultiplyM0_n_4),
        .\px_bit_reg[0]_0 (DUT_MatrixMultiplyM0_n_6),
        .\px_bit_reg[1] (DUT_MatrixMultiplyM0_n_7),
        .sdata_tx_out_i_3_0(j_counter),
        .sdata_tx_out_reg(\uart_transmitter/px_bit_reg ),
        .sdata_tx_out_reg_i_18_0(i_counter),
        .systolicControlUnit_mem2serial_rvalid_o(systolicControlUnit_mem2serial_rvalid_o),
        .systolicControlUnit_syst_rready_i(systolicControlUnit_syst_rready_i),
        .systolicControlUnit_uart_valid_tx_in(systolicControlUnit_uart_valid_tx_in));
  ref_clock__parameterized0 clock_hate_pc
       (.CLK(mem2serial_clock),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG));
  mem2seriala mem2serial_transfer_pc
       (.CLK(mem2serial_clock),
        .Q(j_counter),
        .btn_IBUF(btn_IBUF),
        .\i_counter_reg[2]_0 (i_counter),
        .systolicControlUnit_mem2serial_rvalid_o(systolicControlUnit_mem2serial_rvalid_o),
        .systolicControlUnit_uart_valid_tx_in(systolicControlUnit_uart_valid_tx_in));
  serial2mem__xdcDup__1 serial2mem_opA
       (.D({systolicControlUnit_Global_n_29,systolicControlUnit_Global_n_30}),
        .E(serial2mem_opB_n_12),
        .\FSM_onehot_fsm_unit_control_next_reg[2]_i_1 (mem_fsm_1),
        .\FSM_onehot_fsm_unit_control_reg[2] (serial2mem_opA_n_13),
        .Q(mem_fsm),
        .btn_IBUF(btn_IBUF),
        .\buf_data_reg[0]_0 (serial2mem_opa_in_data),
        .clka(clka),
        .douta(single_port_ram_dout),
        .\mem_fsm_reg[0]_0 (serial2mem_opA_n_8),
        .\mem_fsm_reg[0]_1 (serial2mem_opA_n_12),
        .\mem_fsm_reg[1]_0 (serial2mem_opA_n_14),
        .p_0_in(p_0_in),
        .p_0_in_0(p_0_in_0),
        .serial2mem_opb_valid_i_reg({systolicControlUnit_Global_n_5,fsm_unit_control[1]}),
        .systolicControlUnit_serial2mem_opa_valid_i(systolicControlUnit_serial2mem_opa_valid_i),
        .systolicControlUnit_serial2mem_opb_rw(systolicControlUnit_serial2mem_opb_rw),
        .uart_data_rx_out(uart_data_rx_out),
        .wea(single_port_ram_we));
  serial2mem serial2mem_opB
       (.D(fsm_unit_control_next__0[1]),
        .E(serial2mem_opB_n_12),
        .\FSM_onehot_fsm_unit_control_reg[1] (serial2mem_opA_n_14),
        .Q(fsm_unit_control),
        .btn_IBUF(btn_IBUF),
        .\buf_data_reg[0]_0 (serial2mem_opb_in_data),
        .clka(clka),
        .douta(single_port_ram_dout_2),
        .\mem_fsm_reg[0]_0 (serial2mem_opB_n_13),
        .\mem_fsm_reg[1]_0 (mem_fsm_1),
        .\mem_fsm_reg[1]_1 ({systolicControlUnit_Global_n_31,systolicControlUnit_Global_n_32}),
        .p_0_in(p_0_in_0),
        .systolicControlUnit_serial2mem_opb_rw(systolicControlUnit_serial2mem_opb_rw),
        .systolicControlUnit_serial2mem_opb_valid_i(systolicControlUnit_serial2mem_opb_valid_i),
        .uart_data_rx_out(uart_data_rx_out),
        .wea(single_port_ram_we));
  systolicControlUnitTop systolicControlUnit_Global
       (.D({systolicControlUnit_Global_n_29,systolicControlUnit_Global_n_30}),
        .\FSM_onehot_fsm_unit_control_reg[3]_0 (fsm_unit_control_next__0),
        .\FSM_sequential_currentStateSystolicControlUnit_reg[0] (b_load0),
        .\FSM_sequential_currentStateSystolicControlUnit_reg[0]_0 (a_load0),
        .Q({systolicControlUnit_Global_n_4,systolicControlUnit_Global_n_5,fsm_unit_control}),
        .\a_load_reg[7] (single_port_ram_dout),
        .\a_load_reg[7]_0 (serial2mem_opA_n_12),
        .\b_load_reg[7] (serial2mem_opB_n_13),
        .\b_load_reg[7]_0 ({DUT_MatrixMultiplyM0_n_2,DUT_MatrixMultiplyM0_n_3}),
        .btn_IBUF(btn_IBUF),
        .\buf_data_reg[0] (serial2mem_opA_n_13),
        .clock_IBUF(clock_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\data_rx_out_reg[0] (serial2mem_opa_in_data),
        .\data_rx_out_reg[0]_0 (serial2mem_opb_in_data),
        .douta(single_port_ram_dout_2),
        .\mem_fsm_reg[1] ({systolicControlUnit_Global_n_31,systolicControlUnit_Global_n_32}),
        .\mem_fsm_reg[1]_0 (mem_fsm),
        .\mem_fsm_reg[1]_1 (mem_fsm_1),
        .p_0_in(p_0_in),
        .p_0_in_0(p_0_in_0),
        .ready_rx_out_reg(ready_rx_out_reg),
        .systolicControlUnit_serial2mem_opa_valid_i(systolicControlUnit_serial2mem_opa_valid_i),
        .systolicControlUnit_serial2mem_opb_rw(systolicControlUnit_serial2mem_opb_rw),
        .systolicControlUnit_serial2mem_opb_valid_i(systolicControlUnit_serial2mem_opb_valid_i),
        .systolicControlUnit_syst_rready_i(systolicControlUnit_syst_rready_i),
        .systolicControlUnit_uart_valid_tx_in(systolicControlUnit_uart_valid_tx_in),
        .uart_data_rx_out(uart_data_rx_out),
        .uart_ready_rx_out(uart_ready_rx_out),
        .wea(single_port_ram_we));
  uart_top uart_systolic_core
       (.Q(\uart_transmitter/px_bit_reg ),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .sdata_tx_out_i_2(uart_data_tx_in),
        .sdata_tx_out_reg(DUT_MatrixMultiplyM0_n_7),
        .sdata_tx_out_reg_0(DUT_MatrixMultiplyM0_n_6),
        .sdata_tx_out_reg_1(DUT_MatrixMultiplyM0_n_4),
        .systolicControlUnit_uart_valid_tx_in(systolicControlUnit_uart_valid_tx_in),
        .uart_data_rx_out(uart_data_rx_out),
        .uart_ready_rx_out(uart_ready_rx_out),
        .uart_rxd_out_OBUF(uart_rxd_out_OBUF),
        .uart_txd_in_IBUF(uart_txd_in_IBUF));
endmodule

module accumulator_cells
   (y,
    \x_reg[0]_0 ,
    D,
    DI,
    \a_load_reg[1] ,
    S,
    \y_reg[0]_0 ,
    Q,
    clock_IBUF_BUFG,
    btn_IBUF,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 );
  output y;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  output [0:0]\a_load_reg[1] ;
  output [0:0]S;
  output [0:0]\y_reg[0]_0 ;
  input [1:0]Q;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [1:0]\accumulator_reg[3]_0 ;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input [0:0]\accumulator_reg[3]_3 ;
  input [0:0]\accumulator_reg[3]_4 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [1:0]Q;
  wire [0:0]S;
  wire [0:0]\a_load_reg[1] ;
  wire \accumulator[0]_i_2_n_0 ;
  wire \accumulator[0]_i_3_n_0 ;
  wire \accumulator[0]_i_4_n_0 ;
  wire \accumulator[0]_i_5_n_0 ;
  wire \accumulator[0]_i_6_n_0 ;
  wire \accumulator[4]_i_2_n_0 ;
  wire \accumulator[4]_i_3_n_0 ;
  wire \accumulator[4]_i_4_n_0 ;
  wire \accumulator[4]_i_5_n_0 ;
  wire \accumulator_reg[0]_i_1_n_0 ;
  wire \accumulator_reg[0]_i_1_n_1 ;
  wire \accumulator_reg[0]_i_1_n_2 ;
  wire \accumulator_reg[0]_i_1_n_3 ;
  wire \accumulator_reg[0]_i_1_n_4 ;
  wire \accumulator_reg[0]_i_1_n_5 ;
  wire \accumulator_reg[0]_i_1_n_6 ;
  wire \accumulator_reg[0]_i_1_n_7 ;
  wire [1:0]\accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire [0:0]\accumulator_reg[3]_3 ;
  wire [0:0]\accumulator_reg[3]_4 ;
  wire \accumulator_reg[4]_i_1_n_1 ;
  wire \accumulator_reg[4]_i_1_n_2 ;
  wire \accumulator_reg[4]_i_1_n_3 ;
  wire \accumulator_reg[4]_i_1_n_4 ;
  wire \accumulator_reg[4]_i_1_n_5 ;
  wire \accumulator_reg[4]_i_1_n_6 ;
  wire \accumulator_reg[4]_i_1_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire y;
  wire [0:0]\y_reg[0]_0 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2 
       (.I0(\accumulator_reg[3]_0 [0]),
        .I1(Q[0]),
        .I2(\accumulator_reg[3]_1 ),
        .O(\accumulator[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__0 
       (.I0(\x_reg[0]_0 ),
        .I1(Q[1]),
        .I2(\accumulator_reg[3]_1 ),
        .O(DI));
  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__7 
       (.I0(\accumulator_reg[3]_0 [1]),
        .I1(y),
        .I2(\accumulator_reg[3]_2 ),
        .O(\a_load_reg[1] ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6 
       (.I0(Q[0]),
        .I1(\accumulator_reg[3]_0 [0]),
        .I2(D[0]),
        .I3(\accumulator_reg[3]_1 ),
        .O(\accumulator[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__0 
       (.I0(Q[1]),
        .I1(\x_reg[0]_0 ),
        .I2(\accumulator_reg[3]_3 ),
        .I3(\accumulator_reg[3]_1 ),
        .O(S));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__7 
       (.I0(y),
        .I1(\accumulator_reg[3]_0 [1]),
        .I2(\accumulator_reg[3]_4 ),
        .I3(\accumulator_reg[3]_2 ),
        .O(\y_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1_n_0 ,\accumulator_reg[0]_i_1_n_1 ,\accumulator_reg[0]_i_1_n_2 ,\accumulator_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator[0]_i_2_n_0 }),
        .O({\accumulator_reg[0]_i_1_n_4 ,\accumulator_reg[0]_i_1_n_5 ,\accumulator_reg[0]_i_1_n_6 ,\accumulator_reg[0]_i_1_n_7 }),
        .S({\accumulator[0]_i_3_n_0 ,\accumulator[0]_i_4_n_0 ,\accumulator[0]_i_5_n_0 ,\accumulator[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1 
       (.CI(\accumulator_reg[0]_i_1_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1_n_1 ,\accumulator_reg[4]_i_1_n_2 ,\accumulator_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1_n_4 ,\accumulator_reg[4]_i_1_n_5 ,\accumulator_reg[4]_i_1_n_6 ,\accumulator_reg[4]_i_1_n_7 }),
        .S({\accumulator[4]_i_2_n_0 ,\accumulator[4]_i_3_n_0 ,\accumulator[4]_i_4_n_0 ,\accumulator[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[3]_0 [0]),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(Q[0]),
        .Q(y));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_10
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    \x_reg[0]_1 ,
    S,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_2 ,
    DI,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]\x_reg[0]_1 ;
  output [0:0]S;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_2 ;
  input [0:0]DI;
  input [0:0]\accumulator_reg[3]_0 ;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input [0:0]\accumulator_reg[3]_4 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__8_n_0 ;
  wire \accumulator[0]_i_4__8_n_0 ;
  wire \accumulator[0]_i_5__8_n_0 ;
  wire \accumulator[4]_i_2__8_n_0 ;
  wire \accumulator[4]_i_3__8_n_0 ;
  wire \accumulator[4]_i_4__8_n_0 ;
  wire \accumulator[4]_i_5__8_n_0 ;
  wire \accumulator_reg[0]_i_1__8_n_0 ;
  wire \accumulator_reg[0]_i_1__8_n_1 ;
  wire \accumulator_reg[0]_i_1__8_n_2 ;
  wire \accumulator_reg[0]_i_1__8_n_3 ;
  wire \accumulator_reg[0]_i_1__8_n_4 ;
  wire \accumulator_reg[0]_i_1__8_n_5 ;
  wire \accumulator_reg[0]_i_1__8_n_6 ;
  wire \accumulator_reg[0]_i_1__8_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire [0:0]\accumulator_reg[3]_4 ;
  wire \accumulator_reg[4]_i_1__8_n_1 ;
  wire \accumulator_reg[4]_i_1__8_n_2 ;
  wire \accumulator_reg[4]_i_1__8_n_3 ;
  wire \accumulator_reg[4]_i_1__8_n_4 ;
  wire \accumulator_reg[4]_i_1__8_n_5 ;
  wire \accumulator_reg[4]_i_1__8_n_6 ;
  wire \accumulator_reg[4]_i_1__8_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire [0:0]\x_reg[0]_1 ;
  wire \x_reg[0]_2 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__8_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__9 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_1 ),
        .O(\x_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__8 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__8 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__8 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__8_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__16 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_3 ),
        .I2(\accumulator_reg[3]_4 ),
        .I3(\accumulator_reg[3]_1 ),
        .O(S));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__8 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__8 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__8 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__8 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__8_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__8_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__8 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__8_n_0 ,\accumulator_reg[0]_i_1__8_n_1 ,\accumulator_reg[0]_i_1__8_n_2 ,\accumulator_reg[0]_i_1__8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__8_n_4 ,\accumulator_reg[0]_i_1__8_n_5 ,\accumulator_reg[0]_i_1__8_n_6 ,\accumulator_reg[0]_i_1__8_n_7 }),
        .S({\accumulator[0]_i_3__8_n_0 ,\accumulator[0]_i_4__8_n_0 ,\accumulator[0]_i_5__8_n_0 ,\accumulator_reg[3]_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__8_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__8_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__8_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__8_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__8 
       (.CI(\accumulator_reg[0]_i_1__8_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__8_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__8_n_1 ,\accumulator_reg[4]_i_1__8_n_2 ,\accumulator_reg[4]_i_1__8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__8_n_4 ,\accumulator_reg[4]_i_1__8_n_5 ,\accumulator_reg[4]_i_1__8_n_6 ,\accumulator_reg[4]_i_1__8_n_7 }),
        .S({\accumulator[4]_i_2__8_n_0 ,\accumulator[4]_i_3__8_n_0 ,\accumulator[4]_i_4__8_n_0 ,\accumulator[4]_i_5__8_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__8_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__8_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__8_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_2 ),
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
module accumulator_cells_11
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    \x_reg[0]_1 ,
    \y_reg[0]_1 ,
    \y_reg[0]_2 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_2 ,
    DI,
    S,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]\x_reg[0]_1 ;
  output [0:0]\y_reg[0]_1 ;
  input \y_reg[0]_2 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_2 ;
  input [0:0]DI;
  input [0:0]S;
  input \accumulator_reg[3]_0 ;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input [0:0]\accumulator_reg[3]_3 ;
  input \accumulator_reg[3]_4 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__16_n_0 ;
  wire \accumulator[0]_i_4__16_n_0 ;
  wire \accumulator[0]_i_5__16_n_0 ;
  wire \accumulator[4]_i_2__16_n_0 ;
  wire \accumulator[4]_i_3__16_n_0 ;
  wire \accumulator[4]_i_4__16_n_0 ;
  wire \accumulator[4]_i_5__16_n_0 ;
  wire \accumulator_reg[0]_i_1__16_n_0 ;
  wire \accumulator_reg[0]_i_1__16_n_1 ;
  wire \accumulator_reg[0]_i_1__16_n_2 ;
  wire \accumulator_reg[0]_i_1__16_n_3 ;
  wire \accumulator_reg[0]_i_1__16_n_4 ;
  wire \accumulator_reg[0]_i_1__16_n_5 ;
  wire \accumulator_reg[0]_i_1__16_n_6 ;
  wire \accumulator_reg[0]_i_1__16_n_7 ;
  wire \accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire [0:0]\accumulator_reg[3]_3 ;
  wire \accumulator_reg[3]_4 ;
  wire \accumulator_reg[4]_i_1__16_n_1 ;
  wire \accumulator_reg[4]_i_1__16_n_2 ;
  wire \accumulator_reg[4]_i_1__16_n_3 ;
  wire \accumulator_reg[4]_i_1__16_n_4 ;
  wire \accumulator_reg[4]_i_1__16_n_5 ;
  wire \accumulator_reg[4]_i_1__16_n_6 ;
  wire \accumulator_reg[4]_i_1__16_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire [0:0]\x_reg[0]_1 ;
  wire \x_reg[0]_2 ;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire \y_reg[0]_2 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__16_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__17 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_1 ),
        .I2(\accumulator_reg[3]_0 ),
        .O(\x_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__16 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__16_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__16 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__16_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__16 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__16_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__24 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_3 ),
        .I3(\accumulator_reg[3]_4 ),
        .O(\y_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__16 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__16_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__16 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__16_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__16 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__16_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__16 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__16_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__16_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__16 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__16_n_0 ,\accumulator_reg[0]_i_1__16_n_1 ,\accumulator_reg[0]_i_1__16_n_2 ,\accumulator_reg[0]_i_1__16_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__16_n_4 ,\accumulator_reg[0]_i_1__16_n_5 ,\accumulator_reg[0]_i_1__16_n_6 ,\accumulator_reg[0]_i_1__16_n_7 }),
        .S({\accumulator[0]_i_3__16_n_0 ,\accumulator[0]_i_4__16_n_0 ,\accumulator[0]_i_5__16_n_0 ,S}));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__16_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__16_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__16_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__16_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__16 
       (.CI(\accumulator_reg[0]_i_1__16_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__16_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__16_n_1 ,\accumulator_reg[4]_i_1__16_n_2 ,\accumulator_reg[4]_i_1__16_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__16_n_4 ,\accumulator_reg[4]_i_1__16_n_5 ,\accumulator_reg[4]_i_1__16_n_6 ,\accumulator_reg[4]_i_1__16_n_7 }),
        .S({\accumulator[4]_i_2__16_n_0 ,\accumulator[4]_i_3__16_n_0 ,\accumulator[4]_i_4__16_n_0 ,\accumulator[4]_i_5__16_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__16_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__16_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__16_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_2 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_2 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_12
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    \x_reg[0]_1 ,
    S,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_2 ,
    DI,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]\x_reg[0]_1 ;
  output [0:0]S;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_2 ;
  input [0:0]DI;
  input [0:0]\accumulator_reg[3]_0 ;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input [0:0]\accumulator_reg[3]_4 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__24_n_0 ;
  wire \accumulator[0]_i_4__24_n_0 ;
  wire \accumulator[0]_i_5__24_n_0 ;
  wire \accumulator[4]_i_2__24_n_0 ;
  wire \accumulator[4]_i_3__24_n_0 ;
  wire \accumulator[4]_i_4__24_n_0 ;
  wire \accumulator[4]_i_5__24_n_0 ;
  wire \accumulator_reg[0]_i_1__24_n_0 ;
  wire \accumulator_reg[0]_i_1__24_n_1 ;
  wire \accumulator_reg[0]_i_1__24_n_2 ;
  wire \accumulator_reg[0]_i_1__24_n_3 ;
  wire \accumulator_reg[0]_i_1__24_n_4 ;
  wire \accumulator_reg[0]_i_1__24_n_5 ;
  wire \accumulator_reg[0]_i_1__24_n_6 ;
  wire \accumulator_reg[0]_i_1__24_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire [0:0]\accumulator_reg[3]_4 ;
  wire \accumulator_reg[4]_i_1__24_n_1 ;
  wire \accumulator_reg[4]_i_1__24_n_2 ;
  wire \accumulator_reg[4]_i_1__24_n_3 ;
  wire \accumulator_reg[4]_i_1__24_n_4 ;
  wire \accumulator_reg[4]_i_1__24_n_5 ;
  wire \accumulator_reg[4]_i_1__24_n_6 ;
  wire \accumulator_reg[4]_i_1__24_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire [0:0]\x_reg[0]_1 ;
  wire \x_reg[0]_2 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__24_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__25 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_1 ),
        .O(\x_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__24 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__24_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__24 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__24_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__24 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__24_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__32 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_3 ),
        .I2(\accumulator_reg[3]_4 ),
        .I3(\accumulator_reg[3]_1 ),
        .O(S));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__24 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__24_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__24 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__24_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__24 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__24_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__24 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__24_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__24_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__24 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__24_n_0 ,\accumulator_reg[0]_i_1__24_n_1 ,\accumulator_reg[0]_i_1__24_n_2 ,\accumulator_reg[0]_i_1__24_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__24_n_4 ,\accumulator_reg[0]_i_1__24_n_5 ,\accumulator_reg[0]_i_1__24_n_6 ,\accumulator_reg[0]_i_1__24_n_7 }),
        .S({\accumulator[0]_i_3__24_n_0 ,\accumulator[0]_i_4__24_n_0 ,\accumulator[0]_i_5__24_n_0 ,\accumulator_reg[3]_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__24_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__24_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__24_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__24_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__24 
       (.CI(\accumulator_reg[0]_i_1__24_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__24_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__24_n_1 ,\accumulator_reg[4]_i_1__24_n_2 ,\accumulator_reg[4]_i_1__24_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__24_n_4 ,\accumulator_reg[4]_i_1__24_n_5 ,\accumulator_reg[4]_i_1__24_n_6 ,\accumulator_reg[4]_i_1__24_n_7 }),
        .S({\accumulator[4]_i_2__24_n_0 ,\accumulator[4]_i_3__24_n_0 ,\accumulator[4]_i_4__24_n_0 ,\accumulator[4]_i_5__24_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__24_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__24_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__24_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_2 ),
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
    D,
    \x_reg[0]_1 ,
    \y_reg[0]_1 ,
    \y_reg[0]_2 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_2 ,
    DI,
    S,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]\x_reg[0]_1 ;
  output [0:0]\y_reg[0]_1 ;
  input \y_reg[0]_2 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_2 ;
  input [0:0]DI;
  input [0:0]S;
  input \accumulator_reg[3]_0 ;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input [0:0]\accumulator_reg[3]_4 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__32_n_0 ;
  wire \accumulator[0]_i_4__32_n_0 ;
  wire \accumulator[0]_i_5__32_n_0 ;
  wire \accumulator[4]_i_2__32_n_0 ;
  wire \accumulator[4]_i_3__32_n_0 ;
  wire \accumulator[4]_i_4__32_n_0 ;
  wire \accumulator[4]_i_5__32_n_0 ;
  wire \accumulator_reg[0]_i_1__32_n_0 ;
  wire \accumulator_reg[0]_i_1__32_n_1 ;
  wire \accumulator_reg[0]_i_1__32_n_2 ;
  wire \accumulator_reg[0]_i_1__32_n_3 ;
  wire \accumulator_reg[0]_i_1__32_n_4 ;
  wire \accumulator_reg[0]_i_1__32_n_5 ;
  wire \accumulator_reg[0]_i_1__32_n_6 ;
  wire \accumulator_reg[0]_i_1__32_n_7 ;
  wire \accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire [0:0]\accumulator_reg[3]_4 ;
  wire \accumulator_reg[4]_i_1__32_n_1 ;
  wire \accumulator_reg[4]_i_1__32_n_2 ;
  wire \accumulator_reg[4]_i_1__32_n_3 ;
  wire \accumulator_reg[4]_i_1__32_n_4 ;
  wire \accumulator_reg[4]_i_1__32_n_5 ;
  wire \accumulator_reg[4]_i_1__32_n_6 ;
  wire \accumulator_reg[4]_i_1__32_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire [0:0]\x_reg[0]_1 ;
  wire \x_reg[0]_2 ;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire \y_reg[0]_2 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__32_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__33 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_1 ),
        .I2(\accumulator_reg[3]_2 ),
        .O(\x_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__32 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__32_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__32 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__32_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__32 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__32_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__40 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_3 ),
        .I2(\accumulator_reg[3]_4 ),
        .I3(\accumulator_reg[3]_2 ),
        .O(\y_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__32 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__32_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__32 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__32_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__32 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__32_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__32 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__32_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__32_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__32 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__32_n_0 ,\accumulator_reg[0]_i_1__32_n_1 ,\accumulator_reg[0]_i_1__32_n_2 ,\accumulator_reg[0]_i_1__32_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__32_n_4 ,\accumulator_reg[0]_i_1__32_n_5 ,\accumulator_reg[0]_i_1__32_n_6 ,\accumulator_reg[0]_i_1__32_n_7 }),
        .S({\accumulator[0]_i_3__32_n_0 ,\accumulator[0]_i_4__32_n_0 ,\accumulator[0]_i_5__32_n_0 ,S}));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__32_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__32_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__32_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__32_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__32 
       (.CI(\accumulator_reg[0]_i_1__32_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__32_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__32_n_1 ,\accumulator_reg[4]_i_1__32_n_2 ,\accumulator_reg[4]_i_1__32_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__32_n_4 ,\accumulator_reg[4]_i_1__32_n_5 ,\accumulator_reg[4]_i_1__32_n_6 ,\accumulator_reg[4]_i_1__32_n_7 }),
        .S({\accumulator[4]_i_2__32_n_0 ,\accumulator[4]_i_3__32_n_0 ,\accumulator[4]_i_4__32_n_0 ,\accumulator[4]_i_5__32_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__32_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__32_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__32_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_2 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_2 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_14
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    \x_reg[0]_1 ,
    S,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_2 ,
    DI,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 ,
    ena_mac);
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]\x_reg[0]_1 ;
  output [0:0]S;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_2 ;
  input [0:0]DI;
  input [0:0]\accumulator_reg[3]_0 ;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input [0:0]\accumulator_reg[3]_4 ;
  input ena_mac;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__40_n_0 ;
  wire \accumulator[0]_i_4__40_n_0 ;
  wire \accumulator[0]_i_5__40_n_0 ;
  wire \accumulator[4]_i_2__40_n_0 ;
  wire \accumulator[4]_i_3__40_n_0 ;
  wire \accumulator[4]_i_4__40_n_0 ;
  wire \accumulator[4]_i_5__40_n_0 ;
  wire \accumulator_reg[0]_i_1__40_n_0 ;
  wire \accumulator_reg[0]_i_1__40_n_1 ;
  wire \accumulator_reg[0]_i_1__40_n_2 ;
  wire \accumulator_reg[0]_i_1__40_n_3 ;
  wire \accumulator_reg[0]_i_1__40_n_4 ;
  wire \accumulator_reg[0]_i_1__40_n_5 ;
  wire \accumulator_reg[0]_i_1__40_n_6 ;
  wire \accumulator_reg[0]_i_1__40_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire [0:0]\accumulator_reg[3]_4 ;
  wire \accumulator_reg[4]_i_1__40_n_1 ;
  wire \accumulator_reg[4]_i_1__40_n_2 ;
  wire \accumulator_reg[4]_i_1__40_n_3 ;
  wire \accumulator_reg[4]_i_1__40_n_4 ;
  wire \accumulator_reg[4]_i_1__40_n_5 ;
  wire \accumulator_reg[4]_i_1__40_n_6 ;
  wire \accumulator_reg[4]_i_1__40_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire \x_reg[0]_0 ;
  wire [0:0]\x_reg[0]_1 ;
  wire \x_reg[0]_2 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__40_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__41 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_1 ),
        .O(\x_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__40 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__40_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__40 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__40_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__40 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__40_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__48 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_3 ),
        .I2(\accumulator_reg[3]_4 ),
        .I3(ena_mac),
        .O(S));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__40 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__40_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__40 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__40_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__40 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__40_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__40 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__40_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__40_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__40 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__40_n_0 ,\accumulator_reg[0]_i_1__40_n_1 ,\accumulator_reg[0]_i_1__40_n_2 ,\accumulator_reg[0]_i_1__40_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__40_n_4 ,\accumulator_reg[0]_i_1__40_n_5 ,\accumulator_reg[0]_i_1__40_n_6 ,\accumulator_reg[0]_i_1__40_n_7 }),
        .S({\accumulator[0]_i_3__40_n_0 ,\accumulator[0]_i_4__40_n_0 ,\accumulator[0]_i_5__40_n_0 ,\accumulator_reg[3]_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__40_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__40_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__40_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__40_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__40 
       (.CI(\accumulator_reg[0]_i_1__40_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__40_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__40_n_1 ,\accumulator_reg[4]_i_1__40_n_2 ,\accumulator_reg[4]_i_1__40_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__40_n_4 ,\accumulator_reg[4]_i_1__40_n_5 ,\accumulator_reg[4]_i_1__40_n_6 ,\accumulator_reg[4]_i_1__40_n_7 }),
        .S({\accumulator[4]_i_2__40_n_0 ,\accumulator[4]_i_3__40_n_0 ,\accumulator[4]_i_4__40_n_0 ,\accumulator[4]_i_5__40_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__40_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__40_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__40_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_2 ),
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
    D,
    \x_reg[0]_1 ,
    \y_reg[0]_1 ,
    \y_reg[0]_2 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_2 ,
    DI,
    S,
    ena_mac,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]\x_reg[0]_1 ;
  output [0:0]\y_reg[0]_1 ;
  input \y_reg[0]_2 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_2 ;
  input [0:0]DI;
  input [0:0]S;
  input ena_mac;
  input \accumulator_reg[3]_0 ;
  input \accumulator_reg[3]_1 ;
  input [0:0]\accumulator_reg[3]_2 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__48_n_0 ;
  wire \accumulator[0]_i_4__48_n_0 ;
  wire \accumulator[0]_i_5__48_n_0 ;
  wire \accumulator[4]_i_2__48_n_0 ;
  wire \accumulator[4]_i_3__48_n_0 ;
  wire \accumulator[4]_i_4__48_n_0 ;
  wire \accumulator[4]_i_5__48_n_0 ;
  wire \accumulator_reg[0]_i_1__48_n_0 ;
  wire \accumulator_reg[0]_i_1__48_n_1 ;
  wire \accumulator_reg[0]_i_1__48_n_2 ;
  wire \accumulator_reg[0]_i_1__48_n_3 ;
  wire \accumulator_reg[0]_i_1__48_n_4 ;
  wire \accumulator_reg[0]_i_1__48_n_5 ;
  wire \accumulator_reg[0]_i_1__48_n_6 ;
  wire \accumulator_reg[0]_i_1__48_n_7 ;
  wire \accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire [0:0]\accumulator_reg[3]_2 ;
  wire \accumulator_reg[4]_i_1__48_n_1 ;
  wire \accumulator_reg[4]_i_1__48_n_2 ;
  wire \accumulator_reg[4]_i_1__48_n_3 ;
  wire \accumulator_reg[4]_i_1__48_n_4 ;
  wire \accumulator_reg[4]_i_1__48_n_5 ;
  wire \accumulator_reg[4]_i_1__48_n_6 ;
  wire \accumulator_reg[4]_i_1__48_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire \x_reg[0]_0 ;
  wire [0:0]\x_reg[0]_1 ;
  wire \x_reg[0]_2 ;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire \y_reg[0]_2 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__48_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__49 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_0 ),
        .I2(ena_mac),
        .O(\x_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__48 
       (.I0(ena_mac),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__48_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__48 
       (.I0(ena_mac),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__48_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__48 
       (.I0(ena_mac),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__48_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__56 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_1 ),
        .I2(\accumulator_reg[3]_2 ),
        .I3(ena_mac),
        .O(\y_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__48 
       (.I0(ena_mac),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__48_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__48 
       (.I0(ena_mac),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__48_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__48 
       (.I0(ena_mac),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__48_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__48 
       (.I0(ena_mac),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__48_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__48_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__48 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__48_n_0 ,\accumulator_reg[0]_i_1__48_n_1 ,\accumulator_reg[0]_i_1__48_n_2 ,\accumulator_reg[0]_i_1__48_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__48_n_4 ,\accumulator_reg[0]_i_1__48_n_5 ,\accumulator_reg[0]_i_1__48_n_6 ,\accumulator_reg[0]_i_1__48_n_7 }),
        .S({\accumulator[0]_i_3__48_n_0 ,\accumulator[0]_i_4__48_n_0 ,\accumulator[0]_i_5__48_n_0 ,S}));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__48_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__48_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__48_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__48_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__48 
       (.CI(\accumulator_reg[0]_i_1__48_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__48_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__48_n_1 ,\accumulator_reg[4]_i_1__48_n_2 ,\accumulator_reg[4]_i_1__48_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__48_n_4 ,\accumulator_reg[4]_i_1__48_n_5 ,\accumulator_reg[4]_i_1__48_n_6 ,\accumulator_reg[4]_i_1__48_n_7 }),
        .S({\accumulator[4]_i_2__48_n_0 ,\accumulator[4]_i_3__48_n_0 ,\accumulator[4]_i_4__48_n_0 ,\accumulator[4]_i_5__48_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__48_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__48_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__48_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_2 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_2 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_16
   (\x_reg[0]_0 ,
    D,
    \x_reg[0]_1 ,
    \x_reg[0]_2 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    DI,
    \accumulator_reg[3]_0 ,
    ena_mac,
    \accumulator_reg[3]_1 );
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]\x_reg[0]_1 ;
  input \x_reg[0]_2 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [0:0]DI;
  input [0:0]\accumulator_reg[3]_0 ;
  input ena_mac;
  input \accumulator_reg[3]_1 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire \accumulator[0]_i_3__56_n_0 ;
  wire \accumulator[0]_i_4__56_n_0 ;
  wire \accumulator[0]_i_5__56_n_0 ;
  wire \accumulator[4]_i_2__56_n_0 ;
  wire \accumulator[4]_i_3__56_n_0 ;
  wire \accumulator[4]_i_4__56_n_0 ;
  wire \accumulator[4]_i_5__56_n_0 ;
  wire \accumulator_reg[0]_i_1__56_n_0 ;
  wire \accumulator_reg[0]_i_1__56_n_1 ;
  wire \accumulator_reg[0]_i_1__56_n_2 ;
  wire \accumulator_reg[0]_i_1__56_n_3 ;
  wire \accumulator_reg[0]_i_1__56_n_4 ;
  wire \accumulator_reg[0]_i_1__56_n_5 ;
  wire \accumulator_reg[0]_i_1__56_n_6 ;
  wire \accumulator_reg[0]_i_1__56_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[4]_i_1__56_n_1 ;
  wire \accumulator_reg[4]_i_1__56_n_2 ;
  wire \accumulator_reg[4]_i_1__56_n_3 ;
  wire \accumulator_reg[4]_i_1__56_n_4 ;
  wire \accumulator_reg[4]_i_1__56_n_5 ;
  wire \accumulator_reg[4]_i_1__56_n_6 ;
  wire \accumulator_reg[4]_i_1__56_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire \x_reg[0]_0 ;
  wire [0:0]\x_reg[0]_1 ;
  wire \x_reg[0]_2 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__56_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__57 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_1 ),
        .I2(ena_mac),
        .O(\x_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__56 
       (.I0(ena_mac),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__56_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__56 
       (.I0(ena_mac),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__56_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__56 
       (.I0(ena_mac),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__56_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__56 
       (.I0(ena_mac),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__56_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__56 
       (.I0(ena_mac),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__56_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__56 
       (.I0(ena_mac),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__56_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__56 
       (.I0(ena_mac),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__56_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__56_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__56 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__56_n_0 ,\accumulator_reg[0]_i_1__56_n_1 ,\accumulator_reg[0]_i_1__56_n_2 ,\accumulator_reg[0]_i_1__56_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__56_n_4 ,\accumulator_reg[0]_i_1__56_n_5 ,\accumulator_reg[0]_i_1__56_n_6 ,\accumulator_reg[0]_i_1__56_n_7 }),
        .S({\accumulator[0]_i_3__56_n_0 ,\accumulator[0]_i_4__56_n_0 ,\accumulator[0]_i_5__56_n_0 ,\accumulator_reg[3]_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__56_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__56_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__56_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__56_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__56 
       (.CI(\accumulator_reg[0]_i_1__56_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__56_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__56_n_1 ,\accumulator_reg[4]_i_1__56_n_2 ,\accumulator_reg[4]_i_1__56_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__56_n_4 ,\accumulator_reg[4]_i_1__56_n_5 ,\accumulator_reg[4]_i_1__56_n_6 ,\accumulator_reg[4]_i_1__56_n_7 }),
        .S({\accumulator[4]_i_2__56_n_0 ,\accumulator[4]_i_3__56_n_0 ,\accumulator[4]_i_4__56_n_0 ,\accumulator[4]_i_5__56_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__56_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__56_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__56_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_2 ),
        .Q(\x_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_17
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    DI,
    S,
    \y_reg[0]_1 ,
    Q,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 ,
    \accumulator_reg[3]_5 ,
    \accumulator_reg[3]_6 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  output [0:0]S;
  output [0:0]\y_reg[0]_1 ;
  input [1:0]Q;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]\accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input [0:0]\accumulator_reg[3]_3 ;
  input \accumulator_reg[3]_4 ;
  input [0:0]\accumulator_reg[3]_5 ;
  input \accumulator_reg[3]_6 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [1:0]Q;
  wire [0:0]S;
  wire \accumulator[0]_i_3__1_n_0 ;
  wire \accumulator[0]_i_4__1_n_0 ;
  wire \accumulator[0]_i_5__1_n_0 ;
  wire \accumulator[4]_i_2__1_n_0 ;
  wire \accumulator[4]_i_3__1_n_0 ;
  wire \accumulator[4]_i_4__1_n_0 ;
  wire \accumulator[4]_i_5__1_n_0 ;
  wire \accumulator_reg[0]_i_1__1_n_0 ;
  wire \accumulator_reg[0]_i_1__1_n_1 ;
  wire \accumulator_reg[0]_i_1__1_n_2 ;
  wire \accumulator_reg[0]_i_1__1_n_3 ;
  wire \accumulator_reg[0]_i_1__1_n_4 ;
  wire \accumulator_reg[0]_i_1__1_n_5 ;
  wire \accumulator_reg[0]_i_1__1_n_6 ;
  wire \accumulator_reg[0]_i_1__1_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire [0:0]\accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire [0:0]\accumulator_reg[3]_3 ;
  wire \accumulator_reg[3]_4 ;
  wire [0:0]\accumulator_reg[3]_5 ;
  wire \accumulator_reg[3]_6 ;
  wire \accumulator_reg[4]_i_1__1_n_1 ;
  wire \accumulator_reg[4]_i_1__1_n_2 ;
  wire \accumulator_reg[4]_i_1__1_n_3 ;
  wire \accumulator_reg[4]_i_1__1_n_4 ;
  wire \accumulator_reg[4]_i_1__1_n_5 ;
  wire \accumulator_reg[4]_i_1__1_n_6 ;
  wire \accumulator_reg[4]_i_1__1_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__1_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__2 
       (.I0(\x_reg[0]_0 ),
        .I1(Q[1]),
        .I2(\accumulator_reg[3]_2 ),
        .O(DI));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__1 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__1 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__1 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__2 
       (.I0(Q[1]),
        .I1(\x_reg[0]_0 ),
        .I2(\accumulator_reg[3]_3 ),
        .I3(\accumulator_reg[3]_2 ),
        .O(S));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__9 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_4 ),
        .I2(\accumulator_reg[3]_5 ),
        .I3(\accumulator_reg[3]_6 ),
        .O(\y_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__1 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__1 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__1 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__1 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__1_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__1 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__1_n_0 ,\accumulator_reg[0]_i_1__1_n_1 ,\accumulator_reg[0]_i_1__1_n_2 ,\accumulator_reg[0]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__1_n_4 ,\accumulator_reg[0]_i_1__1_n_5 ,\accumulator_reg[0]_i_1__1_n_6 ,\accumulator_reg[0]_i_1__1_n_7 }),
        .S({\accumulator[0]_i_3__1_n_0 ,\accumulator[0]_i_4__1_n_0 ,\accumulator[0]_i_5__1_n_0 ,\accumulator_reg[3]_1 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__1_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__1_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__1_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__1_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__1 
       (.CI(\accumulator_reg[0]_i_1__1_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__1_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__1_n_1 ,\accumulator_reg[4]_i_1__1_n_2 ,\accumulator_reg[4]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__1_n_4 ,\accumulator_reg[4]_i_1__1_n_5 ,\accumulator_reg[4]_i_1__1_n_6 ,\accumulator_reg[4]_i_1__1_n_7 }),
        .S({\accumulator[4]_i_2__1_n_0 ,\accumulator[4]_i_3__1_n_0 ,\accumulator[4]_i_4__1_n_0 ,\accumulator[4]_i_5__1_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__1_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__1_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__1_n_4 ),
        .Q(D[7]));
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
        .D(Q[0]),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_18
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    DI,
    S,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 ,
    \accumulator_reg[3]_5 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  output [0:0]S;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]\accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input \accumulator_reg[3]_4 ;
  input [0:0]\accumulator_reg[3]_5 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__9_n_0 ;
  wire \accumulator[0]_i_4__9_n_0 ;
  wire \accumulator[0]_i_5__9_n_0 ;
  wire \accumulator[4]_i_2__9_n_0 ;
  wire \accumulator[4]_i_3__9_n_0 ;
  wire \accumulator[4]_i_4__9_n_0 ;
  wire \accumulator[4]_i_5__9_n_0 ;
  wire \accumulator_reg[0]_i_1__9_n_0 ;
  wire \accumulator_reg[0]_i_1__9_n_1 ;
  wire \accumulator_reg[0]_i_1__9_n_2 ;
  wire \accumulator_reg[0]_i_1__9_n_3 ;
  wire \accumulator_reg[0]_i_1__9_n_4 ;
  wire \accumulator_reg[0]_i_1__9_n_5 ;
  wire \accumulator_reg[0]_i_1__9_n_6 ;
  wire \accumulator_reg[0]_i_1__9_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire [0:0]\accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire \accumulator_reg[3]_4 ;
  wire [0:0]\accumulator_reg[3]_5 ;
  wire \accumulator_reg[4]_i_1__9_n_1 ;
  wire \accumulator_reg[4]_i_1__9_n_2 ;
  wire \accumulator_reg[4]_i_1__9_n_3 ;
  wire \accumulator_reg[4]_i_1__9_n_4 ;
  wire \accumulator_reg[4]_i_1__9_n_5 ;
  wire \accumulator_reg[4]_i_1__9_n_6 ;
  wire \accumulator_reg[4]_i_1__9_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__9_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__10 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_3 ),
        .I2(\accumulator_reg[3]_2 ),
        .O(DI));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__9 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__9 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__9 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__9_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__17 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_4 ),
        .I2(\accumulator_reg[3]_5 ),
        .I3(\accumulator_reg[3]_2 ),
        .O(S));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__9 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__9 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__9 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__9 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__9_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__9 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__9_n_0 ,\accumulator_reg[0]_i_1__9_n_1 ,\accumulator_reg[0]_i_1__9_n_2 ,\accumulator_reg[0]_i_1__9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__9_n_4 ,\accumulator_reg[0]_i_1__9_n_5 ,\accumulator_reg[0]_i_1__9_n_6 ,\accumulator_reg[0]_i_1__9_n_7 }),
        .S({\accumulator[0]_i_3__9_n_0 ,\accumulator[0]_i_4__9_n_0 ,\accumulator[0]_i_5__9_n_0 ,\accumulator_reg[3]_1 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__9_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__9_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__9_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__9_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__9 
       (.CI(\accumulator_reg[0]_i_1__9_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__9_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__9_n_1 ,\accumulator_reg[4]_i_1__9_n_2 ,\accumulator_reg[4]_i_1__9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__9_n_4 ,\accumulator_reg[4]_i_1__9_n_5 ,\accumulator_reg[4]_i_1__9_n_6 ,\accumulator_reg[4]_i_1__9_n_7 }),
        .S({\accumulator[4]_i_2__9_n_0 ,\accumulator[4]_i_3__9_n_0 ,\accumulator[4]_i_4__9_n_0 ,\accumulator[4]_i_5__9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__9_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__9_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__9_n_4 ),
        .Q(D[7]));
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
module accumulator_cells_19
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    DI,
    \y_reg[0]_1 ,
    \y_reg[0]_2 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[3]_0 ,
    S,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 ,
    \accumulator_reg[3]_5 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  output [0:0]\y_reg[0]_1 ;
  input \y_reg[0]_2 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]S;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input \accumulator_reg[3]_4 ;
  input [0:0]\accumulator_reg[3]_5 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__17_n_0 ;
  wire \accumulator[0]_i_4__17_n_0 ;
  wire \accumulator[0]_i_5__17_n_0 ;
  wire \accumulator[4]_i_2__17_n_0 ;
  wire \accumulator[4]_i_3__17_n_0 ;
  wire \accumulator[4]_i_4__17_n_0 ;
  wire \accumulator[4]_i_5__17_n_0 ;
  wire \accumulator_reg[0]_i_1__17_n_0 ;
  wire \accumulator_reg[0]_i_1__17_n_1 ;
  wire \accumulator_reg[0]_i_1__17_n_2 ;
  wire \accumulator_reg[0]_i_1__17_n_3 ;
  wire \accumulator_reg[0]_i_1__17_n_4 ;
  wire \accumulator_reg[0]_i_1__17_n_5 ;
  wire \accumulator_reg[0]_i_1__17_n_6 ;
  wire \accumulator_reg[0]_i_1__17_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire \accumulator_reg[3]_4 ;
  wire [0:0]\accumulator_reg[3]_5 ;
  wire \accumulator_reg[4]_i_1__17_n_1 ;
  wire \accumulator_reg[4]_i_1__17_n_2 ;
  wire \accumulator_reg[4]_i_1__17_n_3 ;
  wire \accumulator_reg[4]_i_1__17_n_4 ;
  wire \accumulator_reg[4]_i_1__17_n_5 ;
  wire \accumulator_reg[4]_i_1__17_n_6 ;
  wire \accumulator_reg[4]_i_1__17_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire \y_reg[0]_2 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__17_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__18 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_3 ),
        .O(DI));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__17 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__17_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__17 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__17_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__17 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__17_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__25 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_4 ),
        .I2(\accumulator_reg[3]_5 ),
        .I3(\accumulator_reg[3]_3 ),
        .O(\y_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__17 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__17_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__17 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__17_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__17 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__17_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__17 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__17_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__17_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__17 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__17_n_0 ,\accumulator_reg[0]_i_1__17_n_1 ,\accumulator_reg[0]_i_1__17_n_2 ,\accumulator_reg[0]_i_1__17_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__17_n_4 ,\accumulator_reg[0]_i_1__17_n_5 ,\accumulator_reg[0]_i_1__17_n_6 ,\accumulator_reg[0]_i_1__17_n_7 }),
        .S({\accumulator[0]_i_3__17_n_0 ,\accumulator[0]_i_4__17_n_0 ,\accumulator[0]_i_5__17_n_0 ,S}));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__17_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__17_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__17_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__17_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__17 
       (.CI(\accumulator_reg[0]_i_1__17_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__17_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__17_n_1 ,\accumulator_reg[4]_i_1__17_n_2 ,\accumulator_reg[4]_i_1__17_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__17_n_4 ,\accumulator_reg[4]_i_1__17_n_5 ,\accumulator_reg[4]_i_1__17_n_6 ,\accumulator_reg[4]_i_1__17_n_7 }),
        .S({\accumulator[4]_i_2__17_n_0 ,\accumulator[4]_i_3__17_n_0 ,\accumulator[4]_i_4__17_n_0 ,\accumulator[4]_i_5__17_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__17_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__17_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__17_n_4 ),
        .Q(D[7]));
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
        .D(\y_reg[0]_2 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_2
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    DI,
    \a_load_reg[2] ,
    S,
    y,
    clock_IBUF_BUFG,
    btn_IBUF,
    Q,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  output [0:0]\a_load_reg[2] ;
  output [0:0]S;
  input y;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [1:0]Q;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]\accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input [0:0]\accumulator_reg[3]_4 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [1:0]Q;
  wire [0:0]S;
  wire [0:0]\a_load_reg[2] ;
  wire \accumulator[0]_i_3__7_n_0 ;
  wire \accumulator[0]_i_4__7_n_0 ;
  wire \accumulator[0]_i_5__7_n_0 ;
  wire \accumulator[4]_i_2__7_n_0 ;
  wire \accumulator[4]_i_3__7_n_0 ;
  wire \accumulator[4]_i_4__7_n_0 ;
  wire \accumulator[4]_i_5__7_n_0 ;
  wire \accumulator_reg[0]_i_1__7_n_0 ;
  wire \accumulator_reg[0]_i_1__7_n_1 ;
  wire \accumulator_reg[0]_i_1__7_n_2 ;
  wire \accumulator_reg[0]_i_1__7_n_3 ;
  wire \accumulator_reg[0]_i_1__7_n_4 ;
  wire \accumulator_reg[0]_i_1__7_n_5 ;
  wire \accumulator_reg[0]_i_1__7_n_6 ;
  wire \accumulator_reg[0]_i_1__7_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire [0:0]\accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire [0:0]\accumulator_reg[3]_4 ;
  wire \accumulator_reg[4]_i_1__7_n_1 ;
  wire \accumulator_reg[4]_i_1__7_n_2 ;
  wire \accumulator_reg[4]_i_1__7_n_3 ;
  wire \accumulator_reg[4]_i_1__7_n_4 ;
  wire \accumulator_reg[4]_i_1__7_n_5 ;
  wire \accumulator_reg[4]_i_1__7_n_6 ;
  wire \accumulator_reg[4]_i_1__7_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire y;
  wire \y_reg[0]_0 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__7_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__15 
       (.I0(Q[1]),
        .I1(\y_reg[0]_0 ),
        .I2(\accumulator_reg[3]_2 ),
        .O(\a_load_reg[2] ));
  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__8 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_3 ),
        .I2(\accumulator_reg[3]_2 ),
        .O(DI));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__7 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__7 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__7 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__7_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__15 
       (.I0(\y_reg[0]_0 ),
        .I1(Q[1]),
        .I2(\accumulator_reg[3]_4 ),
        .I3(\accumulator_reg[3]_2 ),
        .O(S));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__7 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__7 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__7 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__7 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__7_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__7_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__7 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__7_n_0 ,\accumulator_reg[0]_i_1__7_n_1 ,\accumulator_reg[0]_i_1__7_n_2 ,\accumulator_reg[0]_i_1__7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__7_n_4 ,\accumulator_reg[0]_i_1__7_n_5 ,\accumulator_reg[0]_i_1__7_n_6 ,\accumulator_reg[0]_i_1__7_n_7 }),
        .S({\accumulator[0]_i_3__7_n_0 ,\accumulator[0]_i_4__7_n_0 ,\accumulator[0]_i_5__7_n_0 ,\accumulator_reg[3]_1 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__7_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__7_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__7_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__7_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__7 
       (.CI(\accumulator_reg[0]_i_1__7_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__7_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__7_n_1 ,\accumulator_reg[4]_i_1__7_n_2 ,\accumulator_reg[4]_i_1__7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__7_n_4 ,\accumulator_reg[4]_i_1__7_n_5 ,\accumulator_reg[4]_i_1__7_n_6 ,\accumulator_reg[4]_i_1__7_n_7 }),
        .S({\accumulator[4]_i_2__7_n_0 ,\accumulator[4]_i_3__7_n_0 ,\accumulator[4]_i_4__7_n_0 ,\accumulator[4]_i_5__7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__7_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__7_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__7_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(Q[0]),
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
module accumulator_cells_20
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    DI,
    S,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 ,
    \accumulator_reg[3]_5 ,
    \accumulator_reg[3]_6 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  output [0:0]S;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]\accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input \accumulator_reg[3]_4 ;
  input [0:0]\accumulator_reg[3]_5 ;
  input \accumulator_reg[3]_6 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__25_n_0 ;
  wire \accumulator[0]_i_4__25_n_0 ;
  wire \accumulator[0]_i_5__25_n_0 ;
  wire \accumulator[4]_i_2__25_n_0 ;
  wire \accumulator[4]_i_3__25_n_0 ;
  wire \accumulator[4]_i_4__25_n_0 ;
  wire \accumulator[4]_i_5__25_n_0 ;
  wire \accumulator_reg[0]_i_1__25_n_0 ;
  wire \accumulator_reg[0]_i_1__25_n_1 ;
  wire \accumulator_reg[0]_i_1__25_n_2 ;
  wire \accumulator_reg[0]_i_1__25_n_3 ;
  wire \accumulator_reg[0]_i_1__25_n_4 ;
  wire \accumulator_reg[0]_i_1__25_n_5 ;
  wire \accumulator_reg[0]_i_1__25_n_6 ;
  wire \accumulator_reg[0]_i_1__25_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire [0:0]\accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire \accumulator_reg[3]_4 ;
  wire [0:0]\accumulator_reg[3]_5 ;
  wire \accumulator_reg[3]_6 ;
  wire \accumulator_reg[4]_i_1__25_n_1 ;
  wire \accumulator_reg[4]_i_1__25_n_2 ;
  wire \accumulator_reg[4]_i_1__25_n_3 ;
  wire \accumulator_reg[4]_i_1__25_n_4 ;
  wire \accumulator_reg[4]_i_1__25_n_5 ;
  wire \accumulator_reg[4]_i_1__25_n_6 ;
  wire \accumulator_reg[4]_i_1__25_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__25_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__26 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_3 ),
        .I2(\accumulator_reg[3]_2 ),
        .O(DI));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__25 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__25_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__25 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__25_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__25 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__25_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__33 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_4 ),
        .I2(\accumulator_reg[3]_5 ),
        .I3(\accumulator_reg[3]_6 ),
        .O(S));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__25 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__25_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__25 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__25_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__25 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__25_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__25 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__25_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__25_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__25 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__25_n_0 ,\accumulator_reg[0]_i_1__25_n_1 ,\accumulator_reg[0]_i_1__25_n_2 ,\accumulator_reg[0]_i_1__25_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__25_n_4 ,\accumulator_reg[0]_i_1__25_n_5 ,\accumulator_reg[0]_i_1__25_n_6 ,\accumulator_reg[0]_i_1__25_n_7 }),
        .S({\accumulator[0]_i_3__25_n_0 ,\accumulator[0]_i_4__25_n_0 ,\accumulator[0]_i_5__25_n_0 ,\accumulator_reg[3]_1 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__25_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__25_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__25_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__25_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__25 
       (.CI(\accumulator_reg[0]_i_1__25_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__25_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__25_n_1 ,\accumulator_reg[4]_i_1__25_n_2 ,\accumulator_reg[4]_i_1__25_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__25_n_4 ,\accumulator_reg[4]_i_1__25_n_5 ,\accumulator_reg[4]_i_1__25_n_6 ,\accumulator_reg[4]_i_1__25_n_7 }),
        .S({\accumulator[4]_i_2__25_n_0 ,\accumulator[4]_i_3__25_n_0 ,\accumulator[4]_i_4__25_n_0 ,\accumulator[4]_i_5__25_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__25_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__25_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__25_n_4 ),
        .Q(D[7]));
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
    D,
    DI,
    \y_reg[0]_1 ,
    \y_reg[0]_2 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[3]_0 ,
    S,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  output [0:0]\y_reg[0]_1 ;
  input \y_reg[0]_2 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]S;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input [0:0]\accumulator_reg[3]_4 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__33_n_0 ;
  wire \accumulator[0]_i_4__33_n_0 ;
  wire \accumulator[0]_i_5__33_n_0 ;
  wire \accumulator[4]_i_2__33_n_0 ;
  wire \accumulator[4]_i_3__33_n_0 ;
  wire \accumulator[4]_i_4__33_n_0 ;
  wire \accumulator[4]_i_5__33_n_0 ;
  wire \accumulator_reg[0]_i_1__33_n_0 ;
  wire \accumulator_reg[0]_i_1__33_n_1 ;
  wire \accumulator_reg[0]_i_1__33_n_2 ;
  wire \accumulator_reg[0]_i_1__33_n_3 ;
  wire \accumulator_reg[0]_i_1__33_n_4 ;
  wire \accumulator_reg[0]_i_1__33_n_5 ;
  wire \accumulator_reg[0]_i_1__33_n_6 ;
  wire \accumulator_reg[0]_i_1__33_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire [0:0]\accumulator_reg[3]_4 ;
  wire \accumulator_reg[4]_i_1__33_n_1 ;
  wire \accumulator_reg[4]_i_1__33_n_2 ;
  wire \accumulator_reg[4]_i_1__33_n_3 ;
  wire \accumulator_reg[4]_i_1__33_n_4 ;
  wire \accumulator_reg[4]_i_1__33_n_5 ;
  wire \accumulator_reg[4]_i_1__33_n_6 ;
  wire \accumulator_reg[4]_i_1__33_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire \y_reg[0]_2 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__33_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__34 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_1 ),
        .O(DI));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__33 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__33_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__33 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__33_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__33 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__33_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__41 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_3 ),
        .I2(\accumulator_reg[3]_4 ),
        .I3(\accumulator_reg[3]_1 ),
        .O(\y_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__33 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__33_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__33 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__33_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__33 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__33_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__33 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__33_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__33_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__33 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__33_n_0 ,\accumulator_reg[0]_i_1__33_n_1 ,\accumulator_reg[0]_i_1__33_n_2 ,\accumulator_reg[0]_i_1__33_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__33_n_4 ,\accumulator_reg[0]_i_1__33_n_5 ,\accumulator_reg[0]_i_1__33_n_6 ,\accumulator_reg[0]_i_1__33_n_7 }),
        .S({\accumulator[0]_i_3__33_n_0 ,\accumulator[0]_i_4__33_n_0 ,\accumulator[0]_i_5__33_n_0 ,S}));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__33_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__33_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__33_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__33_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__33 
       (.CI(\accumulator_reg[0]_i_1__33_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__33_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__33_n_1 ,\accumulator_reg[4]_i_1__33_n_2 ,\accumulator_reg[4]_i_1__33_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__33_n_4 ,\accumulator_reg[4]_i_1__33_n_5 ,\accumulator_reg[4]_i_1__33_n_6 ,\accumulator_reg[4]_i_1__33_n_7 }),
        .S({\accumulator[4]_i_2__33_n_0 ,\accumulator[4]_i_3__33_n_0 ,\accumulator[4]_i_4__33_n_0 ,\accumulator[4]_i_5__33_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__33_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__33_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__33_n_4 ),
        .Q(D[7]));
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
        .D(\y_reg[0]_2 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_22
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    DI,
    S,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 ,
    \accumulator_reg[3]_5 ,
    ena_mac);
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  output [0:0]S;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]\accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input \accumulator_reg[3]_4 ;
  input [0:0]\accumulator_reg[3]_5 ;
  input ena_mac;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__41_n_0 ;
  wire \accumulator[0]_i_4__41_n_0 ;
  wire \accumulator[0]_i_5__41_n_0 ;
  wire \accumulator[4]_i_2__41_n_0 ;
  wire \accumulator[4]_i_3__41_n_0 ;
  wire \accumulator[4]_i_4__41_n_0 ;
  wire \accumulator[4]_i_5__41_n_0 ;
  wire \accumulator_reg[0]_i_1__41_n_0 ;
  wire \accumulator_reg[0]_i_1__41_n_1 ;
  wire \accumulator_reg[0]_i_1__41_n_2 ;
  wire \accumulator_reg[0]_i_1__41_n_3 ;
  wire \accumulator_reg[0]_i_1__41_n_4 ;
  wire \accumulator_reg[0]_i_1__41_n_5 ;
  wire \accumulator_reg[0]_i_1__41_n_6 ;
  wire \accumulator_reg[0]_i_1__41_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire [0:0]\accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire \accumulator_reg[3]_4 ;
  wire [0:0]\accumulator_reg[3]_5 ;
  wire \accumulator_reg[4]_i_1__41_n_1 ;
  wire \accumulator_reg[4]_i_1__41_n_2 ;
  wire \accumulator_reg[4]_i_1__41_n_3 ;
  wire \accumulator_reg[4]_i_1__41_n_4 ;
  wire \accumulator_reg[4]_i_1__41_n_5 ;
  wire \accumulator_reg[4]_i_1__41_n_6 ;
  wire \accumulator_reg[4]_i_1__41_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__41_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__42 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_3 ),
        .I2(\accumulator_reg[3]_2 ),
        .O(DI));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__41 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__41_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__41 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__41_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__41 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__41_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__49 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_4 ),
        .I2(\accumulator_reg[3]_5 ),
        .I3(ena_mac),
        .O(S));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__41 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__41_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__41 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__41_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__41 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__41_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__41 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__41_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__41_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__41 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__41_n_0 ,\accumulator_reg[0]_i_1__41_n_1 ,\accumulator_reg[0]_i_1__41_n_2 ,\accumulator_reg[0]_i_1__41_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__41_n_4 ,\accumulator_reg[0]_i_1__41_n_5 ,\accumulator_reg[0]_i_1__41_n_6 ,\accumulator_reg[0]_i_1__41_n_7 }),
        .S({\accumulator[0]_i_3__41_n_0 ,\accumulator[0]_i_4__41_n_0 ,\accumulator[0]_i_5__41_n_0 ,\accumulator_reg[3]_1 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__41_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__41_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__41_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__41_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__41 
       (.CI(\accumulator_reg[0]_i_1__41_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__41_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__41_n_1 ,\accumulator_reg[4]_i_1__41_n_2 ,\accumulator_reg[4]_i_1__41_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__41_n_4 ,\accumulator_reg[4]_i_1__41_n_5 ,\accumulator_reg[4]_i_1__41_n_6 ,\accumulator_reg[4]_i_1__41_n_7 }),
        .S({\accumulator[4]_i_2__41_n_0 ,\accumulator[4]_i_3__41_n_0 ,\accumulator[4]_i_4__41_n_0 ,\accumulator[4]_i_5__41_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__41_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__41_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__41_n_4 ),
        .Q(D[7]));
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
    D,
    DI,
    \y_reg[0]_1 ,
    \y_reg[0]_2 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[3]_0 ,
    S,
    ena_mac,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  output [0:0]\y_reg[0]_1 ;
  input \y_reg[0]_2 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]S;
  input ena_mac;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input [0:0]\accumulator_reg[3]_3 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__49_n_0 ;
  wire \accumulator[0]_i_4__49_n_0 ;
  wire \accumulator[0]_i_5__49_n_0 ;
  wire \accumulator[4]_i_2__49_n_0 ;
  wire \accumulator[4]_i_3__49_n_0 ;
  wire \accumulator[4]_i_4__49_n_0 ;
  wire \accumulator[4]_i_5__49_n_0 ;
  wire \accumulator_reg[0]_i_1__49_n_0 ;
  wire \accumulator_reg[0]_i_1__49_n_1 ;
  wire \accumulator_reg[0]_i_1__49_n_2 ;
  wire \accumulator_reg[0]_i_1__49_n_3 ;
  wire \accumulator_reg[0]_i_1__49_n_4 ;
  wire \accumulator_reg[0]_i_1__49_n_5 ;
  wire \accumulator_reg[0]_i_1__49_n_6 ;
  wire \accumulator_reg[0]_i_1__49_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire [0:0]\accumulator_reg[3]_3 ;
  wire \accumulator_reg[4]_i_1__49_n_1 ;
  wire \accumulator_reg[4]_i_1__49_n_2 ;
  wire \accumulator_reg[4]_i_1__49_n_3 ;
  wire \accumulator_reg[4]_i_1__49_n_4 ;
  wire \accumulator_reg[4]_i_1__49_n_5 ;
  wire \accumulator_reg[4]_i_1__49_n_6 ;
  wire \accumulator_reg[4]_i_1__49_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire \y_reg[0]_2 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__49_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__50 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_1 ),
        .I2(ena_mac),
        .O(DI));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__49 
       (.I0(ena_mac),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__49_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__49 
       (.I0(ena_mac),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__49_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__49 
       (.I0(ena_mac),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__49_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__57 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_3 ),
        .I3(ena_mac),
        .O(\y_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__49 
       (.I0(ena_mac),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__49_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__49 
       (.I0(ena_mac),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__49_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__49 
       (.I0(ena_mac),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__49_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__49 
       (.I0(ena_mac),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__49_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__49_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__49 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__49_n_0 ,\accumulator_reg[0]_i_1__49_n_1 ,\accumulator_reg[0]_i_1__49_n_2 ,\accumulator_reg[0]_i_1__49_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__49_n_4 ,\accumulator_reg[0]_i_1__49_n_5 ,\accumulator_reg[0]_i_1__49_n_6 ,\accumulator_reg[0]_i_1__49_n_7 }),
        .S({\accumulator[0]_i_3__49_n_0 ,\accumulator[0]_i_4__49_n_0 ,\accumulator[0]_i_5__49_n_0 ,S}));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__49_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__49_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__49_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__49_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__49 
       (.CI(\accumulator_reg[0]_i_1__49_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__49_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__49_n_1 ,\accumulator_reg[4]_i_1__49_n_2 ,\accumulator_reg[4]_i_1__49_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__49_n_4 ,\accumulator_reg[4]_i_1__49_n_5 ,\accumulator_reg[4]_i_1__49_n_6 ,\accumulator_reg[4]_i_1__49_n_7 }),
        .S({\accumulator[4]_i_2__49_n_0 ,\accumulator[4]_i_3__49_n_0 ,\accumulator[4]_i_4__49_n_0 ,\accumulator[4]_i_5__49_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__49_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__49_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__49_n_4 ),
        .Q(D[7]));
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
        .D(\y_reg[0]_2 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_24
   (\x_reg[0]_0 ,
    D,
    DI,
    \x_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    ena_mac,
    \accumulator_reg[3]_2 );
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  input \x_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]\accumulator_reg[3]_1 ;
  input ena_mac;
  input \accumulator_reg[3]_2 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire \accumulator[0]_i_3__57_n_0 ;
  wire \accumulator[0]_i_4__57_n_0 ;
  wire \accumulator[0]_i_5__57_n_0 ;
  wire \accumulator[4]_i_2__57_n_0 ;
  wire \accumulator[4]_i_3__57_n_0 ;
  wire \accumulator[4]_i_4__57_n_0 ;
  wire \accumulator[4]_i_5__57_n_0 ;
  wire \accumulator_reg[0]_i_1__57_n_0 ;
  wire \accumulator_reg[0]_i_1__57_n_1 ;
  wire \accumulator_reg[0]_i_1__57_n_2 ;
  wire \accumulator_reg[0]_i_1__57_n_3 ;
  wire \accumulator_reg[0]_i_1__57_n_4 ;
  wire \accumulator_reg[0]_i_1__57_n_5 ;
  wire \accumulator_reg[0]_i_1__57_n_6 ;
  wire \accumulator_reg[0]_i_1__57_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire [0:0]\accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[4]_i_1__57_n_1 ;
  wire \accumulator_reg[4]_i_1__57_n_2 ;
  wire \accumulator_reg[4]_i_1__57_n_3 ;
  wire \accumulator_reg[4]_i_1__57_n_4 ;
  wire \accumulator_reg[4]_i_1__57_n_5 ;
  wire \accumulator_reg[4]_i_1__57_n_6 ;
  wire \accumulator_reg[4]_i_1__57_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__57_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__58 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(ena_mac),
        .O(DI));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__57 
       (.I0(ena_mac),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__57_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__57 
       (.I0(ena_mac),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__57_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__57 
       (.I0(ena_mac),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__57_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__57 
       (.I0(ena_mac),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__57_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__57 
       (.I0(ena_mac),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__57_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__57 
       (.I0(ena_mac),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__57_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__57 
       (.I0(ena_mac),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__57_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__57_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__57 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__57_n_0 ,\accumulator_reg[0]_i_1__57_n_1 ,\accumulator_reg[0]_i_1__57_n_2 ,\accumulator_reg[0]_i_1__57_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__57_n_4 ,\accumulator_reg[0]_i_1__57_n_5 ,\accumulator_reg[0]_i_1__57_n_6 ,\accumulator_reg[0]_i_1__57_n_7 }),
        .S({\accumulator[0]_i_3__57_n_0 ,\accumulator[0]_i_4__57_n_0 ,\accumulator[0]_i_5__57_n_0 ,\accumulator_reg[3]_1 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__57_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__57_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__57_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__57_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__57 
       (.CI(\accumulator_reg[0]_i_1__57_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__57_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__57_n_1 ,\accumulator_reg[4]_i_1__57_n_2 ,\accumulator_reg[4]_i_1__57_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__57_n_4 ,\accumulator_reg[4]_i_1__57_n_5 ,\accumulator_reg[4]_i_1__57_n_6 ,\accumulator_reg[4]_i_1__57_n_7 }),
        .S({\accumulator[4]_i_2__57_n_0 ,\accumulator[4]_i_3__57_n_0 ,\accumulator[4]_i_4__57_n_0 ,\accumulator[4]_i_5__57_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__57_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__57_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__57_n_4 ),
        .Q(D[7]));
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
module accumulator_cells_25
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    \x_reg[0]_1 ,
    \b_load_reg[4] ,
    \y_reg[0]_1 ,
    Q,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_2 ,
    DI,
    S,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]\x_reg[0]_1 ;
  output [0:0]\b_load_reg[4] ;
  output [0:0]\y_reg[0]_1 ;
  input [1:0]Q;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_2 ;
  input [0:0]DI;
  input [0:0]S;
  input \accumulator_reg[3]_0 ;
  input \accumulator_reg[3]_1 ;
  input [0:0]\accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input [0:0]\accumulator_reg[3]_4 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [1:0]Q;
  wire [0:0]S;
  wire \accumulator[0]_i_3__2_n_0 ;
  wire \accumulator[0]_i_4__2_n_0 ;
  wire \accumulator[0]_i_5__2_n_0 ;
  wire \accumulator[4]_i_2__2_n_0 ;
  wire \accumulator[4]_i_3__2_n_0 ;
  wire \accumulator[4]_i_4__2_n_0 ;
  wire \accumulator[4]_i_5__2_n_0 ;
  wire \accumulator_reg[0]_i_1__2_n_0 ;
  wire \accumulator_reg[0]_i_1__2_n_1 ;
  wire \accumulator_reg[0]_i_1__2_n_2 ;
  wire \accumulator_reg[0]_i_1__2_n_3 ;
  wire \accumulator_reg[0]_i_1__2_n_4 ;
  wire \accumulator_reg[0]_i_1__2_n_5 ;
  wire \accumulator_reg[0]_i_1__2_n_6 ;
  wire \accumulator_reg[0]_i_1__2_n_7 ;
  wire \accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire [0:0]\accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire [0:0]\accumulator_reg[3]_4 ;
  wire \accumulator_reg[4]_i_1__2_n_1 ;
  wire \accumulator_reg[4]_i_1__2_n_2 ;
  wire \accumulator_reg[4]_i_1__2_n_3 ;
  wire \accumulator_reg[4]_i_1__2_n_4 ;
  wire \accumulator_reg[4]_i_1__2_n_5 ;
  wire \accumulator_reg[4]_i_1__2_n_6 ;
  wire \accumulator_reg[4]_i_1__2_n_7 ;
  wire [0:0]\b_load_reg[4] ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire [0:0]\x_reg[0]_1 ;
  wire \x_reg[0]_2 ;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__2_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__3 
       (.I0(\x_reg[0]_0 ),
        .I1(Q[1]),
        .I2(\accumulator_reg[3]_1 ),
        .O(\x_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__2 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__2 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__2 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__2_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__10 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_3 ),
        .I2(\accumulator_reg[3]_4 ),
        .I3(\accumulator_reg[3]_1 ),
        .O(\y_reg[0]_1 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__3 
       (.I0(Q[1]),
        .I1(\x_reg[0]_0 ),
        .I2(\accumulator_reg[3]_2 ),
        .I3(\accumulator_reg[3]_1 ),
        .O(\b_load_reg[4] ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__2 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__2 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__2 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__2 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__2_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__2 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__2_n_0 ,\accumulator_reg[0]_i_1__2_n_1 ,\accumulator_reg[0]_i_1__2_n_2 ,\accumulator_reg[0]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__2_n_4 ,\accumulator_reg[0]_i_1__2_n_5 ,\accumulator_reg[0]_i_1__2_n_6 ,\accumulator_reg[0]_i_1__2_n_7 }),
        .S({\accumulator[0]_i_3__2_n_0 ,\accumulator[0]_i_4__2_n_0 ,\accumulator[0]_i_5__2_n_0 ,S}));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__2_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__2_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__2_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__2_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__2 
       (.CI(\accumulator_reg[0]_i_1__2_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__2_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__2_n_1 ,\accumulator_reg[4]_i_1__2_n_2 ,\accumulator_reg[4]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__2_n_4 ,\accumulator_reg[4]_i_1__2_n_5 ,\accumulator_reg[4]_i_1__2_n_6 ,\accumulator_reg[4]_i_1__2_n_7 }),
        .S({\accumulator[4]_i_2__2_n_0 ,\accumulator[4]_i_3__2_n_0 ,\accumulator[4]_i_4__2_n_0 ,\accumulator[4]_i_5__2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__2_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__2_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__2_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_2 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(Q[0]),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_26
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    \x_reg[0]_1 ,
    S,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_2 ,
    DI,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 ,
    \accumulator_reg[3]_5 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]\x_reg[0]_1 ;
  output [0:0]S;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_2 ;
  input [0:0]DI;
  input [0:0]\accumulator_reg[3]_0 ;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input [0:0]\accumulator_reg[3]_4 ;
  input \accumulator_reg[3]_5 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__10_n_0 ;
  wire \accumulator[0]_i_4__10_n_0 ;
  wire \accumulator[0]_i_5__10_n_0 ;
  wire \accumulator[4]_i_2__10_n_0 ;
  wire \accumulator[4]_i_3__10_n_0 ;
  wire \accumulator[4]_i_4__10_n_0 ;
  wire \accumulator[4]_i_5__10_n_0 ;
  wire \accumulator_reg[0]_i_1__10_n_0 ;
  wire \accumulator_reg[0]_i_1__10_n_1 ;
  wire \accumulator_reg[0]_i_1__10_n_2 ;
  wire \accumulator_reg[0]_i_1__10_n_3 ;
  wire \accumulator_reg[0]_i_1__10_n_4 ;
  wire \accumulator_reg[0]_i_1__10_n_5 ;
  wire \accumulator_reg[0]_i_1__10_n_6 ;
  wire \accumulator_reg[0]_i_1__10_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire [0:0]\accumulator_reg[3]_4 ;
  wire \accumulator_reg[3]_5 ;
  wire \accumulator_reg[4]_i_1__10_n_1 ;
  wire \accumulator_reg[4]_i_1__10_n_2 ;
  wire \accumulator_reg[4]_i_1__10_n_3 ;
  wire \accumulator_reg[4]_i_1__10_n_4 ;
  wire \accumulator_reg[4]_i_1__10_n_5 ;
  wire \accumulator_reg[4]_i_1__10_n_6 ;
  wire \accumulator_reg[4]_i_1__10_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire [0:0]\x_reg[0]_1 ;
  wire \x_reg[0]_2 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__10_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__11 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_1 ),
        .O(\x_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__10 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__10 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__10 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__10_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__18 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_3 ),
        .I2(\accumulator_reg[3]_4 ),
        .I3(\accumulator_reg[3]_5 ),
        .O(S));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__10 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__10 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__10 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__10 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__10_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__10_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__10 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__10_n_0 ,\accumulator_reg[0]_i_1__10_n_1 ,\accumulator_reg[0]_i_1__10_n_2 ,\accumulator_reg[0]_i_1__10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__10_n_4 ,\accumulator_reg[0]_i_1__10_n_5 ,\accumulator_reg[0]_i_1__10_n_6 ,\accumulator_reg[0]_i_1__10_n_7 }),
        .S({\accumulator[0]_i_3__10_n_0 ,\accumulator[0]_i_4__10_n_0 ,\accumulator[0]_i_5__10_n_0 ,\accumulator_reg[3]_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__10_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__10_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__10_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__10_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__10 
       (.CI(\accumulator_reg[0]_i_1__10_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__10_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__10_n_1 ,\accumulator_reg[4]_i_1__10_n_2 ,\accumulator_reg[4]_i_1__10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__10_n_4 ,\accumulator_reg[4]_i_1__10_n_5 ,\accumulator_reg[4]_i_1__10_n_6 ,\accumulator_reg[4]_i_1__10_n_7 }),
        .S({\accumulator[4]_i_2__10_n_0 ,\accumulator[4]_i_3__10_n_0 ,\accumulator[4]_i_4__10_n_0 ,\accumulator[4]_i_5__10_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__10_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__10_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__10_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_2 ),
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
module accumulator_cells_27
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    \x_reg[0]_1 ,
    \y_reg[0]_1 ,
    \y_reg[0]_2 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_2 ,
    DI,
    S,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]\x_reg[0]_1 ;
  output [0:0]\y_reg[0]_1 ;
  input \y_reg[0]_2 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_2 ;
  input [0:0]DI;
  input [0:0]S;
  input \accumulator_reg[3]_0 ;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input [0:0]\accumulator_reg[3]_3 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__18_n_0 ;
  wire \accumulator[0]_i_4__18_n_0 ;
  wire \accumulator[0]_i_5__18_n_0 ;
  wire \accumulator[4]_i_2__18_n_0 ;
  wire \accumulator[4]_i_3__18_n_0 ;
  wire \accumulator[4]_i_4__18_n_0 ;
  wire \accumulator[4]_i_5__18_n_0 ;
  wire \accumulator_reg[0]_i_1__18_n_0 ;
  wire \accumulator_reg[0]_i_1__18_n_1 ;
  wire \accumulator_reg[0]_i_1__18_n_2 ;
  wire \accumulator_reg[0]_i_1__18_n_3 ;
  wire \accumulator_reg[0]_i_1__18_n_4 ;
  wire \accumulator_reg[0]_i_1__18_n_5 ;
  wire \accumulator_reg[0]_i_1__18_n_6 ;
  wire \accumulator_reg[0]_i_1__18_n_7 ;
  wire \accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire [0:0]\accumulator_reg[3]_3 ;
  wire \accumulator_reg[4]_i_1__18_n_1 ;
  wire \accumulator_reg[4]_i_1__18_n_2 ;
  wire \accumulator_reg[4]_i_1__18_n_3 ;
  wire \accumulator_reg[4]_i_1__18_n_4 ;
  wire \accumulator_reg[4]_i_1__18_n_5 ;
  wire \accumulator_reg[4]_i_1__18_n_6 ;
  wire \accumulator_reg[4]_i_1__18_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire [0:0]\x_reg[0]_1 ;
  wire \x_reg[0]_2 ;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire \y_reg[0]_2 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__18_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__19 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_1 ),
        .I2(\accumulator_reg[3]_0 ),
        .O(\x_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__18 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__18_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__18 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__18_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__18 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__18_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__26 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_3 ),
        .I3(\accumulator_reg[3]_0 ),
        .O(\y_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__18 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__18_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__18 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__18_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__18 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__18_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__18 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__18_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__18_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__18 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__18_n_0 ,\accumulator_reg[0]_i_1__18_n_1 ,\accumulator_reg[0]_i_1__18_n_2 ,\accumulator_reg[0]_i_1__18_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__18_n_4 ,\accumulator_reg[0]_i_1__18_n_5 ,\accumulator_reg[0]_i_1__18_n_6 ,\accumulator_reg[0]_i_1__18_n_7 }),
        .S({\accumulator[0]_i_3__18_n_0 ,\accumulator[0]_i_4__18_n_0 ,\accumulator[0]_i_5__18_n_0 ,S}));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__18_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__18_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__18_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__18_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__18 
       (.CI(\accumulator_reg[0]_i_1__18_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__18_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__18_n_1 ,\accumulator_reg[4]_i_1__18_n_2 ,\accumulator_reg[4]_i_1__18_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__18_n_4 ,\accumulator_reg[4]_i_1__18_n_5 ,\accumulator_reg[4]_i_1__18_n_6 ,\accumulator_reg[4]_i_1__18_n_7 }),
        .S({\accumulator[4]_i_2__18_n_0 ,\accumulator[4]_i_3__18_n_0 ,\accumulator[4]_i_4__18_n_0 ,\accumulator[4]_i_5__18_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__18_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__18_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__18_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_2 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_2 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_28
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    \x_reg[0]_1 ,
    S,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_2 ,
    DI,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 ,
    \accumulator_reg[3]_5 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]\x_reg[0]_1 ;
  output [0:0]S;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_2 ;
  input [0:0]DI;
  input [0:0]\accumulator_reg[3]_0 ;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input [0:0]\accumulator_reg[3]_4 ;
  input \accumulator_reg[3]_5 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__26_n_0 ;
  wire \accumulator[0]_i_4__26_n_0 ;
  wire \accumulator[0]_i_5__26_n_0 ;
  wire \accumulator[4]_i_2__26_n_0 ;
  wire \accumulator[4]_i_3__26_n_0 ;
  wire \accumulator[4]_i_4__26_n_0 ;
  wire \accumulator[4]_i_5__26_n_0 ;
  wire \accumulator_reg[0]_i_1__26_n_0 ;
  wire \accumulator_reg[0]_i_1__26_n_1 ;
  wire \accumulator_reg[0]_i_1__26_n_2 ;
  wire \accumulator_reg[0]_i_1__26_n_3 ;
  wire \accumulator_reg[0]_i_1__26_n_4 ;
  wire \accumulator_reg[0]_i_1__26_n_5 ;
  wire \accumulator_reg[0]_i_1__26_n_6 ;
  wire \accumulator_reg[0]_i_1__26_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire [0:0]\accumulator_reg[3]_4 ;
  wire \accumulator_reg[3]_5 ;
  wire \accumulator_reg[4]_i_1__26_n_1 ;
  wire \accumulator_reg[4]_i_1__26_n_2 ;
  wire \accumulator_reg[4]_i_1__26_n_3 ;
  wire \accumulator_reg[4]_i_1__26_n_4 ;
  wire \accumulator_reg[4]_i_1__26_n_5 ;
  wire \accumulator_reg[4]_i_1__26_n_6 ;
  wire \accumulator_reg[4]_i_1__26_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire [0:0]\x_reg[0]_1 ;
  wire \x_reg[0]_2 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__26_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__27 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_1 ),
        .O(\x_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__26 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__26_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__26 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__26_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__26 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__26_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__34 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_3 ),
        .I2(\accumulator_reg[3]_4 ),
        .I3(\accumulator_reg[3]_5 ),
        .O(S));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__26 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__26_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__26 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__26_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__26 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__26_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__26 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__26_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__26_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__26 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__26_n_0 ,\accumulator_reg[0]_i_1__26_n_1 ,\accumulator_reg[0]_i_1__26_n_2 ,\accumulator_reg[0]_i_1__26_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__26_n_4 ,\accumulator_reg[0]_i_1__26_n_5 ,\accumulator_reg[0]_i_1__26_n_6 ,\accumulator_reg[0]_i_1__26_n_7 }),
        .S({\accumulator[0]_i_3__26_n_0 ,\accumulator[0]_i_4__26_n_0 ,\accumulator[0]_i_5__26_n_0 ,\accumulator_reg[3]_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__26_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__26_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__26_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__26_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__26 
       (.CI(\accumulator_reg[0]_i_1__26_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__26_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__26_n_1 ,\accumulator_reg[4]_i_1__26_n_2 ,\accumulator_reg[4]_i_1__26_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__26_n_4 ,\accumulator_reg[4]_i_1__26_n_5 ,\accumulator_reg[4]_i_1__26_n_6 ,\accumulator_reg[4]_i_1__26_n_7 }),
        .S({\accumulator[4]_i_2__26_n_0 ,\accumulator[4]_i_3__26_n_0 ,\accumulator[4]_i_4__26_n_0 ,\accumulator[4]_i_5__26_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__26_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__26_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__26_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_2 ),
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
    D,
    \x_reg[0]_1 ,
    \y_reg[0]_1 ,
    \y_reg[0]_2 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_2 ,
    DI,
    S,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]\x_reg[0]_1 ;
  output [0:0]\y_reg[0]_1 ;
  input \y_reg[0]_2 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_2 ;
  input [0:0]DI;
  input [0:0]S;
  input \accumulator_reg[3]_0 ;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input [0:0]\accumulator_reg[3]_3 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__34_n_0 ;
  wire \accumulator[0]_i_4__34_n_0 ;
  wire \accumulator[0]_i_5__34_n_0 ;
  wire \accumulator[4]_i_2__34_n_0 ;
  wire \accumulator[4]_i_3__34_n_0 ;
  wire \accumulator[4]_i_4__34_n_0 ;
  wire \accumulator[4]_i_5__34_n_0 ;
  wire \accumulator_reg[0]_i_1__34_n_0 ;
  wire \accumulator_reg[0]_i_1__34_n_1 ;
  wire \accumulator_reg[0]_i_1__34_n_2 ;
  wire \accumulator_reg[0]_i_1__34_n_3 ;
  wire \accumulator_reg[0]_i_1__34_n_4 ;
  wire \accumulator_reg[0]_i_1__34_n_5 ;
  wire \accumulator_reg[0]_i_1__34_n_6 ;
  wire \accumulator_reg[0]_i_1__34_n_7 ;
  wire \accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire [0:0]\accumulator_reg[3]_3 ;
  wire \accumulator_reg[4]_i_1__34_n_1 ;
  wire \accumulator_reg[4]_i_1__34_n_2 ;
  wire \accumulator_reg[4]_i_1__34_n_3 ;
  wire \accumulator_reg[4]_i_1__34_n_4 ;
  wire \accumulator_reg[4]_i_1__34_n_5 ;
  wire \accumulator_reg[4]_i_1__34_n_6 ;
  wire \accumulator_reg[4]_i_1__34_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire [0:0]\x_reg[0]_1 ;
  wire \x_reg[0]_2 ;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire \y_reg[0]_2 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__34_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__35 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_1 ),
        .I2(\accumulator_reg[3]_0 ),
        .O(\x_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__34 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__34_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__34 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__34_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__34 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__34_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__42 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_3 ),
        .I3(\accumulator_reg[3]_0 ),
        .O(\y_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__34 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__34_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__34 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__34_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__34 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__34_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__34 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__34_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__34_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__34 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__34_n_0 ,\accumulator_reg[0]_i_1__34_n_1 ,\accumulator_reg[0]_i_1__34_n_2 ,\accumulator_reg[0]_i_1__34_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__34_n_4 ,\accumulator_reg[0]_i_1__34_n_5 ,\accumulator_reg[0]_i_1__34_n_6 ,\accumulator_reg[0]_i_1__34_n_7 }),
        .S({\accumulator[0]_i_3__34_n_0 ,\accumulator[0]_i_4__34_n_0 ,\accumulator[0]_i_5__34_n_0 ,S}));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__34_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__34_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__34_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__34_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__34 
       (.CI(\accumulator_reg[0]_i_1__34_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__34_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__34_n_1 ,\accumulator_reg[4]_i_1__34_n_2 ,\accumulator_reg[4]_i_1__34_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__34_n_4 ,\accumulator_reg[4]_i_1__34_n_5 ,\accumulator_reg[4]_i_1__34_n_6 ,\accumulator_reg[4]_i_1__34_n_7 }),
        .S({\accumulator[4]_i_2__34_n_0 ,\accumulator[4]_i_3__34_n_0 ,\accumulator[4]_i_4__34_n_0 ,\accumulator[4]_i_5__34_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__34_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__34_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__34_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_2 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_2 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_3
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    DI,
    \a_load_reg[3] ,
    \y_reg[0]_1 ,
    \y_reg[0]_2 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    Q,
    \accumulator_reg[3]_0 ,
    S,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  output [0:0]\a_load_reg[3] ;
  output [0:0]\y_reg[0]_1 ;
  input \y_reg[0]_2 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [1:0]Q;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]S;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input [0:0]\accumulator_reg[3]_4 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [1:0]Q;
  wire [0:0]S;
  wire [0:0]\a_load_reg[3] ;
  wire \accumulator[0]_i_3__15_n_0 ;
  wire \accumulator[0]_i_4__15_n_0 ;
  wire \accumulator[0]_i_5__15_n_0 ;
  wire \accumulator[4]_i_2__15_n_0 ;
  wire \accumulator[4]_i_3__15_n_0 ;
  wire \accumulator[4]_i_4__15_n_0 ;
  wire \accumulator[4]_i_5__15_n_0 ;
  wire \accumulator_reg[0]_i_1__15_n_0 ;
  wire \accumulator_reg[0]_i_1__15_n_1 ;
  wire \accumulator_reg[0]_i_1__15_n_2 ;
  wire \accumulator_reg[0]_i_1__15_n_3 ;
  wire \accumulator_reg[0]_i_1__15_n_4 ;
  wire \accumulator_reg[0]_i_1__15_n_5 ;
  wire \accumulator_reg[0]_i_1__15_n_6 ;
  wire \accumulator_reg[0]_i_1__15_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire [0:0]\accumulator_reg[3]_4 ;
  wire \accumulator_reg[4]_i_1__15_n_1 ;
  wire \accumulator_reg[4]_i_1__15_n_2 ;
  wire \accumulator_reg[4]_i_1__15_n_3 ;
  wire \accumulator_reg[4]_i_1__15_n_4 ;
  wire \accumulator_reg[4]_i_1__15_n_5 ;
  wire \accumulator_reg[4]_i_1__15_n_6 ;
  wire \accumulator_reg[4]_i_1__15_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire \y_reg[0]_2 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__15_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__16 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_1 ),
        .O(DI));
  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__23 
       (.I0(Q[1]),
        .I1(\y_reg[0]_0 ),
        .I2(\accumulator_reg[3]_3 ),
        .O(\a_load_reg[3] ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__15 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__15_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__15 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__15_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__15 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__15_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__23 
       (.I0(\y_reg[0]_0 ),
        .I1(Q[1]),
        .I2(\accumulator_reg[3]_4 ),
        .I3(\accumulator_reg[3]_3 ),
        .O(\y_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__15 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__15_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__15 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__15_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__15 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__15_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__15 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__15_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__15_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__15 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__15_n_0 ,\accumulator_reg[0]_i_1__15_n_1 ,\accumulator_reg[0]_i_1__15_n_2 ,\accumulator_reg[0]_i_1__15_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__15_n_4 ,\accumulator_reg[0]_i_1__15_n_5 ,\accumulator_reg[0]_i_1__15_n_6 ,\accumulator_reg[0]_i_1__15_n_7 }),
        .S({\accumulator[0]_i_3__15_n_0 ,\accumulator[0]_i_4__15_n_0 ,\accumulator[0]_i_5__15_n_0 ,S}));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__15_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__15_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__15_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__15_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__15 
       (.CI(\accumulator_reg[0]_i_1__15_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__15_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__15_n_1 ,\accumulator_reg[4]_i_1__15_n_2 ,\accumulator_reg[4]_i_1__15_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__15_n_4 ,\accumulator_reg[4]_i_1__15_n_5 ,\accumulator_reg[4]_i_1__15_n_6 ,\accumulator_reg[4]_i_1__15_n_7 }),
        .S({\accumulator[4]_i_2__15_n_0 ,\accumulator[4]_i_3__15_n_0 ,\accumulator[4]_i_4__15_n_0 ,\accumulator[4]_i_5__15_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__15_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__15_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__15_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(Q[0]),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_2 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_30
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    \x_reg[0]_1 ,
    S,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_2 ,
    DI,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 ,
    ena_mac);
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]\x_reg[0]_1 ;
  output [0:0]S;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_2 ;
  input [0:0]DI;
  input [0:0]\accumulator_reg[3]_0 ;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input [0:0]\accumulator_reg[3]_4 ;
  input ena_mac;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__42_n_0 ;
  wire \accumulator[0]_i_4__42_n_0 ;
  wire \accumulator[0]_i_5__42_n_0 ;
  wire \accumulator[4]_i_2__42_n_0 ;
  wire \accumulator[4]_i_3__42_n_0 ;
  wire \accumulator[4]_i_4__42_n_0 ;
  wire \accumulator[4]_i_5__42_n_0 ;
  wire \accumulator_reg[0]_i_1__42_n_0 ;
  wire \accumulator_reg[0]_i_1__42_n_1 ;
  wire \accumulator_reg[0]_i_1__42_n_2 ;
  wire \accumulator_reg[0]_i_1__42_n_3 ;
  wire \accumulator_reg[0]_i_1__42_n_4 ;
  wire \accumulator_reg[0]_i_1__42_n_5 ;
  wire \accumulator_reg[0]_i_1__42_n_6 ;
  wire \accumulator_reg[0]_i_1__42_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire [0:0]\accumulator_reg[3]_4 ;
  wire \accumulator_reg[4]_i_1__42_n_1 ;
  wire \accumulator_reg[4]_i_1__42_n_2 ;
  wire \accumulator_reg[4]_i_1__42_n_3 ;
  wire \accumulator_reg[4]_i_1__42_n_4 ;
  wire \accumulator_reg[4]_i_1__42_n_5 ;
  wire \accumulator_reg[4]_i_1__42_n_6 ;
  wire \accumulator_reg[4]_i_1__42_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire \x_reg[0]_0 ;
  wire [0:0]\x_reg[0]_1 ;
  wire \x_reg[0]_2 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__42_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__43 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_1 ),
        .O(\x_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__42 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__42_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__42 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__42_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__42 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__42_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__50 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_3 ),
        .I2(\accumulator_reg[3]_4 ),
        .I3(ena_mac),
        .O(S));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__42 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__42_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__42 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__42_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__42 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__42_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__42 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__42_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__42_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__42 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__42_n_0 ,\accumulator_reg[0]_i_1__42_n_1 ,\accumulator_reg[0]_i_1__42_n_2 ,\accumulator_reg[0]_i_1__42_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__42_n_4 ,\accumulator_reg[0]_i_1__42_n_5 ,\accumulator_reg[0]_i_1__42_n_6 ,\accumulator_reg[0]_i_1__42_n_7 }),
        .S({\accumulator[0]_i_3__42_n_0 ,\accumulator[0]_i_4__42_n_0 ,\accumulator[0]_i_5__42_n_0 ,\accumulator_reg[3]_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__42_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__42_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__42_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__42_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__42 
       (.CI(\accumulator_reg[0]_i_1__42_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__42_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__42_n_1 ,\accumulator_reg[4]_i_1__42_n_2 ,\accumulator_reg[4]_i_1__42_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__42_n_4 ,\accumulator_reg[4]_i_1__42_n_5 ,\accumulator_reg[4]_i_1__42_n_6 ,\accumulator_reg[4]_i_1__42_n_7 }),
        .S({\accumulator[4]_i_2__42_n_0 ,\accumulator[4]_i_3__42_n_0 ,\accumulator[4]_i_4__42_n_0 ,\accumulator[4]_i_5__42_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__42_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__42_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__42_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_2 ),
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
    D,
    \x_reg[0]_1 ,
    \y_reg[0]_1 ,
    \y_reg[0]_2 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_2 ,
    DI,
    S,
    ena_mac,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]\x_reg[0]_1 ;
  output [0:0]\y_reg[0]_1 ;
  input \y_reg[0]_2 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_2 ;
  input [0:0]DI;
  input [0:0]S;
  input ena_mac;
  input \accumulator_reg[3]_0 ;
  input \accumulator_reg[3]_1 ;
  input [0:0]\accumulator_reg[3]_2 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__50_n_0 ;
  wire \accumulator[0]_i_4__50_n_0 ;
  wire \accumulator[0]_i_5__50_n_0 ;
  wire \accumulator[4]_i_2__50_n_0 ;
  wire \accumulator[4]_i_3__50_n_0 ;
  wire \accumulator[4]_i_4__50_n_0 ;
  wire \accumulator[4]_i_5__50_n_0 ;
  wire \accumulator_reg[0]_i_1__50_n_0 ;
  wire \accumulator_reg[0]_i_1__50_n_1 ;
  wire \accumulator_reg[0]_i_1__50_n_2 ;
  wire \accumulator_reg[0]_i_1__50_n_3 ;
  wire \accumulator_reg[0]_i_1__50_n_4 ;
  wire \accumulator_reg[0]_i_1__50_n_5 ;
  wire \accumulator_reg[0]_i_1__50_n_6 ;
  wire \accumulator_reg[0]_i_1__50_n_7 ;
  wire \accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire [0:0]\accumulator_reg[3]_2 ;
  wire \accumulator_reg[4]_i_1__50_n_1 ;
  wire \accumulator_reg[4]_i_1__50_n_2 ;
  wire \accumulator_reg[4]_i_1__50_n_3 ;
  wire \accumulator_reg[4]_i_1__50_n_4 ;
  wire \accumulator_reg[4]_i_1__50_n_5 ;
  wire \accumulator_reg[4]_i_1__50_n_6 ;
  wire \accumulator_reg[4]_i_1__50_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire \x_reg[0]_0 ;
  wire [0:0]\x_reg[0]_1 ;
  wire \x_reg[0]_2 ;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire \y_reg[0]_2 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__50_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__51 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_0 ),
        .I2(ena_mac),
        .O(\x_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__50 
       (.I0(ena_mac),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__50_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__50 
       (.I0(ena_mac),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__50_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__50 
       (.I0(ena_mac),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__50_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__58 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_1 ),
        .I2(\accumulator_reg[3]_2 ),
        .I3(ena_mac),
        .O(\y_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__50 
       (.I0(ena_mac),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__50_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__50 
       (.I0(ena_mac),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__50_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__50 
       (.I0(ena_mac),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__50_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__50 
       (.I0(ena_mac),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__50_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__50_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__50 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__50_n_0 ,\accumulator_reg[0]_i_1__50_n_1 ,\accumulator_reg[0]_i_1__50_n_2 ,\accumulator_reg[0]_i_1__50_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__50_n_4 ,\accumulator_reg[0]_i_1__50_n_5 ,\accumulator_reg[0]_i_1__50_n_6 ,\accumulator_reg[0]_i_1__50_n_7 }),
        .S({\accumulator[0]_i_3__50_n_0 ,\accumulator[0]_i_4__50_n_0 ,\accumulator[0]_i_5__50_n_0 ,S}));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__50_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__50_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__50_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__50_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__50 
       (.CI(\accumulator_reg[0]_i_1__50_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__50_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__50_n_1 ,\accumulator_reg[4]_i_1__50_n_2 ,\accumulator_reg[4]_i_1__50_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__50_n_4 ,\accumulator_reg[4]_i_1__50_n_5 ,\accumulator_reg[4]_i_1__50_n_6 ,\accumulator_reg[4]_i_1__50_n_7 }),
        .S({\accumulator[4]_i_2__50_n_0 ,\accumulator[4]_i_3__50_n_0 ,\accumulator[4]_i_4__50_n_0 ,\accumulator[4]_i_5__50_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__50_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__50_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__50_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_2 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_2 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_32
   (\x_reg[0]_0 ,
    D,
    \x_reg[0]_1 ,
    \x_reg[0]_2 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    DI,
    \accumulator_reg[3]_0 ,
    ena_mac,
    \accumulator_reg[3]_1 );
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]\x_reg[0]_1 ;
  input \x_reg[0]_2 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [0:0]DI;
  input [0:0]\accumulator_reg[3]_0 ;
  input ena_mac;
  input \accumulator_reg[3]_1 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire \accumulator[0]_i_3__58_n_0 ;
  wire \accumulator[0]_i_4__58_n_0 ;
  wire \accumulator[0]_i_5__58_n_0 ;
  wire \accumulator[4]_i_2__58_n_0 ;
  wire \accumulator[4]_i_3__58_n_0 ;
  wire \accumulator[4]_i_4__58_n_0 ;
  wire \accumulator[4]_i_5__58_n_0 ;
  wire \accumulator_reg[0]_i_1__58_n_0 ;
  wire \accumulator_reg[0]_i_1__58_n_1 ;
  wire \accumulator_reg[0]_i_1__58_n_2 ;
  wire \accumulator_reg[0]_i_1__58_n_3 ;
  wire \accumulator_reg[0]_i_1__58_n_4 ;
  wire \accumulator_reg[0]_i_1__58_n_5 ;
  wire \accumulator_reg[0]_i_1__58_n_6 ;
  wire \accumulator_reg[0]_i_1__58_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[4]_i_1__58_n_1 ;
  wire \accumulator_reg[4]_i_1__58_n_2 ;
  wire \accumulator_reg[4]_i_1__58_n_3 ;
  wire \accumulator_reg[4]_i_1__58_n_4 ;
  wire \accumulator_reg[4]_i_1__58_n_5 ;
  wire \accumulator_reg[4]_i_1__58_n_6 ;
  wire \accumulator_reg[4]_i_1__58_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire \x_reg[0]_0 ;
  wire [0:0]\x_reg[0]_1 ;
  wire \x_reg[0]_2 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__58_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__59 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_1 ),
        .I2(ena_mac),
        .O(\x_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__58 
       (.I0(ena_mac),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__58_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__58 
       (.I0(ena_mac),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__58_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__58 
       (.I0(ena_mac),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__58_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__58 
       (.I0(ena_mac),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__58_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__58 
       (.I0(ena_mac),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__58_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__58 
       (.I0(ena_mac),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__58_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__58 
       (.I0(ena_mac),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__58_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__58_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__58 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__58_n_0 ,\accumulator_reg[0]_i_1__58_n_1 ,\accumulator_reg[0]_i_1__58_n_2 ,\accumulator_reg[0]_i_1__58_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__58_n_4 ,\accumulator_reg[0]_i_1__58_n_5 ,\accumulator_reg[0]_i_1__58_n_6 ,\accumulator_reg[0]_i_1__58_n_7 }),
        .S({\accumulator[0]_i_3__58_n_0 ,\accumulator[0]_i_4__58_n_0 ,\accumulator[0]_i_5__58_n_0 ,\accumulator_reg[3]_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__58_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__58_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__58_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__58_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__58 
       (.CI(\accumulator_reg[0]_i_1__58_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__58_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__58_n_1 ,\accumulator_reg[4]_i_1__58_n_2 ,\accumulator_reg[4]_i_1__58_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__58_n_4 ,\accumulator_reg[4]_i_1__58_n_5 ,\accumulator_reg[4]_i_1__58_n_6 ,\accumulator_reg[4]_i_1__58_n_7 }),
        .S({\accumulator[4]_i_2__58_n_0 ,\accumulator[4]_i_3__58_n_0 ,\accumulator[4]_i_4__58_n_0 ,\accumulator[4]_i_5__58_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__58_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__58_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__58_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_2 ),
        .Q(\x_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_33
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    DI,
    S,
    \y_reg[0]_1 ,
    Q,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 ,
    \accumulator_reg[3]_5 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  output [0:0]S;
  output [0:0]\y_reg[0]_1 ;
  input [1:0]Q;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]\accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input [0:0]\accumulator_reg[3]_3 ;
  input \accumulator_reg[3]_4 ;
  input [0:0]\accumulator_reg[3]_5 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [1:0]Q;
  wire [0:0]S;
  wire \accumulator[0]_i_3__3_n_0 ;
  wire \accumulator[0]_i_4__3_n_0 ;
  wire \accumulator[0]_i_5__3_n_0 ;
  wire \accumulator[4]_i_2__3_n_0 ;
  wire \accumulator[4]_i_3__3_n_0 ;
  wire \accumulator[4]_i_4__3_n_0 ;
  wire \accumulator[4]_i_5__3_n_0 ;
  wire \accumulator_reg[0]_i_1__3_n_0 ;
  wire \accumulator_reg[0]_i_1__3_n_1 ;
  wire \accumulator_reg[0]_i_1__3_n_2 ;
  wire \accumulator_reg[0]_i_1__3_n_3 ;
  wire \accumulator_reg[0]_i_1__3_n_4 ;
  wire \accumulator_reg[0]_i_1__3_n_5 ;
  wire \accumulator_reg[0]_i_1__3_n_6 ;
  wire \accumulator_reg[0]_i_1__3_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire [0:0]\accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire [0:0]\accumulator_reg[3]_3 ;
  wire \accumulator_reg[3]_4 ;
  wire [0:0]\accumulator_reg[3]_5 ;
  wire \accumulator_reg[4]_i_1__3_n_1 ;
  wire \accumulator_reg[4]_i_1__3_n_2 ;
  wire \accumulator_reg[4]_i_1__3_n_3 ;
  wire \accumulator_reg[4]_i_1__3_n_4 ;
  wire \accumulator_reg[4]_i_1__3_n_5 ;
  wire \accumulator_reg[4]_i_1__3_n_6 ;
  wire \accumulator_reg[4]_i_1__3_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__3_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__4 
       (.I0(\x_reg[0]_0 ),
        .I1(Q[1]),
        .I2(\accumulator_reg[3]_2 ),
        .O(DI));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__3 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__3 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__3 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__3_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__11 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_4 ),
        .I2(\accumulator_reg[3]_5 ),
        .I3(\accumulator_reg[3]_2 ),
        .O(\y_reg[0]_1 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__4 
       (.I0(Q[1]),
        .I1(\x_reg[0]_0 ),
        .I2(\accumulator_reg[3]_3 ),
        .I3(\accumulator_reg[3]_2 ),
        .O(S));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__3 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__3 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__3 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__3 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__3_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__3 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__3_n_0 ,\accumulator_reg[0]_i_1__3_n_1 ,\accumulator_reg[0]_i_1__3_n_2 ,\accumulator_reg[0]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__3_n_4 ,\accumulator_reg[0]_i_1__3_n_5 ,\accumulator_reg[0]_i_1__3_n_6 ,\accumulator_reg[0]_i_1__3_n_7 }),
        .S({\accumulator[0]_i_3__3_n_0 ,\accumulator[0]_i_4__3_n_0 ,\accumulator[0]_i_5__3_n_0 ,\accumulator_reg[3]_1 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__3_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__3_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__3_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__3_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__3 
       (.CI(\accumulator_reg[0]_i_1__3_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__3_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__3_n_1 ,\accumulator_reg[4]_i_1__3_n_2 ,\accumulator_reg[4]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__3_n_4 ,\accumulator_reg[4]_i_1__3_n_5 ,\accumulator_reg[4]_i_1__3_n_6 ,\accumulator_reg[4]_i_1__3_n_7 }),
        .S({\accumulator[4]_i_2__3_n_0 ,\accumulator[4]_i_3__3_n_0 ,\accumulator[4]_i_4__3_n_0 ,\accumulator[4]_i_5__3_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__3_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__3_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__3_n_4 ),
        .Q(D[7]));
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
        .D(Q[0]),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_34
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    DI,
    S,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 ,
    \accumulator_reg[3]_5 ,
    \accumulator_reg[3]_6 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  output [0:0]S;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]\accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input \accumulator_reg[3]_4 ;
  input [0:0]\accumulator_reg[3]_5 ;
  input \accumulator_reg[3]_6 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__11_n_0 ;
  wire \accumulator[0]_i_4__11_n_0 ;
  wire \accumulator[0]_i_5__11_n_0 ;
  wire \accumulator[4]_i_2__11_n_0 ;
  wire \accumulator[4]_i_3__11_n_0 ;
  wire \accumulator[4]_i_4__11_n_0 ;
  wire \accumulator[4]_i_5__11_n_0 ;
  wire \accumulator_reg[0]_i_1__11_n_0 ;
  wire \accumulator_reg[0]_i_1__11_n_1 ;
  wire \accumulator_reg[0]_i_1__11_n_2 ;
  wire \accumulator_reg[0]_i_1__11_n_3 ;
  wire \accumulator_reg[0]_i_1__11_n_4 ;
  wire \accumulator_reg[0]_i_1__11_n_5 ;
  wire \accumulator_reg[0]_i_1__11_n_6 ;
  wire \accumulator_reg[0]_i_1__11_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire [0:0]\accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire \accumulator_reg[3]_4 ;
  wire [0:0]\accumulator_reg[3]_5 ;
  wire \accumulator_reg[3]_6 ;
  wire \accumulator_reg[4]_i_1__11_n_1 ;
  wire \accumulator_reg[4]_i_1__11_n_2 ;
  wire \accumulator_reg[4]_i_1__11_n_3 ;
  wire \accumulator_reg[4]_i_1__11_n_4 ;
  wire \accumulator_reg[4]_i_1__11_n_5 ;
  wire \accumulator_reg[4]_i_1__11_n_6 ;
  wire \accumulator_reg[4]_i_1__11_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__11_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__12 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_3 ),
        .I2(\accumulator_reg[3]_2 ),
        .O(DI));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__11 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__11_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__11 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__11_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__11 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__11_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__19 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_4 ),
        .I2(\accumulator_reg[3]_5 ),
        .I3(\accumulator_reg[3]_6 ),
        .O(S));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__11 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__11_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__11 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__11_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__11 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__11_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__11 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__11_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__11_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__11 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__11_n_0 ,\accumulator_reg[0]_i_1__11_n_1 ,\accumulator_reg[0]_i_1__11_n_2 ,\accumulator_reg[0]_i_1__11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__11_n_4 ,\accumulator_reg[0]_i_1__11_n_5 ,\accumulator_reg[0]_i_1__11_n_6 ,\accumulator_reg[0]_i_1__11_n_7 }),
        .S({\accumulator[0]_i_3__11_n_0 ,\accumulator[0]_i_4__11_n_0 ,\accumulator[0]_i_5__11_n_0 ,\accumulator_reg[3]_1 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__11_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__11_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__11_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__11_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__11 
       (.CI(\accumulator_reg[0]_i_1__11_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__11_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__11_n_1 ,\accumulator_reg[4]_i_1__11_n_2 ,\accumulator_reg[4]_i_1__11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__11_n_4 ,\accumulator_reg[4]_i_1__11_n_5 ,\accumulator_reg[4]_i_1__11_n_6 ,\accumulator_reg[4]_i_1__11_n_7 }),
        .S({\accumulator[4]_i_2__11_n_0 ,\accumulator[4]_i_3__11_n_0 ,\accumulator[4]_i_4__11_n_0 ,\accumulator[4]_i_5__11_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__11_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__11_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__11_n_4 ),
        .Q(D[7]));
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
module accumulator_cells_35
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    DI,
    \y_reg[0]_1 ,
    \y_reg[0]_2 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[3]_0 ,
    S,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  output [0:0]\y_reg[0]_1 ;
  input \y_reg[0]_2 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]S;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input [0:0]\accumulator_reg[3]_4 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__19_n_0 ;
  wire \accumulator[0]_i_4__19_n_0 ;
  wire \accumulator[0]_i_5__19_n_0 ;
  wire \accumulator[4]_i_2__19_n_0 ;
  wire \accumulator[4]_i_3__19_n_0 ;
  wire \accumulator[4]_i_4__19_n_0 ;
  wire \accumulator[4]_i_5__19_n_0 ;
  wire \accumulator_reg[0]_i_1__19_n_0 ;
  wire \accumulator_reg[0]_i_1__19_n_1 ;
  wire \accumulator_reg[0]_i_1__19_n_2 ;
  wire \accumulator_reg[0]_i_1__19_n_3 ;
  wire \accumulator_reg[0]_i_1__19_n_4 ;
  wire \accumulator_reg[0]_i_1__19_n_5 ;
  wire \accumulator_reg[0]_i_1__19_n_6 ;
  wire \accumulator_reg[0]_i_1__19_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire [0:0]\accumulator_reg[3]_4 ;
  wire \accumulator_reg[4]_i_1__19_n_1 ;
  wire \accumulator_reg[4]_i_1__19_n_2 ;
  wire \accumulator_reg[4]_i_1__19_n_3 ;
  wire \accumulator_reg[4]_i_1__19_n_4 ;
  wire \accumulator_reg[4]_i_1__19_n_5 ;
  wire \accumulator_reg[4]_i_1__19_n_6 ;
  wire \accumulator_reg[4]_i_1__19_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire \y_reg[0]_2 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__19_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__20 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_1 ),
        .O(DI));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__19 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__19_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__19 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__19_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__19 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__19_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__27 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_3 ),
        .I2(\accumulator_reg[3]_4 ),
        .I3(\accumulator_reg[3]_1 ),
        .O(\y_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__19 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__19_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__19 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__19_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__19 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__19_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__19 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__19_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__19_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__19 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__19_n_0 ,\accumulator_reg[0]_i_1__19_n_1 ,\accumulator_reg[0]_i_1__19_n_2 ,\accumulator_reg[0]_i_1__19_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__19_n_4 ,\accumulator_reg[0]_i_1__19_n_5 ,\accumulator_reg[0]_i_1__19_n_6 ,\accumulator_reg[0]_i_1__19_n_7 }),
        .S({\accumulator[0]_i_3__19_n_0 ,\accumulator[0]_i_4__19_n_0 ,\accumulator[0]_i_5__19_n_0 ,S}));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__19_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__19_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__19_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__19_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__19 
       (.CI(\accumulator_reg[0]_i_1__19_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__19_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__19_n_1 ,\accumulator_reg[4]_i_1__19_n_2 ,\accumulator_reg[4]_i_1__19_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__19_n_4 ,\accumulator_reg[4]_i_1__19_n_5 ,\accumulator_reg[4]_i_1__19_n_6 ,\accumulator_reg[4]_i_1__19_n_7 }),
        .S({\accumulator[4]_i_2__19_n_0 ,\accumulator[4]_i_3__19_n_0 ,\accumulator[4]_i_4__19_n_0 ,\accumulator[4]_i_5__19_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__19_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__19_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__19_n_4 ),
        .Q(D[7]));
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
        .D(\y_reg[0]_2 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_36
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    DI,
    S,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 ,
    \accumulator_reg[3]_5 ,
    \accumulator_reg[3]_6 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  output [0:0]S;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]\accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input \accumulator_reg[3]_4 ;
  input [0:0]\accumulator_reg[3]_5 ;
  input \accumulator_reg[3]_6 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__27_n_0 ;
  wire \accumulator[0]_i_4__27_n_0 ;
  wire \accumulator[0]_i_5__27_n_0 ;
  wire \accumulator[4]_i_2__27_n_0 ;
  wire \accumulator[4]_i_3__27_n_0 ;
  wire \accumulator[4]_i_4__27_n_0 ;
  wire \accumulator[4]_i_5__27_n_0 ;
  wire \accumulator_reg[0]_i_1__27_n_0 ;
  wire \accumulator_reg[0]_i_1__27_n_1 ;
  wire \accumulator_reg[0]_i_1__27_n_2 ;
  wire \accumulator_reg[0]_i_1__27_n_3 ;
  wire \accumulator_reg[0]_i_1__27_n_4 ;
  wire \accumulator_reg[0]_i_1__27_n_5 ;
  wire \accumulator_reg[0]_i_1__27_n_6 ;
  wire \accumulator_reg[0]_i_1__27_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire [0:0]\accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire \accumulator_reg[3]_4 ;
  wire [0:0]\accumulator_reg[3]_5 ;
  wire \accumulator_reg[3]_6 ;
  wire \accumulator_reg[4]_i_1__27_n_1 ;
  wire \accumulator_reg[4]_i_1__27_n_2 ;
  wire \accumulator_reg[4]_i_1__27_n_3 ;
  wire \accumulator_reg[4]_i_1__27_n_4 ;
  wire \accumulator_reg[4]_i_1__27_n_5 ;
  wire \accumulator_reg[4]_i_1__27_n_6 ;
  wire \accumulator_reg[4]_i_1__27_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__27_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__28 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_3 ),
        .I2(\accumulator_reg[3]_2 ),
        .O(DI));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__27 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__27_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__27 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__27_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__27 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__27_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__35 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_4 ),
        .I2(\accumulator_reg[3]_5 ),
        .I3(\accumulator_reg[3]_6 ),
        .O(S));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__27 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__27_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__27 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__27_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__27 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__27_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__27 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__27_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__27_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__27 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__27_n_0 ,\accumulator_reg[0]_i_1__27_n_1 ,\accumulator_reg[0]_i_1__27_n_2 ,\accumulator_reg[0]_i_1__27_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__27_n_4 ,\accumulator_reg[0]_i_1__27_n_5 ,\accumulator_reg[0]_i_1__27_n_6 ,\accumulator_reg[0]_i_1__27_n_7 }),
        .S({\accumulator[0]_i_3__27_n_0 ,\accumulator[0]_i_4__27_n_0 ,\accumulator[0]_i_5__27_n_0 ,\accumulator_reg[3]_1 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__27_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__27_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__27_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__27_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__27 
       (.CI(\accumulator_reg[0]_i_1__27_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__27_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__27_n_1 ,\accumulator_reg[4]_i_1__27_n_2 ,\accumulator_reg[4]_i_1__27_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__27_n_4 ,\accumulator_reg[4]_i_1__27_n_5 ,\accumulator_reg[4]_i_1__27_n_6 ,\accumulator_reg[4]_i_1__27_n_7 }),
        .S({\accumulator[4]_i_2__27_n_0 ,\accumulator[4]_i_3__27_n_0 ,\accumulator[4]_i_4__27_n_0 ,\accumulator[4]_i_5__27_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__27_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__27_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__27_n_4 ),
        .Q(D[7]));
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
    D,
    DI,
    \y_reg[0]_1 ,
    \y_reg[0]_2 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[3]_0 ,
    S,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  output [0:0]\y_reg[0]_1 ;
  input \y_reg[0]_2 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]S;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input [0:0]\accumulator_reg[3]_4 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__35_n_0 ;
  wire \accumulator[0]_i_4__35_n_0 ;
  wire \accumulator[0]_i_5__35_n_0 ;
  wire \accumulator[4]_i_2__35_n_0 ;
  wire \accumulator[4]_i_3__35_n_0 ;
  wire \accumulator[4]_i_4__35_n_0 ;
  wire \accumulator[4]_i_5__35_n_0 ;
  wire \accumulator_reg[0]_i_1__35_n_0 ;
  wire \accumulator_reg[0]_i_1__35_n_1 ;
  wire \accumulator_reg[0]_i_1__35_n_2 ;
  wire \accumulator_reg[0]_i_1__35_n_3 ;
  wire \accumulator_reg[0]_i_1__35_n_4 ;
  wire \accumulator_reg[0]_i_1__35_n_5 ;
  wire \accumulator_reg[0]_i_1__35_n_6 ;
  wire \accumulator_reg[0]_i_1__35_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire [0:0]\accumulator_reg[3]_4 ;
  wire \accumulator_reg[4]_i_1__35_n_1 ;
  wire \accumulator_reg[4]_i_1__35_n_2 ;
  wire \accumulator_reg[4]_i_1__35_n_3 ;
  wire \accumulator_reg[4]_i_1__35_n_4 ;
  wire \accumulator_reg[4]_i_1__35_n_5 ;
  wire \accumulator_reg[4]_i_1__35_n_6 ;
  wire \accumulator_reg[4]_i_1__35_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire \y_reg[0]_2 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__35_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__36 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_1 ),
        .O(DI));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__35 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__35_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__35 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__35_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__35 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__35_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__43 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_3 ),
        .I2(\accumulator_reg[3]_4 ),
        .I3(\accumulator_reg[3]_1 ),
        .O(\y_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__35 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__35_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__35 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__35_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__35 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__35_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__35 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__35_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__35_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__35 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__35_n_0 ,\accumulator_reg[0]_i_1__35_n_1 ,\accumulator_reg[0]_i_1__35_n_2 ,\accumulator_reg[0]_i_1__35_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__35_n_4 ,\accumulator_reg[0]_i_1__35_n_5 ,\accumulator_reg[0]_i_1__35_n_6 ,\accumulator_reg[0]_i_1__35_n_7 }),
        .S({\accumulator[0]_i_3__35_n_0 ,\accumulator[0]_i_4__35_n_0 ,\accumulator[0]_i_5__35_n_0 ,S}));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__35_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__35_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__35_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__35_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__35 
       (.CI(\accumulator_reg[0]_i_1__35_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__35_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__35_n_1 ,\accumulator_reg[4]_i_1__35_n_2 ,\accumulator_reg[4]_i_1__35_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__35_n_4 ,\accumulator_reg[4]_i_1__35_n_5 ,\accumulator_reg[4]_i_1__35_n_6 ,\accumulator_reg[4]_i_1__35_n_7 }),
        .S({\accumulator[4]_i_2__35_n_0 ,\accumulator[4]_i_3__35_n_0 ,\accumulator[4]_i_4__35_n_0 ,\accumulator[4]_i_5__35_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__35_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__35_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__35_n_4 ),
        .Q(D[7]));
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
        .D(\y_reg[0]_2 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_38
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    DI,
    S,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 ,
    \accumulator_reg[3]_5 ,
    ena_mac);
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  output [0:0]S;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]\accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input \accumulator_reg[3]_4 ;
  input [0:0]\accumulator_reg[3]_5 ;
  input ena_mac;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__43_n_0 ;
  wire \accumulator[0]_i_4__43_n_0 ;
  wire \accumulator[0]_i_5__43_n_0 ;
  wire \accumulator[4]_i_2__43_n_0 ;
  wire \accumulator[4]_i_3__43_n_0 ;
  wire \accumulator[4]_i_4__43_n_0 ;
  wire \accumulator[4]_i_5__43_n_0 ;
  wire \accumulator_reg[0]_i_1__43_n_0 ;
  wire \accumulator_reg[0]_i_1__43_n_1 ;
  wire \accumulator_reg[0]_i_1__43_n_2 ;
  wire \accumulator_reg[0]_i_1__43_n_3 ;
  wire \accumulator_reg[0]_i_1__43_n_4 ;
  wire \accumulator_reg[0]_i_1__43_n_5 ;
  wire \accumulator_reg[0]_i_1__43_n_6 ;
  wire \accumulator_reg[0]_i_1__43_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire [0:0]\accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire \accumulator_reg[3]_4 ;
  wire [0:0]\accumulator_reg[3]_5 ;
  wire \accumulator_reg[4]_i_1__43_n_1 ;
  wire \accumulator_reg[4]_i_1__43_n_2 ;
  wire \accumulator_reg[4]_i_1__43_n_3 ;
  wire \accumulator_reg[4]_i_1__43_n_4 ;
  wire \accumulator_reg[4]_i_1__43_n_5 ;
  wire \accumulator_reg[4]_i_1__43_n_6 ;
  wire \accumulator_reg[4]_i_1__43_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__43_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__44 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_3 ),
        .I2(\accumulator_reg[3]_2 ),
        .O(DI));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__43 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__43_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__43 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__43_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__43 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__43_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__51 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_4 ),
        .I2(\accumulator_reg[3]_5 ),
        .I3(ena_mac),
        .O(S));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__43 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__43_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__43 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__43_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__43 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__43_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__43 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__43_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__43_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__43 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__43_n_0 ,\accumulator_reg[0]_i_1__43_n_1 ,\accumulator_reg[0]_i_1__43_n_2 ,\accumulator_reg[0]_i_1__43_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__43_n_4 ,\accumulator_reg[0]_i_1__43_n_5 ,\accumulator_reg[0]_i_1__43_n_6 ,\accumulator_reg[0]_i_1__43_n_7 }),
        .S({\accumulator[0]_i_3__43_n_0 ,\accumulator[0]_i_4__43_n_0 ,\accumulator[0]_i_5__43_n_0 ,\accumulator_reg[3]_1 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__43_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__43_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__43_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__43_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__43 
       (.CI(\accumulator_reg[0]_i_1__43_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__43_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__43_n_1 ,\accumulator_reg[4]_i_1__43_n_2 ,\accumulator_reg[4]_i_1__43_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__43_n_4 ,\accumulator_reg[4]_i_1__43_n_5 ,\accumulator_reg[4]_i_1__43_n_6 ,\accumulator_reg[4]_i_1__43_n_7 }),
        .S({\accumulator[4]_i_2__43_n_0 ,\accumulator[4]_i_3__43_n_0 ,\accumulator[4]_i_4__43_n_0 ,\accumulator[4]_i_5__43_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__43_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__43_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__43_n_4 ),
        .Q(D[7]));
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
    D,
    DI,
    \y_reg[0]_1 ,
    \y_reg[0]_2 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[3]_0 ,
    S,
    ena_mac,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  output [0:0]\y_reg[0]_1 ;
  input \y_reg[0]_2 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]S;
  input ena_mac;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input [0:0]\accumulator_reg[3]_3 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__51_n_0 ;
  wire \accumulator[0]_i_4__51_n_0 ;
  wire \accumulator[0]_i_5__51_n_0 ;
  wire \accumulator[4]_i_2__51_n_0 ;
  wire \accumulator[4]_i_3__51_n_0 ;
  wire \accumulator[4]_i_4__51_n_0 ;
  wire \accumulator[4]_i_5__51_n_0 ;
  wire \accumulator_reg[0]_i_1__51_n_0 ;
  wire \accumulator_reg[0]_i_1__51_n_1 ;
  wire \accumulator_reg[0]_i_1__51_n_2 ;
  wire \accumulator_reg[0]_i_1__51_n_3 ;
  wire \accumulator_reg[0]_i_1__51_n_4 ;
  wire \accumulator_reg[0]_i_1__51_n_5 ;
  wire \accumulator_reg[0]_i_1__51_n_6 ;
  wire \accumulator_reg[0]_i_1__51_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire [0:0]\accumulator_reg[3]_3 ;
  wire \accumulator_reg[4]_i_1__51_n_1 ;
  wire \accumulator_reg[4]_i_1__51_n_2 ;
  wire \accumulator_reg[4]_i_1__51_n_3 ;
  wire \accumulator_reg[4]_i_1__51_n_4 ;
  wire \accumulator_reg[4]_i_1__51_n_5 ;
  wire \accumulator_reg[4]_i_1__51_n_6 ;
  wire \accumulator_reg[4]_i_1__51_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire \y_reg[0]_2 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__51_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__52 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_1 ),
        .I2(ena_mac),
        .O(DI));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__51 
       (.I0(ena_mac),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__51_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__51 
       (.I0(ena_mac),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__51_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__51 
       (.I0(ena_mac),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__51_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__59 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_3 ),
        .I3(ena_mac),
        .O(\y_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__51 
       (.I0(ena_mac),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__51_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__51 
       (.I0(ena_mac),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__51_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__51 
       (.I0(ena_mac),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__51_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__51 
       (.I0(ena_mac),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__51_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__51_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__51 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__51_n_0 ,\accumulator_reg[0]_i_1__51_n_1 ,\accumulator_reg[0]_i_1__51_n_2 ,\accumulator_reg[0]_i_1__51_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__51_n_4 ,\accumulator_reg[0]_i_1__51_n_5 ,\accumulator_reg[0]_i_1__51_n_6 ,\accumulator_reg[0]_i_1__51_n_7 }),
        .S({\accumulator[0]_i_3__51_n_0 ,\accumulator[0]_i_4__51_n_0 ,\accumulator[0]_i_5__51_n_0 ,S}));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__51_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__51_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__51_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__51_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__51 
       (.CI(\accumulator_reg[0]_i_1__51_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__51_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__51_n_1 ,\accumulator_reg[4]_i_1__51_n_2 ,\accumulator_reg[4]_i_1__51_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__51_n_4 ,\accumulator_reg[4]_i_1__51_n_5 ,\accumulator_reg[4]_i_1__51_n_6 ,\accumulator_reg[4]_i_1__51_n_7 }),
        .S({\accumulator[4]_i_2__51_n_0 ,\accumulator[4]_i_3__51_n_0 ,\accumulator[4]_i_4__51_n_0 ,\accumulator[4]_i_5__51_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__51_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__51_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__51_n_4 ),
        .Q(D[7]));
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
        .D(\y_reg[0]_2 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_4
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    DI,
    \a_load_reg[4] ,
    S,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    Q,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  output [0:0]\a_load_reg[4] ;
  output [0:0]S;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [1:0]Q;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]\accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input [0:0]\accumulator_reg[3]_4 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [1:0]Q;
  wire [0:0]S;
  wire [0:0]\a_load_reg[4] ;
  wire \accumulator[0]_i_3__23_n_0 ;
  wire \accumulator[0]_i_4__23_n_0 ;
  wire \accumulator[0]_i_5__23_n_0 ;
  wire \accumulator[4]_i_2__23_n_0 ;
  wire \accumulator[4]_i_3__23_n_0 ;
  wire \accumulator[4]_i_4__23_n_0 ;
  wire \accumulator[4]_i_5__23_n_0 ;
  wire \accumulator_reg[0]_i_1__23_n_0 ;
  wire \accumulator_reg[0]_i_1__23_n_1 ;
  wire \accumulator_reg[0]_i_1__23_n_2 ;
  wire \accumulator_reg[0]_i_1__23_n_3 ;
  wire \accumulator_reg[0]_i_1__23_n_4 ;
  wire \accumulator_reg[0]_i_1__23_n_5 ;
  wire \accumulator_reg[0]_i_1__23_n_6 ;
  wire \accumulator_reg[0]_i_1__23_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire [0:0]\accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire [0:0]\accumulator_reg[3]_4 ;
  wire \accumulator_reg[4]_i_1__23_n_1 ;
  wire \accumulator_reg[4]_i_1__23_n_2 ;
  wire \accumulator_reg[4]_i_1__23_n_3 ;
  wire \accumulator_reg[4]_i_1__23_n_4 ;
  wire \accumulator_reg[4]_i_1__23_n_5 ;
  wire \accumulator_reg[4]_i_1__23_n_6 ;
  wire \accumulator_reg[4]_i_1__23_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__23_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__24 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_3 ),
        .I2(\accumulator_reg[3]_2 ),
        .O(DI));
  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__31 
       (.I0(Q[1]),
        .I1(\y_reg[0]_0 ),
        .I2(\accumulator_reg[3]_2 ),
        .O(\a_load_reg[4] ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__23 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__23_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__23 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__23_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__23 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__23_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__31 
       (.I0(\y_reg[0]_0 ),
        .I1(Q[1]),
        .I2(\accumulator_reg[3]_4 ),
        .I3(\accumulator_reg[3]_2 ),
        .O(S));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__23 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__23_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__23 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__23_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__23 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__23_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__23 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__23_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__23_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__23 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__23_n_0 ,\accumulator_reg[0]_i_1__23_n_1 ,\accumulator_reg[0]_i_1__23_n_2 ,\accumulator_reg[0]_i_1__23_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__23_n_4 ,\accumulator_reg[0]_i_1__23_n_5 ,\accumulator_reg[0]_i_1__23_n_6 ,\accumulator_reg[0]_i_1__23_n_7 }),
        .S({\accumulator[0]_i_3__23_n_0 ,\accumulator[0]_i_4__23_n_0 ,\accumulator[0]_i_5__23_n_0 ,\accumulator_reg[3]_1 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__23_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__23_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__23_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__23_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__23 
       (.CI(\accumulator_reg[0]_i_1__23_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__23_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__23_n_1 ,\accumulator_reg[4]_i_1__23_n_2 ,\accumulator_reg[4]_i_1__23_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__23_n_4 ,\accumulator_reg[4]_i_1__23_n_5 ,\accumulator_reg[4]_i_1__23_n_6 ,\accumulator_reg[4]_i_1__23_n_7 }),
        .S({\accumulator[4]_i_2__23_n_0 ,\accumulator[4]_i_3__23_n_0 ,\accumulator[4]_i_4__23_n_0 ,\accumulator[4]_i_5__23_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__23_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__23_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__23_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(Q[0]),
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
   (\x_reg[0]_0 ,
    D,
    DI,
    \x_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    ena_mac,
    \accumulator_reg[3]_2 );
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  input \x_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]\accumulator_reg[3]_1 ;
  input ena_mac;
  input \accumulator_reg[3]_2 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire \accumulator[0]_i_3__59_n_0 ;
  wire \accumulator[0]_i_4__59_n_0 ;
  wire \accumulator[0]_i_5__59_n_0 ;
  wire \accumulator[4]_i_2__59_n_0 ;
  wire \accumulator[4]_i_3__59_n_0 ;
  wire \accumulator[4]_i_4__59_n_0 ;
  wire \accumulator[4]_i_5__59_n_0 ;
  wire \accumulator_reg[0]_i_1__59_n_0 ;
  wire \accumulator_reg[0]_i_1__59_n_1 ;
  wire \accumulator_reg[0]_i_1__59_n_2 ;
  wire \accumulator_reg[0]_i_1__59_n_3 ;
  wire \accumulator_reg[0]_i_1__59_n_4 ;
  wire \accumulator_reg[0]_i_1__59_n_5 ;
  wire \accumulator_reg[0]_i_1__59_n_6 ;
  wire \accumulator_reg[0]_i_1__59_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire [0:0]\accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[4]_i_1__59_n_1 ;
  wire \accumulator_reg[4]_i_1__59_n_2 ;
  wire \accumulator_reg[4]_i_1__59_n_3 ;
  wire \accumulator_reg[4]_i_1__59_n_4 ;
  wire \accumulator_reg[4]_i_1__59_n_5 ;
  wire \accumulator_reg[4]_i_1__59_n_6 ;
  wire \accumulator_reg[4]_i_1__59_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__59_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__60 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(ena_mac),
        .O(DI));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__59 
       (.I0(ena_mac),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__59_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__59 
       (.I0(ena_mac),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__59_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__59 
       (.I0(ena_mac),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__59_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__59 
       (.I0(ena_mac),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__59_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__59 
       (.I0(ena_mac),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__59_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__59 
       (.I0(ena_mac),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__59_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__59 
       (.I0(ena_mac),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__59_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__59_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__59 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__59_n_0 ,\accumulator_reg[0]_i_1__59_n_1 ,\accumulator_reg[0]_i_1__59_n_2 ,\accumulator_reg[0]_i_1__59_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__59_n_4 ,\accumulator_reg[0]_i_1__59_n_5 ,\accumulator_reg[0]_i_1__59_n_6 ,\accumulator_reg[0]_i_1__59_n_7 }),
        .S({\accumulator[0]_i_3__59_n_0 ,\accumulator[0]_i_4__59_n_0 ,\accumulator[0]_i_5__59_n_0 ,\accumulator_reg[3]_1 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__59_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__59_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__59_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__59_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__59 
       (.CI(\accumulator_reg[0]_i_1__59_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__59_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__59_n_1 ,\accumulator_reg[4]_i_1__59_n_2 ,\accumulator_reg[4]_i_1__59_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__59_n_4 ,\accumulator_reg[4]_i_1__59_n_5 ,\accumulator_reg[4]_i_1__59_n_6 ,\accumulator_reg[4]_i_1__59_n_7 }),
        .S({\accumulator[4]_i_2__59_n_0 ,\accumulator[4]_i_3__59_n_0 ,\accumulator[4]_i_4__59_n_0 ,\accumulator[4]_i_5__59_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__59_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__59_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__59_n_4 ),
        .Q(D[7]));
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
module accumulator_cells_41
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    \x_reg[0]_1 ,
    \b_load_reg[6] ,
    \y_reg[0]_1 ,
    Q,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_2 ,
    DI,
    S,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]\x_reg[0]_1 ;
  output [0:0]\b_load_reg[6] ;
  output [0:0]\y_reg[0]_1 ;
  input [1:0]Q;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_2 ;
  input [0:0]DI;
  input [0:0]S;
  input \accumulator_reg[3]_0 ;
  input [0:0]\accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input [0:0]\accumulator_reg[3]_3 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [1:0]Q;
  wire [0:0]S;
  wire \accumulator[0]_i_3__4_n_0 ;
  wire \accumulator[0]_i_4__4_n_0 ;
  wire \accumulator[0]_i_5__4_n_0 ;
  wire \accumulator[4]_i_2__4_n_0 ;
  wire \accumulator[4]_i_3__4_n_0 ;
  wire \accumulator[4]_i_4__4_n_0 ;
  wire \accumulator[4]_i_5__4_n_0 ;
  wire \accumulator_reg[0]_i_1__4_n_0 ;
  wire \accumulator_reg[0]_i_1__4_n_1 ;
  wire \accumulator_reg[0]_i_1__4_n_2 ;
  wire \accumulator_reg[0]_i_1__4_n_3 ;
  wire \accumulator_reg[0]_i_1__4_n_4 ;
  wire \accumulator_reg[0]_i_1__4_n_5 ;
  wire \accumulator_reg[0]_i_1__4_n_6 ;
  wire \accumulator_reg[0]_i_1__4_n_7 ;
  wire \accumulator_reg[3]_0 ;
  wire [0:0]\accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire [0:0]\accumulator_reg[3]_3 ;
  wire \accumulator_reg[4]_i_1__4_n_1 ;
  wire \accumulator_reg[4]_i_1__4_n_2 ;
  wire \accumulator_reg[4]_i_1__4_n_3 ;
  wire \accumulator_reg[4]_i_1__4_n_4 ;
  wire \accumulator_reg[4]_i_1__4_n_5 ;
  wire \accumulator_reg[4]_i_1__4_n_6 ;
  wire \accumulator_reg[4]_i_1__4_n_7 ;
  wire [0:0]\b_load_reg[6] ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire [0:0]\x_reg[0]_1 ;
  wire \x_reg[0]_2 ;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__4_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__5 
       (.I0(\x_reg[0]_0 ),
        .I1(Q[1]),
        .I2(\accumulator_reg[3]_0 ),
        .O(\x_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__4 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__4 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__4 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__4_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__12 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_3 ),
        .I3(\accumulator_reg[3]_0 ),
        .O(\y_reg[0]_1 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__5 
       (.I0(Q[1]),
        .I1(\x_reg[0]_0 ),
        .I2(\accumulator_reg[3]_1 ),
        .I3(\accumulator_reg[3]_0 ),
        .O(\b_load_reg[6] ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__4 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__4 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__4 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__4 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__4_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__4 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__4_n_0 ,\accumulator_reg[0]_i_1__4_n_1 ,\accumulator_reg[0]_i_1__4_n_2 ,\accumulator_reg[0]_i_1__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__4_n_4 ,\accumulator_reg[0]_i_1__4_n_5 ,\accumulator_reg[0]_i_1__4_n_6 ,\accumulator_reg[0]_i_1__4_n_7 }),
        .S({\accumulator[0]_i_3__4_n_0 ,\accumulator[0]_i_4__4_n_0 ,\accumulator[0]_i_5__4_n_0 ,S}));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__4_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__4_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__4_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__4_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__4 
       (.CI(\accumulator_reg[0]_i_1__4_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__4_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__4_n_1 ,\accumulator_reg[4]_i_1__4_n_2 ,\accumulator_reg[4]_i_1__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__4_n_4 ,\accumulator_reg[4]_i_1__4_n_5 ,\accumulator_reg[4]_i_1__4_n_6 ,\accumulator_reg[4]_i_1__4_n_7 }),
        .S({\accumulator[4]_i_2__4_n_0 ,\accumulator[4]_i_3__4_n_0 ,\accumulator[4]_i_4__4_n_0 ,\accumulator[4]_i_5__4_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__4_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__4_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__4_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_2 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(Q[0]),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_42
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    \x_reg[0]_1 ,
    S,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_2 ,
    DI,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 ,
    \accumulator_reg[3]_5 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]\x_reg[0]_1 ;
  output [0:0]S;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_2 ;
  input [0:0]DI;
  input [0:0]\accumulator_reg[3]_0 ;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input [0:0]\accumulator_reg[3]_4 ;
  input \accumulator_reg[3]_5 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__12_n_0 ;
  wire \accumulator[0]_i_4__12_n_0 ;
  wire \accumulator[0]_i_5__12_n_0 ;
  wire \accumulator[4]_i_2__12_n_0 ;
  wire \accumulator[4]_i_3__12_n_0 ;
  wire \accumulator[4]_i_4__12_n_0 ;
  wire \accumulator[4]_i_5__12_n_0 ;
  wire \accumulator_reg[0]_i_1__12_n_0 ;
  wire \accumulator_reg[0]_i_1__12_n_1 ;
  wire \accumulator_reg[0]_i_1__12_n_2 ;
  wire \accumulator_reg[0]_i_1__12_n_3 ;
  wire \accumulator_reg[0]_i_1__12_n_4 ;
  wire \accumulator_reg[0]_i_1__12_n_5 ;
  wire \accumulator_reg[0]_i_1__12_n_6 ;
  wire \accumulator_reg[0]_i_1__12_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire [0:0]\accumulator_reg[3]_4 ;
  wire \accumulator_reg[3]_5 ;
  wire \accumulator_reg[4]_i_1__12_n_1 ;
  wire \accumulator_reg[4]_i_1__12_n_2 ;
  wire \accumulator_reg[4]_i_1__12_n_3 ;
  wire \accumulator_reg[4]_i_1__12_n_4 ;
  wire \accumulator_reg[4]_i_1__12_n_5 ;
  wire \accumulator_reg[4]_i_1__12_n_6 ;
  wire \accumulator_reg[4]_i_1__12_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire [0:0]\x_reg[0]_1 ;
  wire \x_reg[0]_2 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__12_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__13 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_1 ),
        .O(\x_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__12 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__12_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__12 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__12_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__12 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__12_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__20 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_3 ),
        .I2(\accumulator_reg[3]_4 ),
        .I3(\accumulator_reg[3]_5 ),
        .O(S));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__12 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__12_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__12 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__12_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__12 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__12_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__12 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__12_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__12_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__12 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__12_n_0 ,\accumulator_reg[0]_i_1__12_n_1 ,\accumulator_reg[0]_i_1__12_n_2 ,\accumulator_reg[0]_i_1__12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__12_n_4 ,\accumulator_reg[0]_i_1__12_n_5 ,\accumulator_reg[0]_i_1__12_n_6 ,\accumulator_reg[0]_i_1__12_n_7 }),
        .S({\accumulator[0]_i_3__12_n_0 ,\accumulator[0]_i_4__12_n_0 ,\accumulator[0]_i_5__12_n_0 ,\accumulator_reg[3]_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__12_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__12_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__12_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__12_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__12 
       (.CI(\accumulator_reg[0]_i_1__12_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__12_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__12_n_1 ,\accumulator_reg[4]_i_1__12_n_2 ,\accumulator_reg[4]_i_1__12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__12_n_4 ,\accumulator_reg[4]_i_1__12_n_5 ,\accumulator_reg[4]_i_1__12_n_6 ,\accumulator_reg[4]_i_1__12_n_7 }),
        .S({\accumulator[4]_i_2__12_n_0 ,\accumulator[4]_i_3__12_n_0 ,\accumulator[4]_i_4__12_n_0 ,\accumulator[4]_i_5__12_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__12_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__12_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__12_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_2 ),
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
module accumulator_cells_43
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    \x_reg[0]_1 ,
    \y_reg[0]_1 ,
    \y_reg[0]_2 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_2 ,
    DI,
    S,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]\x_reg[0]_1 ;
  output [0:0]\y_reg[0]_1 ;
  input \y_reg[0]_2 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_2 ;
  input [0:0]DI;
  input [0:0]S;
  input \accumulator_reg[3]_0 ;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input [0:0]\accumulator_reg[3]_3 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__20_n_0 ;
  wire \accumulator[0]_i_4__20_n_0 ;
  wire \accumulator[0]_i_5__20_n_0 ;
  wire \accumulator[4]_i_2__20_n_0 ;
  wire \accumulator[4]_i_3__20_n_0 ;
  wire \accumulator[4]_i_4__20_n_0 ;
  wire \accumulator[4]_i_5__20_n_0 ;
  wire \accumulator_reg[0]_i_1__20_n_0 ;
  wire \accumulator_reg[0]_i_1__20_n_1 ;
  wire \accumulator_reg[0]_i_1__20_n_2 ;
  wire \accumulator_reg[0]_i_1__20_n_3 ;
  wire \accumulator_reg[0]_i_1__20_n_4 ;
  wire \accumulator_reg[0]_i_1__20_n_5 ;
  wire \accumulator_reg[0]_i_1__20_n_6 ;
  wire \accumulator_reg[0]_i_1__20_n_7 ;
  wire \accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire [0:0]\accumulator_reg[3]_3 ;
  wire \accumulator_reg[4]_i_1__20_n_1 ;
  wire \accumulator_reg[4]_i_1__20_n_2 ;
  wire \accumulator_reg[4]_i_1__20_n_3 ;
  wire \accumulator_reg[4]_i_1__20_n_4 ;
  wire \accumulator_reg[4]_i_1__20_n_5 ;
  wire \accumulator_reg[4]_i_1__20_n_6 ;
  wire \accumulator_reg[4]_i_1__20_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire [0:0]\x_reg[0]_1 ;
  wire \x_reg[0]_2 ;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire \y_reg[0]_2 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__20_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__21 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_1 ),
        .I2(\accumulator_reg[3]_0 ),
        .O(\x_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__20 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__20 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__20 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__20_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__28 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_3 ),
        .I3(\accumulator_reg[3]_0 ),
        .O(\y_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__20 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__20 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__20 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__20 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__20_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__20_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__20 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__20_n_0 ,\accumulator_reg[0]_i_1__20_n_1 ,\accumulator_reg[0]_i_1__20_n_2 ,\accumulator_reg[0]_i_1__20_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__20_n_4 ,\accumulator_reg[0]_i_1__20_n_5 ,\accumulator_reg[0]_i_1__20_n_6 ,\accumulator_reg[0]_i_1__20_n_7 }),
        .S({\accumulator[0]_i_3__20_n_0 ,\accumulator[0]_i_4__20_n_0 ,\accumulator[0]_i_5__20_n_0 ,S}));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__20_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__20_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__20_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__20_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__20 
       (.CI(\accumulator_reg[0]_i_1__20_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__20_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__20_n_1 ,\accumulator_reg[4]_i_1__20_n_2 ,\accumulator_reg[4]_i_1__20_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__20_n_4 ,\accumulator_reg[4]_i_1__20_n_5 ,\accumulator_reg[4]_i_1__20_n_6 ,\accumulator_reg[4]_i_1__20_n_7 }),
        .S({\accumulator[4]_i_2__20_n_0 ,\accumulator[4]_i_3__20_n_0 ,\accumulator[4]_i_4__20_n_0 ,\accumulator[4]_i_5__20_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__20_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__20_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__20_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_2 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_2 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_44
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    \x_reg[0]_1 ,
    S,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_2 ,
    DI,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 ,
    \accumulator_reg[3]_5 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]\x_reg[0]_1 ;
  output [0:0]S;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_2 ;
  input [0:0]DI;
  input [0:0]\accumulator_reg[3]_0 ;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input [0:0]\accumulator_reg[3]_4 ;
  input \accumulator_reg[3]_5 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__28_n_0 ;
  wire \accumulator[0]_i_4__28_n_0 ;
  wire \accumulator[0]_i_5__28_n_0 ;
  wire \accumulator[4]_i_2__28_n_0 ;
  wire \accumulator[4]_i_3__28_n_0 ;
  wire \accumulator[4]_i_4__28_n_0 ;
  wire \accumulator[4]_i_5__28_n_0 ;
  wire \accumulator_reg[0]_i_1__28_n_0 ;
  wire \accumulator_reg[0]_i_1__28_n_1 ;
  wire \accumulator_reg[0]_i_1__28_n_2 ;
  wire \accumulator_reg[0]_i_1__28_n_3 ;
  wire \accumulator_reg[0]_i_1__28_n_4 ;
  wire \accumulator_reg[0]_i_1__28_n_5 ;
  wire \accumulator_reg[0]_i_1__28_n_6 ;
  wire \accumulator_reg[0]_i_1__28_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire [0:0]\accumulator_reg[3]_4 ;
  wire \accumulator_reg[3]_5 ;
  wire \accumulator_reg[4]_i_1__28_n_1 ;
  wire \accumulator_reg[4]_i_1__28_n_2 ;
  wire \accumulator_reg[4]_i_1__28_n_3 ;
  wire \accumulator_reg[4]_i_1__28_n_4 ;
  wire \accumulator_reg[4]_i_1__28_n_5 ;
  wire \accumulator_reg[4]_i_1__28_n_6 ;
  wire \accumulator_reg[4]_i_1__28_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire [0:0]\x_reg[0]_1 ;
  wire \x_reg[0]_2 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__28_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__29 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_1 ),
        .O(\x_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__28 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__28_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__28 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__28_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__28 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__28_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__36 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_3 ),
        .I2(\accumulator_reg[3]_4 ),
        .I3(\accumulator_reg[3]_5 ),
        .O(S));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__28 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__28_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__28 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__28_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__28 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__28_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__28 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__28_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__28_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__28 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__28_n_0 ,\accumulator_reg[0]_i_1__28_n_1 ,\accumulator_reg[0]_i_1__28_n_2 ,\accumulator_reg[0]_i_1__28_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__28_n_4 ,\accumulator_reg[0]_i_1__28_n_5 ,\accumulator_reg[0]_i_1__28_n_6 ,\accumulator_reg[0]_i_1__28_n_7 }),
        .S({\accumulator[0]_i_3__28_n_0 ,\accumulator[0]_i_4__28_n_0 ,\accumulator[0]_i_5__28_n_0 ,\accumulator_reg[3]_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__28_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__28_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__28_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__28_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__28 
       (.CI(\accumulator_reg[0]_i_1__28_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__28_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__28_n_1 ,\accumulator_reg[4]_i_1__28_n_2 ,\accumulator_reg[4]_i_1__28_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__28_n_4 ,\accumulator_reg[4]_i_1__28_n_5 ,\accumulator_reg[4]_i_1__28_n_6 ,\accumulator_reg[4]_i_1__28_n_7 }),
        .S({\accumulator[4]_i_2__28_n_0 ,\accumulator[4]_i_3__28_n_0 ,\accumulator[4]_i_4__28_n_0 ,\accumulator[4]_i_5__28_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__28_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__28_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__28_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_2 ),
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
    D,
    \x_reg[0]_1 ,
    \y_reg[0]_1 ,
    \y_reg[0]_2 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_2 ,
    DI,
    S,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]\x_reg[0]_1 ;
  output [0:0]\y_reg[0]_1 ;
  input \y_reg[0]_2 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_2 ;
  input [0:0]DI;
  input [0:0]S;
  input \accumulator_reg[3]_0 ;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input [0:0]\accumulator_reg[3]_3 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__36_n_0 ;
  wire \accumulator[0]_i_4__36_n_0 ;
  wire \accumulator[0]_i_5__36_n_0 ;
  wire \accumulator[4]_i_2__36_n_0 ;
  wire \accumulator[4]_i_3__36_n_0 ;
  wire \accumulator[4]_i_4__36_n_0 ;
  wire \accumulator[4]_i_5__36_n_0 ;
  wire \accumulator_reg[0]_i_1__36_n_0 ;
  wire \accumulator_reg[0]_i_1__36_n_1 ;
  wire \accumulator_reg[0]_i_1__36_n_2 ;
  wire \accumulator_reg[0]_i_1__36_n_3 ;
  wire \accumulator_reg[0]_i_1__36_n_4 ;
  wire \accumulator_reg[0]_i_1__36_n_5 ;
  wire \accumulator_reg[0]_i_1__36_n_6 ;
  wire \accumulator_reg[0]_i_1__36_n_7 ;
  wire \accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire [0:0]\accumulator_reg[3]_3 ;
  wire \accumulator_reg[4]_i_1__36_n_1 ;
  wire \accumulator_reg[4]_i_1__36_n_2 ;
  wire \accumulator_reg[4]_i_1__36_n_3 ;
  wire \accumulator_reg[4]_i_1__36_n_4 ;
  wire \accumulator_reg[4]_i_1__36_n_5 ;
  wire \accumulator_reg[4]_i_1__36_n_6 ;
  wire \accumulator_reg[4]_i_1__36_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire [0:0]\x_reg[0]_1 ;
  wire \x_reg[0]_2 ;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire \y_reg[0]_2 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__36_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__37 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_1 ),
        .I2(\accumulator_reg[3]_0 ),
        .O(\x_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__36 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__36_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__36 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__36_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__36 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__36_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__44 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_3 ),
        .I3(\accumulator_reg[3]_0 ),
        .O(\y_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__36 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__36_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__36 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__36_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__36 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__36_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__36 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__36_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__36_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__36 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__36_n_0 ,\accumulator_reg[0]_i_1__36_n_1 ,\accumulator_reg[0]_i_1__36_n_2 ,\accumulator_reg[0]_i_1__36_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__36_n_4 ,\accumulator_reg[0]_i_1__36_n_5 ,\accumulator_reg[0]_i_1__36_n_6 ,\accumulator_reg[0]_i_1__36_n_7 }),
        .S({\accumulator[0]_i_3__36_n_0 ,\accumulator[0]_i_4__36_n_0 ,\accumulator[0]_i_5__36_n_0 ,S}));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__36_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__36_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__36_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__36_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__36 
       (.CI(\accumulator_reg[0]_i_1__36_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__36_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__36_n_1 ,\accumulator_reg[4]_i_1__36_n_2 ,\accumulator_reg[4]_i_1__36_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__36_n_4 ,\accumulator_reg[4]_i_1__36_n_5 ,\accumulator_reg[4]_i_1__36_n_6 ,\accumulator_reg[4]_i_1__36_n_7 }),
        .S({\accumulator[4]_i_2__36_n_0 ,\accumulator[4]_i_3__36_n_0 ,\accumulator[4]_i_4__36_n_0 ,\accumulator[4]_i_5__36_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__36_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__36_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__36_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_2 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_2 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_46
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    \x_reg[0]_1 ,
    S,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_2 ,
    DI,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 ,
    ena_mac);
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]\x_reg[0]_1 ;
  output [0:0]S;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_2 ;
  input [0:0]DI;
  input [0:0]\accumulator_reg[3]_0 ;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input [0:0]\accumulator_reg[3]_4 ;
  input ena_mac;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__44_n_0 ;
  wire \accumulator[0]_i_4__44_n_0 ;
  wire \accumulator[0]_i_5__44_n_0 ;
  wire \accumulator[4]_i_2__44_n_0 ;
  wire \accumulator[4]_i_3__44_n_0 ;
  wire \accumulator[4]_i_4__44_n_0 ;
  wire \accumulator[4]_i_5__44_n_0 ;
  wire \accumulator_reg[0]_i_1__44_n_0 ;
  wire \accumulator_reg[0]_i_1__44_n_1 ;
  wire \accumulator_reg[0]_i_1__44_n_2 ;
  wire \accumulator_reg[0]_i_1__44_n_3 ;
  wire \accumulator_reg[0]_i_1__44_n_4 ;
  wire \accumulator_reg[0]_i_1__44_n_5 ;
  wire \accumulator_reg[0]_i_1__44_n_6 ;
  wire \accumulator_reg[0]_i_1__44_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire [0:0]\accumulator_reg[3]_4 ;
  wire \accumulator_reg[4]_i_1__44_n_1 ;
  wire \accumulator_reg[4]_i_1__44_n_2 ;
  wire \accumulator_reg[4]_i_1__44_n_3 ;
  wire \accumulator_reg[4]_i_1__44_n_4 ;
  wire \accumulator_reg[4]_i_1__44_n_5 ;
  wire \accumulator_reg[4]_i_1__44_n_6 ;
  wire \accumulator_reg[4]_i_1__44_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire \x_reg[0]_0 ;
  wire [0:0]\x_reg[0]_1 ;
  wire \x_reg[0]_2 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__44_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__45 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_1 ),
        .O(\x_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__44 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__44_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__44 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__44_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__44 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__44_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__52 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_3 ),
        .I2(\accumulator_reg[3]_4 ),
        .I3(ena_mac),
        .O(S));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__44 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__44_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__44 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__44_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__44 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__44_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__44 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__44_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__44_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__44 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__44_n_0 ,\accumulator_reg[0]_i_1__44_n_1 ,\accumulator_reg[0]_i_1__44_n_2 ,\accumulator_reg[0]_i_1__44_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__44_n_4 ,\accumulator_reg[0]_i_1__44_n_5 ,\accumulator_reg[0]_i_1__44_n_6 ,\accumulator_reg[0]_i_1__44_n_7 }),
        .S({\accumulator[0]_i_3__44_n_0 ,\accumulator[0]_i_4__44_n_0 ,\accumulator[0]_i_5__44_n_0 ,\accumulator_reg[3]_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__44_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__44_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__44_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__44_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__44 
       (.CI(\accumulator_reg[0]_i_1__44_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__44_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__44_n_1 ,\accumulator_reg[4]_i_1__44_n_2 ,\accumulator_reg[4]_i_1__44_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__44_n_4 ,\accumulator_reg[4]_i_1__44_n_5 ,\accumulator_reg[4]_i_1__44_n_6 ,\accumulator_reg[4]_i_1__44_n_7 }),
        .S({\accumulator[4]_i_2__44_n_0 ,\accumulator[4]_i_3__44_n_0 ,\accumulator[4]_i_4__44_n_0 ,\accumulator[4]_i_5__44_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__44_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__44_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__44_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_2 ),
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
    D,
    \x_reg[0]_1 ,
    \y_reg[0]_1 ,
    \y_reg[0]_2 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_2 ,
    DI,
    S,
    ena_mac,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]\x_reg[0]_1 ;
  output [0:0]\y_reg[0]_1 ;
  input \y_reg[0]_2 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_2 ;
  input [0:0]DI;
  input [0:0]S;
  input ena_mac;
  input \accumulator_reg[3]_0 ;
  input \accumulator_reg[3]_1 ;
  input [0:0]\accumulator_reg[3]_2 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__52_n_0 ;
  wire \accumulator[0]_i_4__52_n_0 ;
  wire \accumulator[0]_i_5__52_n_0 ;
  wire \accumulator[4]_i_2__52_n_0 ;
  wire \accumulator[4]_i_3__52_n_0 ;
  wire \accumulator[4]_i_4__52_n_0 ;
  wire \accumulator[4]_i_5__52_n_0 ;
  wire \accumulator_reg[0]_i_1__52_n_0 ;
  wire \accumulator_reg[0]_i_1__52_n_1 ;
  wire \accumulator_reg[0]_i_1__52_n_2 ;
  wire \accumulator_reg[0]_i_1__52_n_3 ;
  wire \accumulator_reg[0]_i_1__52_n_4 ;
  wire \accumulator_reg[0]_i_1__52_n_5 ;
  wire \accumulator_reg[0]_i_1__52_n_6 ;
  wire \accumulator_reg[0]_i_1__52_n_7 ;
  wire \accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire [0:0]\accumulator_reg[3]_2 ;
  wire \accumulator_reg[4]_i_1__52_n_1 ;
  wire \accumulator_reg[4]_i_1__52_n_2 ;
  wire \accumulator_reg[4]_i_1__52_n_3 ;
  wire \accumulator_reg[4]_i_1__52_n_4 ;
  wire \accumulator_reg[4]_i_1__52_n_5 ;
  wire \accumulator_reg[4]_i_1__52_n_6 ;
  wire \accumulator_reg[4]_i_1__52_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire \x_reg[0]_0 ;
  wire [0:0]\x_reg[0]_1 ;
  wire \x_reg[0]_2 ;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire \y_reg[0]_2 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__52_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__53 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_0 ),
        .I2(ena_mac),
        .O(\x_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__52 
       (.I0(ena_mac),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__52_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__52 
       (.I0(ena_mac),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__52_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__52 
       (.I0(ena_mac),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__52_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__60 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_1 ),
        .I2(\accumulator_reg[3]_2 ),
        .I3(ena_mac),
        .O(\y_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__52 
       (.I0(ena_mac),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__52_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__52 
       (.I0(ena_mac),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__52_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__52 
       (.I0(ena_mac),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__52_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__52 
       (.I0(ena_mac),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__52_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__52_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__52 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__52_n_0 ,\accumulator_reg[0]_i_1__52_n_1 ,\accumulator_reg[0]_i_1__52_n_2 ,\accumulator_reg[0]_i_1__52_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__52_n_4 ,\accumulator_reg[0]_i_1__52_n_5 ,\accumulator_reg[0]_i_1__52_n_6 ,\accumulator_reg[0]_i_1__52_n_7 }),
        .S({\accumulator[0]_i_3__52_n_0 ,\accumulator[0]_i_4__52_n_0 ,\accumulator[0]_i_5__52_n_0 ,S}));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__52_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__52_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__52_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__52_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__52 
       (.CI(\accumulator_reg[0]_i_1__52_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__52_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__52_n_1 ,\accumulator_reg[4]_i_1__52_n_2 ,\accumulator_reg[4]_i_1__52_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__52_n_4 ,\accumulator_reg[4]_i_1__52_n_5 ,\accumulator_reg[4]_i_1__52_n_6 ,\accumulator_reg[4]_i_1__52_n_7 }),
        .S({\accumulator[4]_i_2__52_n_0 ,\accumulator[4]_i_3__52_n_0 ,\accumulator[4]_i_4__52_n_0 ,\accumulator[4]_i_5__52_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__52_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__52_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__52_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_2 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_2 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_48
   (\x_reg[0]_0 ,
    D,
    \x_reg[0]_1 ,
    \x_reg[0]_2 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    DI,
    \accumulator_reg[3]_0 ,
    ena_mac,
    \accumulator_reg[3]_1 );
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]\x_reg[0]_1 ;
  input \x_reg[0]_2 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [0:0]DI;
  input [0:0]\accumulator_reg[3]_0 ;
  input ena_mac;
  input \accumulator_reg[3]_1 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire \accumulator[0]_i_3__60_n_0 ;
  wire \accumulator[0]_i_4__60_n_0 ;
  wire \accumulator[0]_i_5__60_n_0 ;
  wire \accumulator[4]_i_2__60_n_0 ;
  wire \accumulator[4]_i_3__60_n_0 ;
  wire \accumulator[4]_i_4__60_n_0 ;
  wire \accumulator[4]_i_5__60_n_0 ;
  wire \accumulator_reg[0]_i_1__60_n_0 ;
  wire \accumulator_reg[0]_i_1__60_n_1 ;
  wire \accumulator_reg[0]_i_1__60_n_2 ;
  wire \accumulator_reg[0]_i_1__60_n_3 ;
  wire \accumulator_reg[0]_i_1__60_n_4 ;
  wire \accumulator_reg[0]_i_1__60_n_5 ;
  wire \accumulator_reg[0]_i_1__60_n_6 ;
  wire \accumulator_reg[0]_i_1__60_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[4]_i_1__60_n_1 ;
  wire \accumulator_reg[4]_i_1__60_n_2 ;
  wire \accumulator_reg[4]_i_1__60_n_3 ;
  wire \accumulator_reg[4]_i_1__60_n_4 ;
  wire \accumulator_reg[4]_i_1__60_n_5 ;
  wire \accumulator_reg[4]_i_1__60_n_6 ;
  wire \accumulator_reg[4]_i_1__60_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire \x_reg[0]_0 ;
  wire [0:0]\x_reg[0]_1 ;
  wire \x_reg[0]_2 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__60_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__61 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_1 ),
        .I2(ena_mac),
        .O(\x_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__60 
       (.I0(ena_mac),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__60_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__60 
       (.I0(ena_mac),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__60_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__60 
       (.I0(ena_mac),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__60_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__60 
       (.I0(ena_mac),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__60_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__60 
       (.I0(ena_mac),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__60_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__60 
       (.I0(ena_mac),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__60_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__60 
       (.I0(ena_mac),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__60_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__60_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__60 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__60_n_0 ,\accumulator_reg[0]_i_1__60_n_1 ,\accumulator_reg[0]_i_1__60_n_2 ,\accumulator_reg[0]_i_1__60_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__60_n_4 ,\accumulator_reg[0]_i_1__60_n_5 ,\accumulator_reg[0]_i_1__60_n_6 ,\accumulator_reg[0]_i_1__60_n_7 }),
        .S({\accumulator[0]_i_3__60_n_0 ,\accumulator[0]_i_4__60_n_0 ,\accumulator[0]_i_5__60_n_0 ,\accumulator_reg[3]_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__60_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__60_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__60_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__60_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__60 
       (.CI(\accumulator_reg[0]_i_1__60_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__60_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__60_n_1 ,\accumulator_reg[4]_i_1__60_n_2 ,\accumulator_reg[4]_i_1__60_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__60_n_4 ,\accumulator_reg[4]_i_1__60_n_5 ,\accumulator_reg[4]_i_1__60_n_6 ,\accumulator_reg[4]_i_1__60_n_7 }),
        .S({\accumulator[4]_i_2__60_n_0 ,\accumulator[4]_i_3__60_n_0 ,\accumulator[4]_i_4__60_n_0 ,\accumulator[4]_i_5__60_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__60_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__60_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__60_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_2 ),
        .Q(\x_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_49
   (\y_reg[0]_0 ,
    D,
    DI,
    S,
    \y_reg[0]_1 ,
    Q,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_0 ,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 ,
    \accumulator_reg[3]_5 );
  output \y_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  output [0:0]S;
  output [0:0]\y_reg[0]_1 ;
  input [1:0]Q;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_0 ;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]\accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input [0:0]\accumulator_reg[3]_3 ;
  input \accumulator_reg[3]_4 ;
  input [0:0]\accumulator_reg[3]_5 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [1:0]Q;
  wire [0:0]S;
  wire \accumulator[0]_i_3__5_n_0 ;
  wire \accumulator[0]_i_4__5_n_0 ;
  wire \accumulator[0]_i_5__5_n_0 ;
  wire \accumulator[4]_i_2__5_n_0 ;
  wire \accumulator[4]_i_3__5_n_0 ;
  wire \accumulator[4]_i_4__5_n_0 ;
  wire \accumulator[4]_i_5__5_n_0 ;
  wire \accumulator_reg[0]_i_1__5_n_0 ;
  wire \accumulator_reg[0]_i_1__5_n_1 ;
  wire \accumulator_reg[0]_i_1__5_n_2 ;
  wire \accumulator_reg[0]_i_1__5_n_3 ;
  wire \accumulator_reg[0]_i_1__5_n_4 ;
  wire \accumulator_reg[0]_i_1__5_n_5 ;
  wire \accumulator_reg[0]_i_1__5_n_6 ;
  wire \accumulator_reg[0]_i_1__5_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire [0:0]\accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire [0:0]\accumulator_reg[3]_3 ;
  wire \accumulator_reg[3]_4 ;
  wire [0:0]\accumulator_reg[3]_5 ;
  wire \accumulator_reg[4]_i_1__5_n_1 ;
  wire \accumulator_reg[4]_i_1__5_n_2 ;
  wire \accumulator_reg[4]_i_1__5_n_3 ;
  wire \accumulator_reg[4]_i_1__5_n_4 ;
  wire \accumulator_reg[4]_i_1__5_n_5 ;
  wire \accumulator_reg[4]_i_1__5_n_6 ;
  wire \accumulator_reg[4]_i_1__5_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire \x_reg_n_0_[0] ;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__5_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__6 
       (.I0(\x_reg_n_0_[0] ),
        .I1(Q[1]),
        .I2(\accumulator_reg[3]_2 ),
        .O(DI));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__5 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__5 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__5 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__5_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__13 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_4 ),
        .I2(\accumulator_reg[3]_5 ),
        .I3(\accumulator_reg[3]_2 ),
        .O(\y_reg[0]_1 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__6 
       (.I0(Q[1]),
        .I1(\x_reg_n_0_[0] ),
        .I2(\accumulator_reg[3]_3 ),
        .I3(\accumulator_reg[3]_2 ),
        .O(S));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__5 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__5 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__5 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__5 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__5_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__5 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__5_n_0 ,\accumulator_reg[0]_i_1__5_n_1 ,\accumulator_reg[0]_i_1__5_n_2 ,\accumulator_reg[0]_i_1__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__5_n_4 ,\accumulator_reg[0]_i_1__5_n_5 ,\accumulator_reg[0]_i_1__5_n_6 ,\accumulator_reg[0]_i_1__5_n_7 }),
        .S({\accumulator[0]_i_3__5_n_0 ,\accumulator[0]_i_4__5_n_0 ,\accumulator[0]_i_5__5_n_0 ,\accumulator_reg[3]_1 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__5_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__5_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__5_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__5_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__5 
       (.CI(\accumulator_reg[0]_i_1__5_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__5_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__5_n_1 ,\accumulator_reg[4]_i_1__5_n_2 ,\accumulator_reg[4]_i_1__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__5_n_4 ,\accumulator_reg[4]_i_1__5_n_5 ,\accumulator_reg[4]_i_1__5_n_6 ,\accumulator_reg[4]_i_1__5_n_7 }),
        .S({\accumulator[4]_i_2__5_n_0 ,\accumulator[4]_i_3__5_n_0 ,\accumulator[4]_i_4__5_n_0 ,\accumulator[4]_i_5__5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__5_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__5_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__5_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_0 ),
        .Q(\x_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(Q[0]),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_5
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    DI,
    \a_load_reg[5] ,
    \y_reg[0]_1 ,
    \y_reg[0]_2 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    Q,
    \accumulator_reg[3]_0 ,
    S,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  output [0:0]\a_load_reg[5] ;
  output [0:0]\y_reg[0]_1 ;
  input \y_reg[0]_2 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [1:0]Q;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]S;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input [0:0]\accumulator_reg[3]_4 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [1:0]Q;
  wire [0:0]S;
  wire [0:0]\a_load_reg[5] ;
  wire \accumulator[0]_i_3__31_n_0 ;
  wire \accumulator[0]_i_4__31_n_0 ;
  wire \accumulator[0]_i_5__31_n_0 ;
  wire \accumulator[4]_i_2__31_n_0 ;
  wire \accumulator[4]_i_3__31_n_0 ;
  wire \accumulator[4]_i_4__31_n_0 ;
  wire \accumulator[4]_i_5__31_n_0 ;
  wire \accumulator_reg[0]_i_1__31_n_0 ;
  wire \accumulator_reg[0]_i_1__31_n_1 ;
  wire \accumulator_reg[0]_i_1__31_n_2 ;
  wire \accumulator_reg[0]_i_1__31_n_3 ;
  wire \accumulator_reg[0]_i_1__31_n_4 ;
  wire \accumulator_reg[0]_i_1__31_n_5 ;
  wire \accumulator_reg[0]_i_1__31_n_6 ;
  wire \accumulator_reg[0]_i_1__31_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire [0:0]\accumulator_reg[3]_4 ;
  wire \accumulator_reg[4]_i_1__31_n_1 ;
  wire \accumulator_reg[4]_i_1__31_n_2 ;
  wire \accumulator_reg[4]_i_1__31_n_3 ;
  wire \accumulator_reg[4]_i_1__31_n_4 ;
  wire \accumulator_reg[4]_i_1__31_n_5 ;
  wire \accumulator_reg[4]_i_1__31_n_6 ;
  wire \accumulator_reg[4]_i_1__31_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire \y_reg[0]_2 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__31_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__32 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_1 ),
        .O(DI));
  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__39 
       (.I0(Q[1]),
        .I1(\y_reg[0]_0 ),
        .I2(\accumulator_reg[3]_3 ),
        .O(\a_load_reg[5] ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__31 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__31_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__31 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__31_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__31 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__31_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__39 
       (.I0(\y_reg[0]_0 ),
        .I1(Q[1]),
        .I2(\accumulator_reg[3]_4 ),
        .I3(\accumulator_reg[3]_3 ),
        .O(\y_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__31 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__31_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__31 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__31_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__31 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__31_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__31 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__31_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__31_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__31 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__31_n_0 ,\accumulator_reg[0]_i_1__31_n_1 ,\accumulator_reg[0]_i_1__31_n_2 ,\accumulator_reg[0]_i_1__31_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__31_n_4 ,\accumulator_reg[0]_i_1__31_n_5 ,\accumulator_reg[0]_i_1__31_n_6 ,\accumulator_reg[0]_i_1__31_n_7 }),
        .S({\accumulator[0]_i_3__31_n_0 ,\accumulator[0]_i_4__31_n_0 ,\accumulator[0]_i_5__31_n_0 ,S}));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__31_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__31_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__31_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__31_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__31 
       (.CI(\accumulator_reg[0]_i_1__31_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__31_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__31_n_1 ,\accumulator_reg[4]_i_1__31_n_2 ,\accumulator_reg[4]_i_1__31_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__31_n_4 ,\accumulator_reg[4]_i_1__31_n_5 ,\accumulator_reg[4]_i_1__31_n_6 ,\accumulator_reg[4]_i_1__31_n_7 }),
        .S({\accumulator[4]_i_2__31_n_0 ,\accumulator[4]_i_3__31_n_0 ,\accumulator[4]_i_4__31_n_0 ,\accumulator[4]_i_5__31_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__31_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__31_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__31_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(Q[0]),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_2 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_50
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    DI,
    S,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 ,
    \accumulator_reg[3]_5 ,
    \accumulator_reg[3]_6 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  output [0:0]S;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]\accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input \accumulator_reg[3]_4 ;
  input [0:0]\accumulator_reg[3]_5 ;
  input \accumulator_reg[3]_6 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__13_n_0 ;
  wire \accumulator[0]_i_4__13_n_0 ;
  wire \accumulator[0]_i_5__13_n_0 ;
  wire \accumulator[4]_i_2__13_n_0 ;
  wire \accumulator[4]_i_3__13_n_0 ;
  wire \accumulator[4]_i_4__13_n_0 ;
  wire \accumulator[4]_i_5__13_n_0 ;
  wire \accumulator_reg[0]_i_1__13_n_0 ;
  wire \accumulator_reg[0]_i_1__13_n_1 ;
  wire \accumulator_reg[0]_i_1__13_n_2 ;
  wire \accumulator_reg[0]_i_1__13_n_3 ;
  wire \accumulator_reg[0]_i_1__13_n_4 ;
  wire \accumulator_reg[0]_i_1__13_n_5 ;
  wire \accumulator_reg[0]_i_1__13_n_6 ;
  wire \accumulator_reg[0]_i_1__13_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire [0:0]\accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire \accumulator_reg[3]_4 ;
  wire [0:0]\accumulator_reg[3]_5 ;
  wire \accumulator_reg[3]_6 ;
  wire \accumulator_reg[4]_i_1__13_n_1 ;
  wire \accumulator_reg[4]_i_1__13_n_2 ;
  wire \accumulator_reg[4]_i_1__13_n_3 ;
  wire \accumulator_reg[4]_i_1__13_n_4 ;
  wire \accumulator_reg[4]_i_1__13_n_5 ;
  wire \accumulator_reg[4]_i_1__13_n_6 ;
  wire \accumulator_reg[4]_i_1__13_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__13_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__14 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_3 ),
        .I2(\accumulator_reg[3]_2 ),
        .O(DI));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__13 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__13 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__13 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__13_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__21 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_4 ),
        .I2(\accumulator_reg[3]_5 ),
        .I3(\accumulator_reg[3]_6 ),
        .O(S));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__13 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__13 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__13 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__13 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__13_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__13_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__13 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__13_n_0 ,\accumulator_reg[0]_i_1__13_n_1 ,\accumulator_reg[0]_i_1__13_n_2 ,\accumulator_reg[0]_i_1__13_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__13_n_4 ,\accumulator_reg[0]_i_1__13_n_5 ,\accumulator_reg[0]_i_1__13_n_6 ,\accumulator_reg[0]_i_1__13_n_7 }),
        .S({\accumulator[0]_i_3__13_n_0 ,\accumulator[0]_i_4__13_n_0 ,\accumulator[0]_i_5__13_n_0 ,\accumulator_reg[3]_1 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__13_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__13_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__13_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__13_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__13 
       (.CI(\accumulator_reg[0]_i_1__13_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__13_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__13_n_1 ,\accumulator_reg[4]_i_1__13_n_2 ,\accumulator_reg[4]_i_1__13_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__13_n_4 ,\accumulator_reg[4]_i_1__13_n_5 ,\accumulator_reg[4]_i_1__13_n_6 ,\accumulator_reg[4]_i_1__13_n_7 }),
        .S({\accumulator[4]_i_2__13_n_0 ,\accumulator[4]_i_3__13_n_0 ,\accumulator[4]_i_4__13_n_0 ,\accumulator[4]_i_5__13_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__13_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__13_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__13_n_4 ),
        .Q(D[7]));
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
module accumulator_cells_51
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    DI,
    \y_reg[0]_1 ,
    \y_reg[0]_2 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[3]_0 ,
    S,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  output [0:0]\y_reg[0]_1 ;
  input \y_reg[0]_2 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]S;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input [0:0]\accumulator_reg[3]_4 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__21_n_0 ;
  wire \accumulator[0]_i_4__21_n_0 ;
  wire \accumulator[0]_i_5__21_n_0 ;
  wire \accumulator[4]_i_2__21_n_0 ;
  wire \accumulator[4]_i_3__21_n_0 ;
  wire \accumulator[4]_i_4__21_n_0 ;
  wire \accumulator[4]_i_5__21_n_0 ;
  wire \accumulator_reg[0]_i_1__21_n_0 ;
  wire \accumulator_reg[0]_i_1__21_n_1 ;
  wire \accumulator_reg[0]_i_1__21_n_2 ;
  wire \accumulator_reg[0]_i_1__21_n_3 ;
  wire \accumulator_reg[0]_i_1__21_n_4 ;
  wire \accumulator_reg[0]_i_1__21_n_5 ;
  wire \accumulator_reg[0]_i_1__21_n_6 ;
  wire \accumulator_reg[0]_i_1__21_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire [0:0]\accumulator_reg[3]_4 ;
  wire \accumulator_reg[4]_i_1__21_n_1 ;
  wire \accumulator_reg[4]_i_1__21_n_2 ;
  wire \accumulator_reg[4]_i_1__21_n_3 ;
  wire \accumulator_reg[4]_i_1__21_n_4 ;
  wire \accumulator_reg[4]_i_1__21_n_5 ;
  wire \accumulator_reg[4]_i_1__21_n_6 ;
  wire \accumulator_reg[4]_i_1__21_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire \y_reg[0]_2 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__21_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__22 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_1 ),
        .O(DI));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__21 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__21_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__21 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__21_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__21 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__21_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__29 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_3 ),
        .I2(\accumulator_reg[3]_4 ),
        .I3(\accumulator_reg[3]_1 ),
        .O(\y_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__21 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__21_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__21 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__21_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__21 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__21_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__21 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__21_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__21_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__21 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__21_n_0 ,\accumulator_reg[0]_i_1__21_n_1 ,\accumulator_reg[0]_i_1__21_n_2 ,\accumulator_reg[0]_i_1__21_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__21_n_4 ,\accumulator_reg[0]_i_1__21_n_5 ,\accumulator_reg[0]_i_1__21_n_6 ,\accumulator_reg[0]_i_1__21_n_7 }),
        .S({\accumulator[0]_i_3__21_n_0 ,\accumulator[0]_i_4__21_n_0 ,\accumulator[0]_i_5__21_n_0 ,S}));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__21_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__21_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__21_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__21_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__21 
       (.CI(\accumulator_reg[0]_i_1__21_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__21_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__21_n_1 ,\accumulator_reg[4]_i_1__21_n_2 ,\accumulator_reg[4]_i_1__21_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__21_n_4 ,\accumulator_reg[4]_i_1__21_n_5 ,\accumulator_reg[4]_i_1__21_n_6 ,\accumulator_reg[4]_i_1__21_n_7 }),
        .S({\accumulator[4]_i_2__21_n_0 ,\accumulator[4]_i_3__21_n_0 ,\accumulator[4]_i_4__21_n_0 ,\accumulator[4]_i_5__21_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__21_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__21_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__21_n_4 ),
        .Q(D[7]));
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
        .D(\y_reg[0]_2 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_52
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    DI,
    S,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 ,
    \accumulator_reg[3]_5 ,
    \accumulator_reg[3]_6 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  output [0:0]S;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]\accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input \accumulator_reg[3]_4 ;
  input [0:0]\accumulator_reg[3]_5 ;
  input \accumulator_reg[3]_6 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__29_n_0 ;
  wire \accumulator[0]_i_4__29_n_0 ;
  wire \accumulator[0]_i_5__29_n_0 ;
  wire \accumulator[4]_i_2__29_n_0 ;
  wire \accumulator[4]_i_3__29_n_0 ;
  wire \accumulator[4]_i_4__29_n_0 ;
  wire \accumulator[4]_i_5__29_n_0 ;
  wire \accumulator_reg[0]_i_1__29_n_0 ;
  wire \accumulator_reg[0]_i_1__29_n_1 ;
  wire \accumulator_reg[0]_i_1__29_n_2 ;
  wire \accumulator_reg[0]_i_1__29_n_3 ;
  wire \accumulator_reg[0]_i_1__29_n_4 ;
  wire \accumulator_reg[0]_i_1__29_n_5 ;
  wire \accumulator_reg[0]_i_1__29_n_6 ;
  wire \accumulator_reg[0]_i_1__29_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire [0:0]\accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire \accumulator_reg[3]_4 ;
  wire [0:0]\accumulator_reg[3]_5 ;
  wire \accumulator_reg[3]_6 ;
  wire \accumulator_reg[4]_i_1__29_n_1 ;
  wire \accumulator_reg[4]_i_1__29_n_2 ;
  wire \accumulator_reg[4]_i_1__29_n_3 ;
  wire \accumulator_reg[4]_i_1__29_n_4 ;
  wire \accumulator_reg[4]_i_1__29_n_5 ;
  wire \accumulator_reg[4]_i_1__29_n_6 ;
  wire \accumulator_reg[4]_i_1__29_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__29_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__30 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_3 ),
        .I2(\accumulator_reg[3]_2 ),
        .O(DI));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__29 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__29_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__29 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__29_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__29 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__29_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__37 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_4 ),
        .I2(\accumulator_reg[3]_5 ),
        .I3(\accumulator_reg[3]_6 ),
        .O(S));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__29 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__29_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__29 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__29_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__29 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__29_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__29 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__29_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__29_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__29 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__29_n_0 ,\accumulator_reg[0]_i_1__29_n_1 ,\accumulator_reg[0]_i_1__29_n_2 ,\accumulator_reg[0]_i_1__29_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__29_n_4 ,\accumulator_reg[0]_i_1__29_n_5 ,\accumulator_reg[0]_i_1__29_n_6 ,\accumulator_reg[0]_i_1__29_n_7 }),
        .S({\accumulator[0]_i_3__29_n_0 ,\accumulator[0]_i_4__29_n_0 ,\accumulator[0]_i_5__29_n_0 ,\accumulator_reg[3]_1 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__29_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__29_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__29_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__29_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__29 
       (.CI(\accumulator_reg[0]_i_1__29_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__29_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__29_n_1 ,\accumulator_reg[4]_i_1__29_n_2 ,\accumulator_reg[4]_i_1__29_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__29_n_4 ,\accumulator_reg[4]_i_1__29_n_5 ,\accumulator_reg[4]_i_1__29_n_6 ,\accumulator_reg[4]_i_1__29_n_7 }),
        .S({\accumulator[4]_i_2__29_n_0 ,\accumulator[4]_i_3__29_n_0 ,\accumulator[4]_i_4__29_n_0 ,\accumulator[4]_i_5__29_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__29_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__29_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__29_n_4 ),
        .Q(D[7]));
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
    D,
    DI,
    \y_reg[0]_1 ,
    \y_reg[0]_2 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[3]_0 ,
    S,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  output [0:0]\y_reg[0]_1 ;
  input \y_reg[0]_2 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]S;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input [0:0]\accumulator_reg[3]_4 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__37_n_0 ;
  wire \accumulator[0]_i_4__37_n_0 ;
  wire \accumulator[0]_i_5__37_n_0 ;
  wire \accumulator[4]_i_2__37_n_0 ;
  wire \accumulator[4]_i_3__37_n_0 ;
  wire \accumulator[4]_i_4__37_n_0 ;
  wire \accumulator[4]_i_5__37_n_0 ;
  wire \accumulator_reg[0]_i_1__37_n_0 ;
  wire \accumulator_reg[0]_i_1__37_n_1 ;
  wire \accumulator_reg[0]_i_1__37_n_2 ;
  wire \accumulator_reg[0]_i_1__37_n_3 ;
  wire \accumulator_reg[0]_i_1__37_n_4 ;
  wire \accumulator_reg[0]_i_1__37_n_5 ;
  wire \accumulator_reg[0]_i_1__37_n_6 ;
  wire \accumulator_reg[0]_i_1__37_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire [0:0]\accumulator_reg[3]_4 ;
  wire \accumulator_reg[4]_i_1__37_n_1 ;
  wire \accumulator_reg[4]_i_1__37_n_2 ;
  wire \accumulator_reg[4]_i_1__37_n_3 ;
  wire \accumulator_reg[4]_i_1__37_n_4 ;
  wire \accumulator_reg[4]_i_1__37_n_5 ;
  wire \accumulator_reg[4]_i_1__37_n_6 ;
  wire \accumulator_reg[4]_i_1__37_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire \y_reg[0]_2 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__37_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__38 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_1 ),
        .O(DI));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__37 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__37_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__37 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__37_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__37 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__37_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__45 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_3 ),
        .I2(\accumulator_reg[3]_4 ),
        .I3(\accumulator_reg[3]_1 ),
        .O(\y_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__37 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__37_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__37 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__37_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__37 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__37_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__37 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__37_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__37_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__37 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__37_n_0 ,\accumulator_reg[0]_i_1__37_n_1 ,\accumulator_reg[0]_i_1__37_n_2 ,\accumulator_reg[0]_i_1__37_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__37_n_4 ,\accumulator_reg[0]_i_1__37_n_5 ,\accumulator_reg[0]_i_1__37_n_6 ,\accumulator_reg[0]_i_1__37_n_7 }),
        .S({\accumulator[0]_i_3__37_n_0 ,\accumulator[0]_i_4__37_n_0 ,\accumulator[0]_i_5__37_n_0 ,S}));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__37_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__37_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__37_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__37_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__37 
       (.CI(\accumulator_reg[0]_i_1__37_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__37_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__37_n_1 ,\accumulator_reg[4]_i_1__37_n_2 ,\accumulator_reg[4]_i_1__37_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__37_n_4 ,\accumulator_reg[4]_i_1__37_n_5 ,\accumulator_reg[4]_i_1__37_n_6 ,\accumulator_reg[4]_i_1__37_n_7 }),
        .S({\accumulator[4]_i_2__37_n_0 ,\accumulator[4]_i_3__37_n_0 ,\accumulator[4]_i_4__37_n_0 ,\accumulator[4]_i_5__37_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__37_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__37_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__37_n_4 ),
        .Q(D[7]));
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
        .D(\y_reg[0]_2 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_54
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    DI,
    S,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 ,
    \accumulator_reg[3]_5 ,
    ena_mac);
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  output [0:0]S;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]\accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input \accumulator_reg[3]_4 ;
  input [0:0]\accumulator_reg[3]_5 ;
  input ena_mac;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__45_n_0 ;
  wire \accumulator[0]_i_4__45_n_0 ;
  wire \accumulator[0]_i_5__45_n_0 ;
  wire \accumulator[4]_i_2__45_n_0 ;
  wire \accumulator[4]_i_3__45_n_0 ;
  wire \accumulator[4]_i_4__45_n_0 ;
  wire \accumulator[4]_i_5__45_n_0 ;
  wire \accumulator_reg[0]_i_1__45_n_0 ;
  wire \accumulator_reg[0]_i_1__45_n_1 ;
  wire \accumulator_reg[0]_i_1__45_n_2 ;
  wire \accumulator_reg[0]_i_1__45_n_3 ;
  wire \accumulator_reg[0]_i_1__45_n_4 ;
  wire \accumulator_reg[0]_i_1__45_n_5 ;
  wire \accumulator_reg[0]_i_1__45_n_6 ;
  wire \accumulator_reg[0]_i_1__45_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire [0:0]\accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire \accumulator_reg[3]_4 ;
  wire [0:0]\accumulator_reg[3]_5 ;
  wire \accumulator_reg[4]_i_1__45_n_1 ;
  wire \accumulator_reg[4]_i_1__45_n_2 ;
  wire \accumulator_reg[4]_i_1__45_n_3 ;
  wire \accumulator_reg[4]_i_1__45_n_4 ;
  wire \accumulator_reg[4]_i_1__45_n_5 ;
  wire \accumulator_reg[4]_i_1__45_n_6 ;
  wire \accumulator_reg[4]_i_1__45_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__45_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__46 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_3 ),
        .I2(\accumulator_reg[3]_2 ),
        .O(DI));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__45 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__45_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__45 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__45_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__45 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__45_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__53 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_4 ),
        .I2(\accumulator_reg[3]_5 ),
        .I3(ena_mac),
        .O(S));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__45 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__45_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__45 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__45_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__45 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__45_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__45 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__45_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__45_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__45 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__45_n_0 ,\accumulator_reg[0]_i_1__45_n_1 ,\accumulator_reg[0]_i_1__45_n_2 ,\accumulator_reg[0]_i_1__45_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__45_n_4 ,\accumulator_reg[0]_i_1__45_n_5 ,\accumulator_reg[0]_i_1__45_n_6 ,\accumulator_reg[0]_i_1__45_n_7 }),
        .S({\accumulator[0]_i_3__45_n_0 ,\accumulator[0]_i_4__45_n_0 ,\accumulator[0]_i_5__45_n_0 ,\accumulator_reg[3]_1 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__45_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__45_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__45_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__45_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__45 
       (.CI(\accumulator_reg[0]_i_1__45_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__45_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__45_n_1 ,\accumulator_reg[4]_i_1__45_n_2 ,\accumulator_reg[4]_i_1__45_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__45_n_4 ,\accumulator_reg[4]_i_1__45_n_5 ,\accumulator_reg[4]_i_1__45_n_6 ,\accumulator_reg[4]_i_1__45_n_7 }),
        .S({\accumulator[4]_i_2__45_n_0 ,\accumulator[4]_i_3__45_n_0 ,\accumulator[4]_i_4__45_n_0 ,\accumulator[4]_i_5__45_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__45_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__45_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__45_n_4 ),
        .Q(D[7]));
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
    D,
    DI,
    \y_reg[0]_1 ,
    \y_reg[0]_2 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_1 ,
    \accumulator_reg[3]_0 ,
    S,
    ena_mac,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  output [0:0]\y_reg[0]_1 ;
  input \y_reg[0]_2 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_1 ;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]S;
  input ena_mac;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input [0:0]\accumulator_reg[3]_3 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__53_n_0 ;
  wire \accumulator[0]_i_4__53_n_0 ;
  wire \accumulator[0]_i_5__53_n_0 ;
  wire \accumulator[4]_i_2__53_n_0 ;
  wire \accumulator[4]_i_3__53_n_0 ;
  wire \accumulator[4]_i_4__53_n_0 ;
  wire \accumulator[4]_i_5__53_n_0 ;
  wire \accumulator_reg[0]_i_1__53_n_0 ;
  wire \accumulator_reg[0]_i_1__53_n_1 ;
  wire \accumulator_reg[0]_i_1__53_n_2 ;
  wire \accumulator_reg[0]_i_1__53_n_3 ;
  wire \accumulator_reg[0]_i_1__53_n_4 ;
  wire \accumulator_reg[0]_i_1__53_n_5 ;
  wire \accumulator_reg[0]_i_1__53_n_6 ;
  wire \accumulator_reg[0]_i_1__53_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire [0:0]\accumulator_reg[3]_3 ;
  wire \accumulator_reg[4]_i_1__53_n_1 ;
  wire \accumulator_reg[4]_i_1__53_n_2 ;
  wire \accumulator_reg[4]_i_1__53_n_3 ;
  wire \accumulator_reg[4]_i_1__53_n_4 ;
  wire \accumulator_reg[4]_i_1__53_n_5 ;
  wire \accumulator_reg[4]_i_1__53_n_6 ;
  wire \accumulator_reg[4]_i_1__53_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire \y_reg[0]_2 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__53_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__54 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_1 ),
        .I2(ena_mac),
        .O(DI));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__53 
       (.I0(ena_mac),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__53_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__53 
       (.I0(ena_mac),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__53_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__53 
       (.I0(ena_mac),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__53_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__61 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_3 ),
        .I3(ena_mac),
        .O(\y_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__53 
       (.I0(ena_mac),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__53_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__53 
       (.I0(ena_mac),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__53_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__53 
       (.I0(ena_mac),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__53_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__53 
       (.I0(ena_mac),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__53_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__53_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__53 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__53_n_0 ,\accumulator_reg[0]_i_1__53_n_1 ,\accumulator_reg[0]_i_1__53_n_2 ,\accumulator_reg[0]_i_1__53_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__53_n_4 ,\accumulator_reg[0]_i_1__53_n_5 ,\accumulator_reg[0]_i_1__53_n_6 ,\accumulator_reg[0]_i_1__53_n_7 }),
        .S({\accumulator[0]_i_3__53_n_0 ,\accumulator[0]_i_4__53_n_0 ,\accumulator[0]_i_5__53_n_0 ,S}));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__53_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__53_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__53_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__53_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__53 
       (.CI(\accumulator_reg[0]_i_1__53_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__53_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__53_n_1 ,\accumulator_reg[4]_i_1__53_n_2 ,\accumulator_reg[4]_i_1__53_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__53_n_4 ,\accumulator_reg[4]_i_1__53_n_5 ,\accumulator_reg[4]_i_1__53_n_6 ,\accumulator_reg[4]_i_1__53_n_7 }),
        .S({\accumulator[4]_i_2__53_n_0 ,\accumulator[4]_i_3__53_n_0 ,\accumulator[4]_i_4__53_n_0 ,\accumulator[4]_i_5__53_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__53_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__53_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__53_n_4 ),
        .Q(D[7]));
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
        .D(\y_reg[0]_2 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_56
   (\x_reg[0]_0 ,
    D,
    DI,
    \x_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    ena_mac,
    \accumulator_reg[3]_2 );
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  input \x_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]\accumulator_reg[3]_1 ;
  input ena_mac;
  input \accumulator_reg[3]_2 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire \accumulator[0]_i_3__61_n_0 ;
  wire \accumulator[0]_i_4__61_n_0 ;
  wire \accumulator[0]_i_5__61_n_0 ;
  wire \accumulator[4]_i_2__61_n_0 ;
  wire \accumulator[4]_i_3__61_n_0 ;
  wire \accumulator[4]_i_4__61_n_0 ;
  wire \accumulator[4]_i_5__61_n_0 ;
  wire \accumulator_reg[0]_i_1__61_n_0 ;
  wire \accumulator_reg[0]_i_1__61_n_1 ;
  wire \accumulator_reg[0]_i_1__61_n_2 ;
  wire \accumulator_reg[0]_i_1__61_n_3 ;
  wire \accumulator_reg[0]_i_1__61_n_4 ;
  wire \accumulator_reg[0]_i_1__61_n_5 ;
  wire \accumulator_reg[0]_i_1__61_n_6 ;
  wire \accumulator_reg[0]_i_1__61_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire [0:0]\accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[4]_i_1__61_n_1 ;
  wire \accumulator_reg[4]_i_1__61_n_2 ;
  wire \accumulator_reg[4]_i_1__61_n_3 ;
  wire \accumulator_reg[4]_i_1__61_n_4 ;
  wire \accumulator_reg[4]_i_1__61_n_5 ;
  wire \accumulator_reg[4]_i_1__61_n_6 ;
  wire \accumulator_reg[4]_i_1__61_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire \x_reg[0]_0 ;
  wire \x_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__61_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__62 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(ena_mac),
        .O(DI));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__61 
       (.I0(ena_mac),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__61_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__61 
       (.I0(ena_mac),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__61_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__61 
       (.I0(ena_mac),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__61_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__61 
       (.I0(ena_mac),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__61_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__61 
       (.I0(ena_mac),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__61_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__61 
       (.I0(ena_mac),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__61_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__61 
       (.I0(ena_mac),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__61_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__61_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__61 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__61_n_0 ,\accumulator_reg[0]_i_1__61_n_1 ,\accumulator_reg[0]_i_1__61_n_2 ,\accumulator_reg[0]_i_1__61_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__61_n_4 ,\accumulator_reg[0]_i_1__61_n_5 ,\accumulator_reg[0]_i_1__61_n_6 ,\accumulator_reg[0]_i_1__61_n_7 }),
        .S({\accumulator[0]_i_3__61_n_0 ,\accumulator[0]_i_4__61_n_0 ,\accumulator[0]_i_5__61_n_0 ,\accumulator_reg[3]_1 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__61_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__61_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__61_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__61_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__61 
       (.CI(\accumulator_reg[0]_i_1__61_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__61_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__61_n_1 ,\accumulator_reg[4]_i_1__61_n_2 ,\accumulator_reg[4]_i_1__61_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__61_n_4 ,\accumulator_reg[4]_i_1__61_n_5 ,\accumulator_reg[4]_i_1__61_n_6 ,\accumulator_reg[4]_i_1__61_n_7 }),
        .S({\accumulator[4]_i_2__61_n_0 ,\accumulator[4]_i_3__61_n_0 ,\accumulator[4]_i_4__61_n_0 ,\accumulator[4]_i_5__61_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__61_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__61_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__61_n_4 ),
        .Q(D[7]));
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
module accumulator_cells_57
   (\y_reg[0]_0 ,
    D,
    \y_reg[0]_1 ,
    Q,
    clock_IBUF_BUFG,
    btn_IBUF,
    DI,
    S,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 );
  output \y_reg[0]_0 ;
  output [7:0]D;
  output [0:0]\y_reg[0]_1 ;
  input [0:0]Q;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [0:0]DI;
  input [0:0]S;
  input \accumulator_reg[3]_0 ;
  input \accumulator_reg[3]_1 ;
  input [0:0]\accumulator_reg[3]_2 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]Q;
  wire [0:0]S;
  wire \accumulator[0]_i_3__6_n_0 ;
  wire \accumulator[0]_i_4__6_n_0 ;
  wire \accumulator[0]_i_5__6_n_0 ;
  wire \accumulator[4]_i_2__6_n_0 ;
  wire \accumulator[4]_i_3__6_n_0 ;
  wire \accumulator[4]_i_4__6_n_0 ;
  wire \accumulator[4]_i_5__6_n_0 ;
  wire \accumulator_reg[0]_i_1__6_n_0 ;
  wire \accumulator_reg[0]_i_1__6_n_1 ;
  wire \accumulator_reg[0]_i_1__6_n_2 ;
  wire \accumulator_reg[0]_i_1__6_n_3 ;
  wire \accumulator_reg[0]_i_1__6_n_4 ;
  wire \accumulator_reg[0]_i_1__6_n_5 ;
  wire \accumulator_reg[0]_i_1__6_n_6 ;
  wire \accumulator_reg[0]_i_1__6_n_7 ;
  wire \accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire [0:0]\accumulator_reg[3]_2 ;
  wire \accumulator_reg[4]_i_1__6_n_1 ;
  wire \accumulator_reg[4]_i_1__6_n_2 ;
  wire \accumulator_reg[4]_i_1__6_n_3 ;
  wire \accumulator_reg[4]_i_1__6_n_4 ;
  wire \accumulator_reg[4]_i_1__6_n_5 ;
  wire \accumulator_reg[4]_i_1__6_n_6 ;
  wire \accumulator_reg[4]_i_1__6_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__6_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__6 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__6 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__6 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__6_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__14 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_1 ),
        .I2(\accumulator_reg[3]_2 ),
        .I3(\accumulator_reg[3]_0 ),
        .O(\y_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__6 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__6 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__6 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__6 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__6_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__6_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__6 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__6_n_0 ,\accumulator_reg[0]_i_1__6_n_1 ,\accumulator_reg[0]_i_1__6_n_2 ,\accumulator_reg[0]_i_1__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__6_n_4 ,\accumulator_reg[0]_i_1__6_n_5 ,\accumulator_reg[0]_i_1__6_n_6 ,\accumulator_reg[0]_i_1__6_n_7 }),
        .S({\accumulator[0]_i_3__6_n_0 ,\accumulator[0]_i_4__6_n_0 ,\accumulator[0]_i_5__6_n_0 ,S}));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__6_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__6_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__6_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__6_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__6 
       (.CI(\accumulator_reg[0]_i_1__6_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__6_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__6_n_1 ,\accumulator_reg[4]_i_1__6_n_2 ,\accumulator_reg[4]_i_1__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__6_n_4 ,\accumulator_reg[4]_i_1__6_n_5 ,\accumulator_reg[4]_i_1__6_n_6 ,\accumulator_reg[4]_i_1__6_n_7 }),
        .S({\accumulator[4]_i_2__6_n_0 ,\accumulator[4]_i_3__6_n_0 ,\accumulator[4]_i_4__6_n_0 ,\accumulator[4]_i_5__6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__6_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__6_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__6_n_4 ),
        .Q(D[7]));
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
module accumulator_cells_58
   (\y_reg[0]_0 ,
    D,
    S,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    DI,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 );
  output \y_reg[0]_0 ;
  output [7:0]D;
  output [0:0]S;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [0:0]DI;
  input [0:0]\accumulator_reg[3]_0 ;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input [0:0]\accumulator_reg[3]_3 ;
  input \accumulator_reg[3]_4 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__14_n_0 ;
  wire \accumulator[0]_i_4__14_n_0 ;
  wire \accumulator[0]_i_5__14_n_0 ;
  wire \accumulator[4]_i_2__14_n_0 ;
  wire \accumulator[4]_i_3__14_n_0 ;
  wire \accumulator[4]_i_4__14_n_0 ;
  wire \accumulator[4]_i_5__14_n_0 ;
  wire \accumulator_reg[0]_i_1__14_n_0 ;
  wire \accumulator_reg[0]_i_1__14_n_1 ;
  wire \accumulator_reg[0]_i_1__14_n_2 ;
  wire \accumulator_reg[0]_i_1__14_n_3 ;
  wire \accumulator_reg[0]_i_1__14_n_4 ;
  wire \accumulator_reg[0]_i_1__14_n_5 ;
  wire \accumulator_reg[0]_i_1__14_n_6 ;
  wire \accumulator_reg[0]_i_1__14_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire [0:0]\accumulator_reg[3]_3 ;
  wire \accumulator_reg[3]_4 ;
  wire \accumulator_reg[4]_i_1__14_n_1 ;
  wire \accumulator_reg[4]_i_1__14_n_2 ;
  wire \accumulator_reg[4]_i_1__14_n_3 ;
  wire \accumulator_reg[4]_i_1__14_n_4 ;
  wire \accumulator_reg[4]_i_1__14_n_5 ;
  wire \accumulator_reg[4]_i_1__14_n_6 ;
  wire \accumulator_reg[4]_i_1__14_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__14_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__14 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__14 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__14 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__14_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__22 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_3 ),
        .I3(\accumulator_reg[3]_4 ),
        .O(S));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__14 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__14 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__14 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__14_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__14 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__14_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__14_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__14 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__14_n_0 ,\accumulator_reg[0]_i_1__14_n_1 ,\accumulator_reg[0]_i_1__14_n_2 ,\accumulator_reg[0]_i_1__14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__14_n_4 ,\accumulator_reg[0]_i_1__14_n_5 ,\accumulator_reg[0]_i_1__14_n_6 ,\accumulator_reg[0]_i_1__14_n_7 }),
        .S({\accumulator[0]_i_3__14_n_0 ,\accumulator[0]_i_4__14_n_0 ,\accumulator[0]_i_5__14_n_0 ,\accumulator_reg[3]_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__14_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__14_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__14_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__14_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__14 
       (.CI(\accumulator_reg[0]_i_1__14_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__14_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__14_n_1 ,\accumulator_reg[4]_i_1__14_n_2 ,\accumulator_reg[4]_i_1__14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__14_n_4 ,\accumulator_reg[4]_i_1__14_n_5 ,\accumulator_reg[4]_i_1__14_n_6 ,\accumulator_reg[4]_i_1__14_n_7 }),
        .S({\accumulator[4]_i_2__14_n_0 ,\accumulator[4]_i_3__14_n_0 ,\accumulator[4]_i_4__14_n_0 ,\accumulator[4]_i_5__14_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__14_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__14_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__14_n_4 ),
        .Q(D[7]));
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
module accumulator_cells_59
   (\y_reg[0]_0 ,
    D,
    \y_reg[0]_1 ,
    \y_reg[0]_2 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    DI,
    S,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 );
  output \y_reg[0]_0 ;
  output [7:0]D;
  output [0:0]\y_reg[0]_1 ;
  input \y_reg[0]_2 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [0:0]DI;
  input [0:0]S;
  input \accumulator_reg[3]_0 ;
  input \accumulator_reg[3]_1 ;
  input [0:0]\accumulator_reg[3]_2 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__22_n_0 ;
  wire \accumulator[0]_i_4__22_n_0 ;
  wire \accumulator[0]_i_5__22_n_0 ;
  wire \accumulator[4]_i_2__22_n_0 ;
  wire \accumulator[4]_i_3__22_n_0 ;
  wire \accumulator[4]_i_4__22_n_0 ;
  wire \accumulator[4]_i_5__22_n_0 ;
  wire \accumulator_reg[0]_i_1__22_n_0 ;
  wire \accumulator_reg[0]_i_1__22_n_1 ;
  wire \accumulator_reg[0]_i_1__22_n_2 ;
  wire \accumulator_reg[0]_i_1__22_n_3 ;
  wire \accumulator_reg[0]_i_1__22_n_4 ;
  wire \accumulator_reg[0]_i_1__22_n_5 ;
  wire \accumulator_reg[0]_i_1__22_n_6 ;
  wire \accumulator_reg[0]_i_1__22_n_7 ;
  wire \accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire [0:0]\accumulator_reg[3]_2 ;
  wire \accumulator_reg[4]_i_1__22_n_1 ;
  wire \accumulator_reg[4]_i_1__22_n_2 ;
  wire \accumulator_reg[4]_i_1__22_n_3 ;
  wire \accumulator_reg[4]_i_1__22_n_4 ;
  wire \accumulator_reg[4]_i_1__22_n_5 ;
  wire \accumulator_reg[4]_i_1__22_n_6 ;
  wire \accumulator_reg[4]_i_1__22_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire \y_reg[0]_2 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__22_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__22 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__22_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__22 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__22_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__22 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__22_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__30 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_1 ),
        .I2(\accumulator_reg[3]_2 ),
        .I3(\accumulator_reg[3]_0 ),
        .O(\y_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__22 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__22_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__22 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__22_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__22 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__22_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__22 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__22_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__22_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__22 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__22_n_0 ,\accumulator_reg[0]_i_1__22_n_1 ,\accumulator_reg[0]_i_1__22_n_2 ,\accumulator_reg[0]_i_1__22_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__22_n_4 ,\accumulator_reg[0]_i_1__22_n_5 ,\accumulator_reg[0]_i_1__22_n_6 ,\accumulator_reg[0]_i_1__22_n_7 }),
        .S({\accumulator[0]_i_3__22_n_0 ,\accumulator[0]_i_4__22_n_0 ,\accumulator[0]_i_5__22_n_0 ,S}));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__22_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__22_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__22_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__22_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__22 
       (.CI(\accumulator_reg[0]_i_1__22_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__22_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__22_n_1 ,\accumulator_reg[4]_i_1__22_n_2 ,\accumulator_reg[4]_i_1__22_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__22_n_4 ,\accumulator_reg[4]_i_1__22_n_5 ,\accumulator_reg[4]_i_1__22_n_6 ,\accumulator_reg[4]_i_1__22_n_7 }),
        .S({\accumulator[4]_i_2__22_n_0 ,\accumulator[4]_i_3__22_n_0 ,\accumulator[4]_i_4__22_n_0 ,\accumulator[4]_i_5__22_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__22_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__22_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__22_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_2 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_6
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    DI,
    \a_load_reg[6] ,
    S,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    Q,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  output [0:0]\a_load_reg[6] ;
  output [0:0]S;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [1:0]Q;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]\accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input \accumulator_reg[3]_3 ;
  input [0:0]\accumulator_reg[3]_4 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [1:0]Q;
  wire [0:0]S;
  wire [0:0]\a_load_reg[6] ;
  wire \accumulator[0]_i_3__39_n_0 ;
  wire \accumulator[0]_i_4__39_n_0 ;
  wire \accumulator[0]_i_5__39_n_0 ;
  wire \accumulator[4]_i_2__39_n_0 ;
  wire \accumulator[4]_i_3__39_n_0 ;
  wire \accumulator[4]_i_4__39_n_0 ;
  wire \accumulator[4]_i_5__39_n_0 ;
  wire \accumulator_reg[0]_i_1__39_n_0 ;
  wire \accumulator_reg[0]_i_1__39_n_1 ;
  wire \accumulator_reg[0]_i_1__39_n_2 ;
  wire \accumulator_reg[0]_i_1__39_n_3 ;
  wire \accumulator_reg[0]_i_1__39_n_4 ;
  wire \accumulator_reg[0]_i_1__39_n_5 ;
  wire \accumulator_reg[0]_i_1__39_n_6 ;
  wire \accumulator_reg[0]_i_1__39_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire [0:0]\accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[3]_3 ;
  wire [0:0]\accumulator_reg[3]_4 ;
  wire \accumulator_reg[4]_i_1__39_n_1 ;
  wire \accumulator_reg[4]_i_1__39_n_2 ;
  wire \accumulator_reg[4]_i_1__39_n_3 ;
  wire \accumulator_reg[4]_i_1__39_n_4 ;
  wire \accumulator_reg[4]_i_1__39_n_5 ;
  wire \accumulator_reg[4]_i_1__39_n_6 ;
  wire \accumulator_reg[4]_i_1__39_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__39_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__40 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_3 ),
        .I2(\accumulator_reg[3]_2 ),
        .O(DI));
  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__47 
       (.I0(Q[1]),
        .I1(\y_reg[0]_0 ),
        .I2(\accumulator_reg[3]_2 ),
        .O(\a_load_reg[6] ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__39 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__39_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__39 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__39_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__39 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__39_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__47 
       (.I0(\y_reg[0]_0 ),
        .I1(Q[1]),
        .I2(\accumulator_reg[3]_4 ),
        .I3(\accumulator_reg[3]_2 ),
        .O(S));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__39 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__39_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__39 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__39_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__39 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__39_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__39 
       (.I0(\accumulator_reg[3]_2 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__39_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__39_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__39 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__39_n_0 ,\accumulator_reg[0]_i_1__39_n_1 ,\accumulator_reg[0]_i_1__39_n_2 ,\accumulator_reg[0]_i_1__39_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__39_n_4 ,\accumulator_reg[0]_i_1__39_n_5 ,\accumulator_reg[0]_i_1__39_n_6 ,\accumulator_reg[0]_i_1__39_n_7 }),
        .S({\accumulator[0]_i_3__39_n_0 ,\accumulator[0]_i_4__39_n_0 ,\accumulator[0]_i_5__39_n_0 ,\accumulator_reg[3]_1 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__39_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__39_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__39_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__39_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__39 
       (.CI(\accumulator_reg[0]_i_1__39_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__39_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__39_n_1 ,\accumulator_reg[4]_i_1__39_n_2 ,\accumulator_reg[4]_i_1__39_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__39_n_4 ,\accumulator_reg[4]_i_1__39_n_5 ,\accumulator_reg[4]_i_1__39_n_6 ,\accumulator_reg[4]_i_1__39_n_7 }),
        .S({\accumulator[4]_i_2__39_n_0 ,\accumulator[4]_i_3__39_n_0 ,\accumulator[4]_i_4__39_n_0 ,\accumulator[4]_i_5__39_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__39_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__39_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__39_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(Q[0]),
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
    D,
    S,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    DI,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 );
  output \y_reg[0]_0 ;
  output [7:0]D;
  output [0:0]S;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [0:0]DI;
  input [0:0]\accumulator_reg[3]_0 ;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input [0:0]\accumulator_reg[3]_3 ;
  input \accumulator_reg[3]_4 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__30_n_0 ;
  wire \accumulator[0]_i_4__30_n_0 ;
  wire \accumulator[0]_i_5__30_n_0 ;
  wire \accumulator[4]_i_2__30_n_0 ;
  wire \accumulator[4]_i_3__30_n_0 ;
  wire \accumulator[4]_i_4__30_n_0 ;
  wire \accumulator[4]_i_5__30_n_0 ;
  wire \accumulator_reg[0]_i_1__30_n_0 ;
  wire \accumulator_reg[0]_i_1__30_n_1 ;
  wire \accumulator_reg[0]_i_1__30_n_2 ;
  wire \accumulator_reg[0]_i_1__30_n_3 ;
  wire \accumulator_reg[0]_i_1__30_n_4 ;
  wire \accumulator_reg[0]_i_1__30_n_5 ;
  wire \accumulator_reg[0]_i_1__30_n_6 ;
  wire \accumulator_reg[0]_i_1__30_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire [0:0]\accumulator_reg[3]_3 ;
  wire \accumulator_reg[3]_4 ;
  wire \accumulator_reg[4]_i_1__30_n_1 ;
  wire \accumulator_reg[4]_i_1__30_n_2 ;
  wire \accumulator_reg[4]_i_1__30_n_3 ;
  wire \accumulator_reg[4]_i_1__30_n_4 ;
  wire \accumulator_reg[4]_i_1__30_n_5 ;
  wire \accumulator_reg[4]_i_1__30_n_6 ;
  wire \accumulator_reg[4]_i_1__30_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__30_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__30 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__30_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__30 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__30_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__30 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__30_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__38 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_3 ),
        .I3(\accumulator_reg[3]_4 ),
        .O(S));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__30 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__30_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__30 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__30_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__30 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__30_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__30 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__30_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__30_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__30 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__30_n_0 ,\accumulator_reg[0]_i_1__30_n_1 ,\accumulator_reg[0]_i_1__30_n_2 ,\accumulator_reg[0]_i_1__30_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__30_n_4 ,\accumulator_reg[0]_i_1__30_n_5 ,\accumulator_reg[0]_i_1__30_n_6 ,\accumulator_reg[0]_i_1__30_n_7 }),
        .S({\accumulator[0]_i_3__30_n_0 ,\accumulator[0]_i_4__30_n_0 ,\accumulator[0]_i_5__30_n_0 ,\accumulator_reg[3]_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__30_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__30_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__30_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__30_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__30 
       (.CI(\accumulator_reg[0]_i_1__30_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__30_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__30_n_1 ,\accumulator_reg[4]_i_1__30_n_2 ,\accumulator_reg[4]_i_1__30_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__30_n_4 ,\accumulator_reg[4]_i_1__30_n_5 ,\accumulator_reg[4]_i_1__30_n_6 ,\accumulator_reg[4]_i_1__30_n_7 }),
        .S({\accumulator[4]_i_2__30_n_0 ,\accumulator[4]_i_3__30_n_0 ,\accumulator[4]_i_4__30_n_0 ,\accumulator[4]_i_5__30_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__30_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__30_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__30_n_4 ),
        .Q(D[7]));
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
    D,
    \y_reg[0]_1 ,
    \y_reg[0]_2 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    DI,
    S,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 );
  output \y_reg[0]_0 ;
  output [7:0]D;
  output [0:0]\y_reg[0]_1 ;
  input \y_reg[0]_2 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [0:0]DI;
  input [0:0]S;
  input \accumulator_reg[3]_0 ;
  input \accumulator_reg[3]_1 ;
  input [0:0]\accumulator_reg[3]_2 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__38_n_0 ;
  wire \accumulator[0]_i_4__38_n_0 ;
  wire \accumulator[0]_i_5__38_n_0 ;
  wire \accumulator[4]_i_2__38_n_0 ;
  wire \accumulator[4]_i_3__38_n_0 ;
  wire \accumulator[4]_i_4__38_n_0 ;
  wire \accumulator[4]_i_5__38_n_0 ;
  wire \accumulator_reg[0]_i_1__38_n_0 ;
  wire \accumulator_reg[0]_i_1__38_n_1 ;
  wire \accumulator_reg[0]_i_1__38_n_2 ;
  wire \accumulator_reg[0]_i_1__38_n_3 ;
  wire \accumulator_reg[0]_i_1__38_n_4 ;
  wire \accumulator_reg[0]_i_1__38_n_5 ;
  wire \accumulator_reg[0]_i_1__38_n_6 ;
  wire \accumulator_reg[0]_i_1__38_n_7 ;
  wire \accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire [0:0]\accumulator_reg[3]_2 ;
  wire \accumulator_reg[4]_i_1__38_n_1 ;
  wire \accumulator_reg[4]_i_1__38_n_2 ;
  wire \accumulator_reg[4]_i_1__38_n_3 ;
  wire \accumulator_reg[4]_i_1__38_n_4 ;
  wire \accumulator_reg[4]_i_1__38_n_5 ;
  wire \accumulator_reg[4]_i_1__38_n_6 ;
  wire \accumulator_reg[4]_i_1__38_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire \y_reg[0]_2 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__38_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__38 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__38_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__38 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__38_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__38 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__38_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__46 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_1 ),
        .I2(\accumulator_reg[3]_2 ),
        .I3(\accumulator_reg[3]_0 ),
        .O(\y_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__38 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__38_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__38 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__38_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__38 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__38_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__38 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__38_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__38_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__38 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__38_n_0 ,\accumulator_reg[0]_i_1__38_n_1 ,\accumulator_reg[0]_i_1__38_n_2 ,\accumulator_reg[0]_i_1__38_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__38_n_4 ,\accumulator_reg[0]_i_1__38_n_5 ,\accumulator_reg[0]_i_1__38_n_6 ,\accumulator_reg[0]_i_1__38_n_7 }),
        .S({\accumulator[0]_i_3__38_n_0 ,\accumulator[0]_i_4__38_n_0 ,\accumulator[0]_i_5__38_n_0 ,S}));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__38_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__38_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__38_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__38_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__38 
       (.CI(\accumulator_reg[0]_i_1__38_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__38_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__38_n_1 ,\accumulator_reg[4]_i_1__38_n_2 ,\accumulator_reg[4]_i_1__38_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__38_n_4 ,\accumulator_reg[4]_i_1__38_n_5 ,\accumulator_reg[4]_i_1__38_n_6 ,\accumulator_reg[4]_i_1__38_n_7 }),
        .S({\accumulator[4]_i_2__38_n_0 ,\accumulator[4]_i_3__38_n_0 ,\accumulator[4]_i_4__38_n_0 ,\accumulator[4]_i_5__38_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__38_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__38_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__38_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_2 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_62
   (\y_reg[0]_0 ,
    D,
    S,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    DI,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    ena_mac);
  output \y_reg[0]_0 ;
  output [7:0]D;
  output [0:0]S;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [0:0]DI;
  input [0:0]\accumulator_reg[3]_0 ;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input [0:0]\accumulator_reg[3]_3 ;
  input ena_mac;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__46_n_0 ;
  wire \accumulator[0]_i_4__46_n_0 ;
  wire \accumulator[0]_i_5__46_n_0 ;
  wire \accumulator[4]_i_2__46_n_0 ;
  wire \accumulator[4]_i_3__46_n_0 ;
  wire \accumulator[4]_i_4__46_n_0 ;
  wire \accumulator[4]_i_5__46_n_0 ;
  wire \accumulator_reg[0]_i_1__46_n_0 ;
  wire \accumulator_reg[0]_i_1__46_n_1 ;
  wire \accumulator_reg[0]_i_1__46_n_2 ;
  wire \accumulator_reg[0]_i_1__46_n_3 ;
  wire \accumulator_reg[0]_i_1__46_n_4 ;
  wire \accumulator_reg[0]_i_1__46_n_5 ;
  wire \accumulator_reg[0]_i_1__46_n_6 ;
  wire \accumulator_reg[0]_i_1__46_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire [0:0]\accumulator_reg[3]_3 ;
  wire \accumulator_reg[4]_i_1__46_n_1 ;
  wire \accumulator_reg[4]_i_1__46_n_2 ;
  wire \accumulator_reg[4]_i_1__46_n_3 ;
  wire \accumulator_reg[4]_i_1__46_n_4 ;
  wire \accumulator_reg[4]_i_1__46_n_5 ;
  wire \accumulator_reg[4]_i_1__46_n_6 ;
  wire \accumulator_reg[4]_i_1__46_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire \y_reg[0]_0 ;
  wire \y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__46_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__46 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__46_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__46 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__46_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__46 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__46_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__54 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_3 ),
        .I3(ena_mac),
        .O(S));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__46 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__46_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__46 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__46_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__46 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__46_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__46 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__46_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__46_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__46 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__46_n_0 ,\accumulator_reg[0]_i_1__46_n_1 ,\accumulator_reg[0]_i_1__46_n_2 ,\accumulator_reg[0]_i_1__46_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__46_n_4 ,\accumulator_reg[0]_i_1__46_n_5 ,\accumulator_reg[0]_i_1__46_n_6 ,\accumulator_reg[0]_i_1__46_n_7 }),
        .S({\accumulator[0]_i_3__46_n_0 ,\accumulator[0]_i_4__46_n_0 ,\accumulator[0]_i_5__46_n_0 ,\accumulator_reg[3]_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__46_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__46_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__46_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__46_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__46 
       (.CI(\accumulator_reg[0]_i_1__46_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__46_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__46_n_1 ,\accumulator_reg[4]_i_1__46_n_2 ,\accumulator_reg[4]_i_1__46_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__46_n_4 ,\accumulator_reg[4]_i_1__46_n_5 ,\accumulator_reg[4]_i_1__46_n_6 ,\accumulator_reg[4]_i_1__46_n_7 }),
        .S({\accumulator[4]_i_2__46_n_0 ,\accumulator[4]_i_3__46_n_0 ,\accumulator[4]_i_4__46_n_0 ,\accumulator[4]_i_5__46_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__46_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__46_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__46_n_4 ),
        .Q(D[7]));
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
    D,
    \y_reg[0]_1 ,
    \y_reg[0]_2 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    DI,
    S,
    ena_mac,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 );
  output \y_reg[0]_0 ;
  output [7:0]D;
  output [0:0]\y_reg[0]_1 ;
  input \y_reg[0]_2 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [0:0]DI;
  input [0:0]S;
  input ena_mac;
  input \accumulator_reg[3]_0 ;
  input [0:0]\accumulator_reg[3]_1 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]S;
  wire \accumulator[0]_i_3__54_n_0 ;
  wire \accumulator[0]_i_4__54_n_0 ;
  wire \accumulator[0]_i_5__54_n_0 ;
  wire \accumulator[4]_i_2__54_n_0 ;
  wire \accumulator[4]_i_3__54_n_0 ;
  wire \accumulator[4]_i_4__54_n_0 ;
  wire \accumulator[4]_i_5__54_n_0 ;
  wire \accumulator_reg[0]_i_1__54_n_0 ;
  wire \accumulator_reg[0]_i_1__54_n_1 ;
  wire \accumulator_reg[0]_i_1__54_n_2 ;
  wire \accumulator_reg[0]_i_1__54_n_3 ;
  wire \accumulator_reg[0]_i_1__54_n_4 ;
  wire \accumulator_reg[0]_i_1__54_n_5 ;
  wire \accumulator_reg[0]_i_1__54_n_6 ;
  wire \accumulator_reg[0]_i_1__54_n_7 ;
  wire \accumulator_reg[3]_0 ;
  wire [0:0]\accumulator_reg[3]_1 ;
  wire \accumulator_reg[4]_i_1__54_n_1 ;
  wire \accumulator_reg[4]_i_1__54_n_2 ;
  wire \accumulator_reg[4]_i_1__54_n_3 ;
  wire \accumulator_reg[4]_i_1__54_n_4 ;
  wire \accumulator_reg[4]_i_1__54_n_5 ;
  wire \accumulator_reg[4]_i_1__54_n_6 ;
  wire \accumulator_reg[4]_i_1__54_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire \y_reg[0]_2 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__54_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__54 
       (.I0(ena_mac),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__54_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__54 
       (.I0(ena_mac),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__54_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__54 
       (.I0(ena_mac),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__54_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__62 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_0 ),
        .I2(\accumulator_reg[3]_1 ),
        .I3(ena_mac),
        .O(\y_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__54 
       (.I0(ena_mac),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__54_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__54 
       (.I0(ena_mac),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__54_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__54 
       (.I0(ena_mac),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__54_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__54 
       (.I0(ena_mac),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__54_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__54_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__54 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__54_n_0 ,\accumulator_reg[0]_i_1__54_n_1 ,\accumulator_reg[0]_i_1__54_n_2 ,\accumulator_reg[0]_i_1__54_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__54_n_4 ,\accumulator_reg[0]_i_1__54_n_5 ,\accumulator_reg[0]_i_1__54_n_6 ,\accumulator_reg[0]_i_1__54_n_7 }),
        .S({\accumulator[0]_i_3__54_n_0 ,\accumulator[0]_i_4__54_n_0 ,\accumulator[0]_i_5__54_n_0 ,S}));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__54_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__54_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__54_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__54_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__54 
       (.CI(\accumulator_reg[0]_i_1__54_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__54_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__54_n_1 ,\accumulator_reg[4]_i_1__54_n_2 ,\accumulator_reg[4]_i_1__54_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__54_n_4 ,\accumulator_reg[4]_i_1__54_n_5 ,\accumulator_reg[4]_i_1__54_n_6 ,\accumulator_reg[4]_i_1__54_n_7 }),
        .S({\accumulator[4]_i_2__54_n_0 ,\accumulator[4]_i_3__54_n_0 ,\accumulator[4]_i_4__54_n_0 ,\accumulator[4]_i_5__54_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__54_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__54_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__54_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_2 ),
        .Q(\y_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_64
   (D,
    clock_IBUF_BUFG,
    btn_IBUF,
    DI,
    \accumulator_reg[3]_0 ,
    ena_mac);
  output [7:0]D;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [0:0]DI;
  input [0:0]\accumulator_reg[3]_0 ;
  input ena_mac;

  wire [7:0]D;
  wire [0:0]DI;
  wire \accumulator[0]_i_3__62_n_0 ;
  wire \accumulator[0]_i_4__62_n_0 ;
  wire \accumulator[0]_i_5__62_n_0 ;
  wire \accumulator[4]_i_2__62_n_0 ;
  wire \accumulator[4]_i_3__62_n_0 ;
  wire \accumulator[4]_i_4__62_n_0 ;
  wire \accumulator[4]_i_5__62_n_0 ;
  wire \accumulator_reg[0]_i_1__62_n_0 ;
  wire \accumulator_reg[0]_i_1__62_n_1 ;
  wire \accumulator_reg[0]_i_1__62_n_2 ;
  wire \accumulator_reg[0]_i_1__62_n_3 ;
  wire \accumulator_reg[0]_i_1__62_n_4 ;
  wire \accumulator_reg[0]_i_1__62_n_5 ;
  wire \accumulator_reg[0]_i_1__62_n_6 ;
  wire \accumulator_reg[0]_i_1__62_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire \accumulator_reg[4]_i_1__62_n_1 ;
  wire \accumulator_reg[4]_i_1__62_n_2 ;
  wire \accumulator_reg[4]_i_1__62_n_3 ;
  wire \accumulator_reg[4]_i_1__62_n_4 ;
  wire \accumulator_reg[4]_i_1__62_n_5 ;
  wire \accumulator_reg[4]_i_1__62_n_6 ;
  wire \accumulator_reg[4]_i_1__62_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__62_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__62 
       (.I0(ena_mac),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__62_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__62 
       (.I0(ena_mac),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__62_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__62 
       (.I0(ena_mac),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__62_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__62 
       (.I0(ena_mac),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__62_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__62 
       (.I0(ena_mac),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__62_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__62 
       (.I0(ena_mac),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__62_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__62 
       (.I0(ena_mac),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__62_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__62_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__62 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__62_n_0 ,\accumulator_reg[0]_i_1__62_n_1 ,\accumulator_reg[0]_i_1__62_n_2 ,\accumulator_reg[0]_i_1__62_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__62_n_4 ,\accumulator_reg[0]_i_1__62_n_5 ,\accumulator_reg[0]_i_1__62_n_6 ,\accumulator_reg[0]_i_1__62_n_7 }),
        .S({\accumulator[0]_i_3__62_n_0 ,\accumulator[0]_i_4__62_n_0 ,\accumulator[0]_i_5__62_n_0 ,\accumulator_reg[3]_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__62_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__62_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__62_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__62_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__62 
       (.CI(\accumulator_reg[0]_i_1__62_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__62_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__62_n_1 ,\accumulator_reg[4]_i_1__62_n_2 ,\accumulator_reg[4]_i_1__62_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__62_n_4 ,\accumulator_reg[4]_i_1__62_n_5 ,\accumulator_reg[4]_i_1__62_n_6 ,\accumulator_reg[4]_i_1__62_n_7 }),
        .S({\accumulator[4]_i_2__62_n_0 ,\accumulator[4]_i_3__62_n_0 ,\accumulator[4]_i_4__62_n_0 ,\accumulator[4]_i_5__62_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__62_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__62_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__62_n_4 ),
        .Q(D[7]));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_7
   (\x_reg[0]_0 ,
    D,
    DI,
    \a_load_reg[7] ,
    \y_reg[0]_0 ,
    \y_reg[0]_1 ,
    clock_IBUF_BUFG,
    btn_IBUF,
    Q,
    \accumulator_reg[3]_0 ,
    S,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    ena_mac,
    \accumulator_reg[3]_3 );
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  output [0:0]\a_load_reg[7] ;
  output [0:0]\y_reg[0]_0 ;
  input \y_reg[0]_1 ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [1:0]Q;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]S;
  input \accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input ena_mac;
  input [0:0]\accumulator_reg[3]_3 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [1:0]Q;
  wire [0:0]S;
  wire [0:0]\a_load_reg[7] ;
  wire \accumulator[0]_i_3__47_n_0 ;
  wire \accumulator[0]_i_4__47_n_0 ;
  wire \accumulator[0]_i_5__47_n_0 ;
  wire \accumulator[4]_i_2__47_n_0 ;
  wire \accumulator[4]_i_3__47_n_0 ;
  wire \accumulator[4]_i_4__47_n_0 ;
  wire \accumulator[4]_i_5__47_n_0 ;
  wire \accumulator_reg[0]_i_1__47_n_0 ;
  wire \accumulator_reg[0]_i_1__47_n_1 ;
  wire \accumulator_reg[0]_i_1__47_n_2 ;
  wire \accumulator_reg[0]_i_1__47_n_3 ;
  wire \accumulator_reg[0]_i_1__47_n_4 ;
  wire \accumulator_reg[0]_i_1__47_n_5 ;
  wire \accumulator_reg[0]_i_1__47_n_6 ;
  wire \accumulator_reg[0]_i_1__47_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire \accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire [0:0]\accumulator_reg[3]_3 ;
  wire \accumulator_reg[4]_i_1__47_n_1 ;
  wire \accumulator_reg[4]_i_1__47_n_2 ;
  wire \accumulator_reg[4]_i_1__47_n_3 ;
  wire \accumulator_reg[4]_i_1__47_n_4 ;
  wire \accumulator_reg[4]_i_1__47_n_5 ;
  wire \accumulator_reg[4]_i_1__47_n_6 ;
  wire \accumulator_reg[4]_i_1__47_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire \x_reg[0]_0 ;
  wire [0:0]\y_reg[0]_0 ;
  wire \y_reg[0]_1 ;
  wire \y_reg_n_0_[0] ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__47_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__48 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(ena_mac),
        .O(DI));
  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__55 
       (.I0(Q[1]),
        .I1(\y_reg_n_0_[0] ),
        .I2(ena_mac),
        .O(\a_load_reg[7] ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__47 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__47_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__47 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__47_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__47 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__47_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__55 
       (.I0(\y_reg_n_0_[0] ),
        .I1(Q[1]),
        .I2(\accumulator_reg[3]_3 ),
        .I3(ena_mac),
        .O(\y_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__47 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__47_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__47 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__47_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__47 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__47_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__47 
       (.I0(\accumulator_reg[3]_1 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__47_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__47_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__47 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__47_n_0 ,\accumulator_reg[0]_i_1__47_n_1 ,\accumulator_reg[0]_i_1__47_n_2 ,\accumulator_reg[0]_i_1__47_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__47_n_4 ,\accumulator_reg[0]_i_1__47_n_5 ,\accumulator_reg[0]_i_1__47_n_6 ,\accumulator_reg[0]_i_1__47_n_7 }),
        .S({\accumulator[0]_i_3__47_n_0 ,\accumulator[0]_i_4__47_n_0 ,\accumulator[0]_i_5__47_n_0 ,S}));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__47_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__47_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__47_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__47_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__47 
       (.CI(\accumulator_reg[0]_i_1__47_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__47_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__47_n_1 ,\accumulator_reg[4]_i_1__47_n_2 ,\accumulator_reg[4]_i_1__47_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__47_n_4 ,\accumulator_reg[4]_i_1__47_n_5 ,\accumulator_reg[4]_i_1__47_n_6 ,\accumulator_reg[4]_i_1__47_n_7 }),
        .S({\accumulator[4]_i_2__47_n_0 ,\accumulator[4]_i_3__47_n_0 ,\accumulator[4]_i_4__47_n_0 ,\accumulator[4]_i_5__47_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__47_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__47_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__47_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(Q[0]),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\y_reg[0]_1 ),
        .Q(\y_reg_n_0_[0] ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_8
   (\x_reg[0]_0 ,
    D,
    DI,
    Q,
    clock_IBUF_BUFG,
    btn_IBUF,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    ena_mac,
    \accumulator_reg[3]_2 );
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]DI;
  input [0:0]Q;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [0:0]\accumulator_reg[3]_0 ;
  input [0:0]\accumulator_reg[3]_1 ;
  input ena_mac;
  input \accumulator_reg[3]_2 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [0:0]Q;
  wire \accumulator[0]_i_3__55_n_0 ;
  wire \accumulator[0]_i_4__55_n_0 ;
  wire \accumulator[0]_i_5__55_n_0 ;
  wire \accumulator[4]_i_2__55_n_0 ;
  wire \accumulator[4]_i_3__55_n_0 ;
  wire \accumulator[4]_i_4__55_n_0 ;
  wire \accumulator[4]_i_5__55_n_0 ;
  wire \accumulator_reg[0]_i_1__55_n_0 ;
  wire \accumulator_reg[0]_i_1__55_n_1 ;
  wire \accumulator_reg[0]_i_1__55_n_2 ;
  wire \accumulator_reg[0]_i_1__55_n_3 ;
  wire \accumulator_reg[0]_i_1__55_n_4 ;
  wire \accumulator_reg[0]_i_1__55_n_5 ;
  wire \accumulator_reg[0]_i_1__55_n_6 ;
  wire \accumulator_reg[0]_i_1__55_n_7 ;
  wire [0:0]\accumulator_reg[3]_0 ;
  wire [0:0]\accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire \accumulator_reg[4]_i_1__55_n_1 ;
  wire \accumulator_reg[4]_i_1__55_n_2 ;
  wire \accumulator_reg[4]_i_1__55_n_3 ;
  wire \accumulator_reg[4]_i_1__55_n_4 ;
  wire \accumulator_reg[4]_i_1__55_n_5 ;
  wire \accumulator_reg[4]_i_1__55_n_6 ;
  wire \accumulator_reg[4]_i_1__55_n_7 ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire ena_mac;
  wire \x_reg[0]_0 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__55_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__56 
       (.I0(\x_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(ena_mac),
        .O(DI));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__55 
       (.I0(ena_mac),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__55_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__55 
       (.I0(ena_mac),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__55_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__55 
       (.I0(ena_mac),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__55_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__55 
       (.I0(ena_mac),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__55_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__55 
       (.I0(ena_mac),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__55_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__55 
       (.I0(ena_mac),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__55_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__55 
       (.I0(ena_mac),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__55_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__55_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__55 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__55_n_0 ,\accumulator_reg[0]_i_1__55_n_1 ,\accumulator_reg[0]_i_1__55_n_2 ,\accumulator_reg[0]_i_1__55_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\accumulator_reg[3]_0 }),
        .O({\accumulator_reg[0]_i_1__55_n_4 ,\accumulator_reg[0]_i_1__55_n_5 ,\accumulator_reg[0]_i_1__55_n_6 ,\accumulator_reg[0]_i_1__55_n_7 }),
        .S({\accumulator[0]_i_3__55_n_0 ,\accumulator[0]_i_4__55_n_0 ,\accumulator[0]_i_5__55_n_0 ,\accumulator_reg[3]_1 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__55_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__55_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__55_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__55_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__55 
       (.CI(\accumulator_reg[0]_i_1__55_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__55_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__55_n_1 ,\accumulator_reg[4]_i_1__55_n_2 ,\accumulator_reg[4]_i_1__55_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__55_n_4 ,\accumulator_reg[4]_i_1__55_n_5 ,\accumulator_reg[4]_i_1__55_n_6 ,\accumulator_reg[4]_i_1__55_n_7 }),
        .S({\accumulator[4]_i_2__55_n_0 ,\accumulator[4]_i_3__55_n_0 ,\accumulator[4]_i_4__55_n_0 ,\accumulator[4]_i_5__55_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__55_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__55_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__55_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(Q),
        .Q(\x_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "accumulator_cells" *) 
module accumulator_cells_9
   (\y_reg[0]_0 ,
    \x_reg[0]_0 ,
    D,
    \x_reg[0]_1 ,
    \b_load_reg[2] ,
    \y_reg[0]_1 ,
    Q,
    clock_IBUF_BUFG,
    btn_IBUF,
    \x_reg[0]_2 ,
    DI,
    S,
    \accumulator_reg[3]_0 ,
    \accumulator_reg[3]_1 ,
    \accumulator_reg[3]_2 ,
    \accumulator_reg[3]_3 ,
    \accumulator_reg[3]_4 );
  output \y_reg[0]_0 ;
  output \x_reg[0]_0 ;
  output [7:0]D;
  output [0:0]\x_reg[0]_1 ;
  output [0:0]\b_load_reg[2] ;
  output [0:0]\y_reg[0]_1 ;
  input [1:0]Q;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input \x_reg[0]_2 ;
  input [0:0]DI;
  input [0:0]S;
  input \accumulator_reg[3]_0 ;
  input [0:0]\accumulator_reg[3]_1 ;
  input \accumulator_reg[3]_2 ;
  input [0:0]\accumulator_reg[3]_3 ;
  input \accumulator_reg[3]_4 ;

  wire [7:0]D;
  wire [0:0]DI;
  wire [1:0]Q;
  wire [0:0]S;
  wire \accumulator[0]_i_3__0_n_0 ;
  wire \accumulator[0]_i_4__0_n_0 ;
  wire \accumulator[0]_i_5__0_n_0 ;
  wire \accumulator[4]_i_2__0_n_0 ;
  wire \accumulator[4]_i_3__0_n_0 ;
  wire \accumulator[4]_i_4__0_n_0 ;
  wire \accumulator[4]_i_5__0_n_0 ;
  wire \accumulator_reg[0]_i_1__0_n_0 ;
  wire \accumulator_reg[0]_i_1__0_n_1 ;
  wire \accumulator_reg[0]_i_1__0_n_2 ;
  wire \accumulator_reg[0]_i_1__0_n_3 ;
  wire \accumulator_reg[0]_i_1__0_n_4 ;
  wire \accumulator_reg[0]_i_1__0_n_5 ;
  wire \accumulator_reg[0]_i_1__0_n_6 ;
  wire \accumulator_reg[0]_i_1__0_n_7 ;
  wire \accumulator_reg[3]_0 ;
  wire [0:0]\accumulator_reg[3]_1 ;
  wire \accumulator_reg[3]_2 ;
  wire [0:0]\accumulator_reg[3]_3 ;
  wire \accumulator_reg[3]_4 ;
  wire \accumulator_reg[4]_i_1__0_n_1 ;
  wire \accumulator_reg[4]_i_1__0_n_2 ;
  wire \accumulator_reg[4]_i_1__0_n_3 ;
  wire \accumulator_reg[4]_i_1__0_n_4 ;
  wire \accumulator_reg[4]_i_1__0_n_5 ;
  wire \accumulator_reg[4]_i_1__0_n_6 ;
  wire \accumulator_reg[4]_i_1__0_n_7 ;
  wire [0:0]\b_load_reg[2] ;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire \x_reg[0]_0 ;
  wire [0:0]\x_reg[0]_1 ;
  wire \x_reg[0]_2 ;
  wire \y_reg[0]_0 ;
  wire [0:0]\y_reg[0]_1 ;
  wire [3:3]\NLW_accumulator_reg[4]_i_1__0_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \accumulator[0]_i_2__1 
       (.I0(\x_reg[0]_0 ),
        .I1(Q[1]),
        .I2(\accumulator_reg[3]_0 ),
        .O(\x_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_3__0 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[3]),
        .O(\accumulator[0]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_4__0 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[2]),
        .O(\accumulator[0]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[0]_i_5__0 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[1]),
        .O(\accumulator[0]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__1 
       (.I0(Q[1]),
        .I1(\x_reg[0]_0 ),
        .I2(\accumulator_reg[3]_1 ),
        .I3(\accumulator_reg[3]_0 ),
        .O(\b_load_reg[2] ));
  LUT4 #(
    .INIT(16'h7800)) 
    \accumulator[0]_i_6__8 
       (.I0(\y_reg[0]_0 ),
        .I1(\accumulator_reg[3]_2 ),
        .I2(\accumulator_reg[3]_3 ),
        .I3(\accumulator_reg[3]_4 ),
        .O(\y_reg[0]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_2__0 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[7]),
        .O(\accumulator[4]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_3__0 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[6]),
        .O(\accumulator[4]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_4__0 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[5]),
        .O(\accumulator[4]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \accumulator[4]_i_5__0 
       (.I0(\accumulator_reg[3]_0 ),
        .I1(D[4]),
        .O(\accumulator[4]_i_5__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__0_n_7 ),
        .Q(D[0]));
  CARRY4 \accumulator_reg[0]_i_1__0 
       (.CI(1'b0),
        .CO({\accumulator_reg[0]_i_1__0_n_0 ,\accumulator_reg[0]_i_1__0_n_1 ,\accumulator_reg[0]_i_1__0_n_2 ,\accumulator_reg[0]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DI}),
        .O({\accumulator_reg[0]_i_1__0_n_4 ,\accumulator_reg[0]_i_1__0_n_5 ,\accumulator_reg[0]_i_1__0_n_6 ,\accumulator_reg[0]_i_1__0_n_7 }),
        .S({\accumulator[0]_i_3__0_n_0 ,\accumulator[0]_i_4__0_n_0 ,\accumulator[0]_i_5__0_n_0 ,S}));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__0_n_6 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__0_n_5 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[0]_i_1__0_n_4 ),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__0_n_7 ),
        .Q(D[4]));
  CARRY4 \accumulator_reg[4]_i_1__0 
       (.CI(\accumulator_reg[0]_i_1__0_n_0 ),
        .CO({\NLW_accumulator_reg[4]_i_1__0_CO_UNCONNECTED [3],\accumulator_reg[4]_i_1__0_n_1 ,\accumulator_reg[4]_i_1__0_n_2 ,\accumulator_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulator_reg[4]_i_1__0_n_4 ,\accumulator_reg[4]_i_1__0_n_5 ,\accumulator_reg[4]_i_1__0_n_6 ,\accumulator_reg[4]_i_1__0_n_7 }),
        .S({\accumulator[4]_i_2__0_n_0 ,\accumulator[4]_i_3__0_n_0 ,\accumulator[4]_i_4__0_n_0 ,\accumulator[4]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__0_n_6 ),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__0_n_5 ),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \accumulator_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\accumulator_reg[4]_i_1__0_n_4 ),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\x_reg[0]_2 ),
        .Q(\x_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(Q[0]),
        .Q(\y_reg[0]_0 ));
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

  wire CLK;
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

  counter__parameterized0 base_clock_counter
       (.base_clock(base_clock),
        .btn_IBUF(btn_IBUF),
        .\counter_reg[1]_0 (clock_base_ref_n_0));
  ref_clock_0 clock_base_ref
       (.btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .out_clock_ref_reg_0(clock_base_ref_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clock_out_i_1
       (.I0(CLK),
        .O(clock_out_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clock_out_reg
       (.C(base_clock),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(clock_out_i_1_n_0),
        .Q(CLK));
  counter__parameterized1 sampling_counter
       (.D(D),
        .E(E),
        .\FSM_sequential_current_fsm_reg[0] (\FSM_sequential_current_fsm_reg[0] ),
        .Q(Q),
        .bit_start(bit_start),
        .btn_IBUF(btn_IBUF),
        .\counter_reg[3]_0 (CLK),
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

  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h04)) 
    counter3
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[1] ),
        .O(counter3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \counter[0]_i_1__1 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1__1 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .O(\counter[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
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
module counter_1
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

  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h04)) 
    counter3
       (.I0(counter[0]),
        .I1(counter[2]),
        .I2(counter[1]),
        .O(counter3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \counter[0]_i_1 
       (.I0(counter[1]),
        .I1(counter[2]),
        .I2(counter[0]),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1__3 
       (.I0(counter[1]),
        .I1(counter[0]),
        .O(\counter[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
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

  (* SOFT_HLUTNM = "soft_lutpair26" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \counter[1]_i_1__2 
       (.I0(ena),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .O(\counter[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \counter[2]_i_1__2 
       (.I0(ena),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .I3(counter_reg[2]),
        .O(\counter[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
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
  wire \counter[4]_i_2_n_0 ;
  wire \counter[4]_i_3_n_0 ;
  wire \counter[4]_i_4_n_0 ;
  wire \counter[4]_i_5_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire \counter[8]_i_4_n_0 ;
  wire \counter[8]_i_5_n_0 ;
  wire [12:0]counter_reg;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_1 ;
  wire \counter_reg[0]_i_1_n_2 ;
  wire \counter_reg[0]_i_1_n_3 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire counting_done_i_1__2_n_0;
  wire counting_done_i_2_n_0;
  wire counting_done_i_3_n_0;
  wire done;
  wire [3:0]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_counter_reg[12]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h7FFFFFFF00000000)) 
    \counter[0]_i_2 
       (.I0(counting_done_i_2_n_0),
        .I1(counter_reg[12]),
        .I2(counter_reg[9]),
        .I3(counter_reg[8]),
        .I4(counting_done_i_3_n_0),
        .I5(counter_reg[0]),
        .O(\counter[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF00000000)) 
    \counter[0]_i_3 
       (.I0(counting_done_i_2_n_0),
        .I1(counter_reg[12]),
        .I2(counter_reg[9]),
        .I3(counter_reg[8]),
        .I4(counting_done_i_3_n_0),
        .I5(counter_reg[3]),
        .O(\counter[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF00000000)) 
    \counter[0]_i_4 
       (.I0(counting_done_i_2_n_0),
        .I1(counter_reg[12]),
        .I2(counter_reg[9]),
        .I3(counter_reg[8]),
        .I4(counting_done_i_3_n_0),
        .I5(counter_reg[2]),
        .O(\counter[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF00000000)) 
    \counter[0]_i_5 
       (.I0(counting_done_i_2_n_0),
        .I1(counter_reg[12]),
        .I2(counter_reg[9]),
        .I3(counter_reg[8]),
        .I4(counting_done_i_3_n_0),
        .I5(counter_reg[1]),
        .O(\counter[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \counter[0]_i_6 
       (.I0(counting_done_i_2_n_0),
        .I1(counter_reg[12]),
        .I2(counter_reg[9]),
        .I3(counter_reg[8]),
        .I4(counting_done_i_3_n_0),
        .I5(counter_reg[0]),
        .O(\counter[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h4CCCCCCC)) 
    \counter[12]_i_2 
       (.I0(counting_done_i_2_n_0),
        .I1(counter_reg[12]),
        .I2(counter_reg[9]),
        .I3(counter_reg[8]),
        .I4(counting_done_i_3_n_0),
        .O(\counter[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF00000000)) 
    \counter[4]_i_2 
       (.I0(counting_done_i_2_n_0),
        .I1(counter_reg[12]),
        .I2(counter_reg[9]),
        .I3(counter_reg[8]),
        .I4(counting_done_i_3_n_0),
        .I5(counter_reg[7]),
        .O(\counter[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF00000000)) 
    \counter[4]_i_3 
       (.I0(counting_done_i_2_n_0),
        .I1(counter_reg[12]),
        .I2(counter_reg[9]),
        .I3(counter_reg[8]),
        .I4(counting_done_i_3_n_0),
        .I5(counter_reg[6]),
        .O(\counter[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF00000000)) 
    \counter[4]_i_4 
       (.I0(counting_done_i_2_n_0),
        .I1(counter_reg[12]),
        .I2(counter_reg[9]),
        .I3(counter_reg[8]),
        .I4(counting_done_i_3_n_0),
        .I5(counter_reg[5]),
        .O(\counter[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF00000000)) 
    \counter[4]_i_5 
       (.I0(counting_done_i_2_n_0),
        .I1(counter_reg[12]),
        .I2(counter_reg[9]),
        .I3(counter_reg[8]),
        .I4(counting_done_i_3_n_0),
        .I5(counter_reg[4]),
        .O(\counter[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF00000000)) 
    \counter[8]_i_2 
       (.I0(counting_done_i_2_n_0),
        .I1(counter_reg[12]),
        .I2(counter_reg[9]),
        .I3(counter_reg[8]),
        .I4(counting_done_i_3_n_0),
        .I5(counter_reg[11]),
        .O(\counter[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF00000000)) 
    \counter[8]_i_3 
       (.I0(counting_done_i_2_n_0),
        .I1(counter_reg[12]),
        .I2(counter_reg[9]),
        .I3(counter_reg[8]),
        .I4(counting_done_i_3_n_0),
        .I5(counter_reg[10]),
        .O(\counter[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h70F0F0F0)) 
    \counter[8]_i_4 
       (.I0(counting_done_i_2_n_0),
        .I1(counter_reg[12]),
        .I2(counter_reg[9]),
        .I3(counter_reg[8]),
        .I4(counting_done_i_3_n_0),
        .O(\counter[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h7F00FF00)) 
    \counter[8]_i_5 
       (.I0(counting_done_i_2_n_0),
        .I1(counter_reg[12]),
        .I2(counter_reg[9]),
        .I3(counter_reg[8]),
        .I4(counting_done_i_3_n_0),
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
        .CO({\counter_reg[0]_i_1_n_0 ,\counter_reg[0]_i_1_n_1 ,\counter_reg[0]_i_1_n_2 ,\counter_reg[0]_i_1_n_3 }),
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
        .O({\NLW_counter_reg[12]_i_1_O_UNCONNECTED [3:1],\counter_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\counter[12]_i_2_n_0 }));
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
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
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
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
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
  LUT5 #(
    .INIT(32'h80000000)) 
    counting_done_i_1__2
       (.I0(counting_done_i_2_n_0),
        .I1(counter_reg[12]),
        .I2(counter_reg[9]),
        .I3(counter_reg[8]),
        .I4(counting_done_i_3_n_0),
        .O(counting_done_i_1__2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    counting_done_i_2
       (.I0(counter_reg[11]),
        .I1(counter_reg[6]),
        .I2(counter_reg[10]),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .I5(counter_reg[5]),
        .O(counting_done_i_2_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    counting_done_i_3
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .I2(counter_reg[7]),
        .I3(counter_reg[2]),
        .O(counting_done_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    counting_done_reg
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(counting_done_i_1__2_n_0),
        .Q(done));
endmodule

module mem2seriala
   (systolicControlUnit_mem2serial_rvalid_o,
    Q,
    \i_counter_reg[2]_0 ,
    systolicControlUnit_uart_valid_tx_in,
    btn_IBUF,
    CLK);
  output systolicControlUnit_mem2serial_rvalid_o;
  output [2:0]Q;
  output [2:0]\i_counter_reg[2]_0 ;
  input systolicControlUnit_uart_valid_tx_in;
  input [0:0]btn_IBUF;
  input CLK;

  wire CLK;
  wire [2:0]Q;
  wire [0:0]btn_IBUF;
  wire [2:0]\i_counter_reg[2]_0 ;
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
  wire systolicControlUnit_mem2serial_rvalid_o;
  wire systolicControlUnit_uart_valid_tx_in;

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
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem2seriala_fsm[0]_i_1 
       (.I0(next_mem2seriala_fsm[0]),
        .I1(btn_IBUF),
        .I2(mem2seriala_fsm[0]),
        .O(\mem2seriala_fsm[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h002E)) 
    \next_mem2seriala_fsm_reg[0]_i_1 
       (.I0(systolicControlUnit_uart_valid_tx_in),
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
        .Q(systolicControlUnit_mem2serial_rvalid_o));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    rvalid_o_reg_i_1
       (.I0(mem2seriala_fsm[0]),
        .I1(mem2seriala_fsm[1]),
        .O(rvalid_o_reg_i_1_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "ram_single_port,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
module ram_single_port
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;
  output rsta_busy;

  wire [3:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire ena;
  wire rsta;
  wire rsta_busy;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.54005 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "ram_single_port.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "15" *) 
  (* C_READ_DEPTH_B = "15" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "15" *) 
  (* C_WRITE_DEPTH_B = "15" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  ram_single_port_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
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
module ref_clock_0
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

  counter_1 counter_base
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

module serial2mem
   (douta,
    D,
    \mem_fsm_reg[1]_0 ,
    p_0_in,
    E,
    \mem_fsm_reg[0]_0 ,
    clka,
    btn_IBUF,
    wea,
    Q,
    \FSM_onehot_fsm_unit_control_reg[1] ,
    systolicControlUnit_serial2mem_opb_valid_i,
    systolicControlUnit_serial2mem_opb_rw,
    uart_data_rx_out,
    \mem_fsm_reg[1]_1 ,
    \buf_data_reg[0]_0 );
  output [7:0]douta;
  output [0:0]D;
  output [1:0]\mem_fsm_reg[1]_0 ;
  output p_0_in;
  output [0:0]E;
  output \mem_fsm_reg[0]_0 ;
  input clka;
  input [0:0]btn_IBUF;
  input [0:0]wea;
  input [1:0]Q;
  input \FSM_onehot_fsm_unit_control_reg[1] ;
  input systolicControlUnit_serial2mem_opb_valid_i;
  input systolicControlUnit_serial2mem_opb_rw;
  input uart_data_rx_out;
  input [1:0]\mem_fsm_reg[1]_1 ;
  input [0:0]\buf_data_reg[0]_0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_fsm_unit_control_reg[1] ;
  wire [1:0]Q;
  wire [0:0]btn_IBUF;
  wire [0:0]\buf_data_reg[0]_0 ;
  wire clka;
  wire [3:0]cnt;
  wire \cnt[0]_i_1__0_n_0 ;
  wire \cnt[1]_i_1__0_n_0 ;
  wire \cnt[2]_i_1__0_n_0 ;
  wire \cnt[3]_i_1__0_n_0 ;
  wire \cnt[3]_i_2__0_n_0 ;
  wire \cnt[3]_i_3__0_n_0 ;
  wire [2:0]cnt_shift;
  wire \cnt_shift[0]_i_1__0_n_0 ;
  wire \cnt_shift[1]_i_1__0_n_0 ;
  wire \cnt_shift[2]_i_1__0_n_0 ;
  wire [7:0]douta;
  wire \mem_fsm_reg[0]_0 ;
  wire [1:0]\mem_fsm_reg[1]_0 ;
  wire [1:0]\mem_fsm_reg[1]_1 ;
  wire [7:1]next_buf_data;
  wire p_0_in;
  wire [7:0]single_port_ram_di;
  wire single_port_ram_en;
  wire systolicControlUnit_serial2mem_opb_rw;
  wire systolicControlUnit_serial2mem_opb_valid_i;
  wire uart_data_rx_out;
  wire [0:0]wea;
  wire NLW_mem_rsta_busy_UNCONNECTED;

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
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    \b_load[7]_i_2 
       (.I0(\mem_fsm_reg[1]_0 [0]),
        .I1(\mem_fsm_reg[1]_0 [1]),
        .I2(cnt[1]),
        .I3(cnt[0]),
        .I4(cnt[2]),
        .I5(cnt[3]),
        .O(\mem_fsm_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\buf_data_reg[0]_0 ),
        .Q(next_buf_data[1]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[1]),
        .Q(next_buf_data[2]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[2]),
        .Q(next_buf_data[3]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[3]),
        .Q(next_buf_data[4]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[4] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[4]),
        .Q(next_buf_data[5]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[5] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[5]),
        .Q(next_buf_data[6]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[6] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[6]),
        .Q(next_buf_data[7]));
  LUT6 #(
    .INIT(64'h00007F0000FF8000)) 
    \cnt[0]_i_1__0 
       (.I0(cnt_shift[1]),
        .I1(cnt_shift[2]),
        .I2(cnt_shift[0]),
        .I3(\mem_fsm_reg[1]_0 [0]),
        .I4(\mem_fsm_reg[1]_0 [1]),
        .I5(cnt[0]),
        .O(\cnt[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h04383C00)) 
    \cnt[1]_i_1__0 
       (.I0(\cnt[3]_i_2__0_n_0 ),
        .I1(\mem_fsm_reg[1]_0 [0]),
        .I2(\mem_fsm_reg[1]_0 [1]),
        .I3(cnt[1]),
        .I4(cnt[0]),
        .O(\cnt[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h04383C003C003C00)) 
    \cnt[2]_i_1__0 
       (.I0(\cnt[3]_i_2__0_n_0 ),
        .I1(\mem_fsm_reg[1]_0 [0]),
        .I2(\mem_fsm_reg[1]_0 [1]),
        .I3(cnt[2]),
        .I4(cnt[0]),
        .I5(cnt[1]),
        .O(\cnt[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h3C003C0004383C00)) 
    \cnt[3]_i_1__0 
       (.I0(\cnt[3]_i_2__0_n_0 ),
        .I1(\mem_fsm_reg[1]_0 [0]),
        .I2(\mem_fsm_reg[1]_0 [1]),
        .I3(cnt[3]),
        .I4(cnt[2]),
        .I5(\cnt[3]_i_3__0_n_0 ),
        .O(\cnt[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cnt[3]_i_2__0 
       (.I0(cnt_shift[0]),
        .I1(cnt_shift[2]),
        .I2(cnt_shift[1]),
        .O(\cnt[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cnt[3]_i_3__0 
       (.I0(cnt[0]),
        .I1(cnt[1]),
        .O(\cnt[3]_i_3__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\cnt[0]_i_1__0_n_0 ),
        .Q(cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\cnt[1]_i_1__0_n_0 ),
        .Q(cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\cnt[2]_i_1__0_n_0 ),
        .Q(cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\cnt[3]_i_1__0_n_0 ),
        .Q(cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \cnt_shift[0]_i_1__0 
       (.I0(\mem_fsm_reg[1]_0 [1]),
        .I1(\mem_fsm_reg[1]_0 [0]),
        .I2(cnt_shift[0]),
        .O(\cnt_shift[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \cnt_shift[1]_i_1__0 
       (.I0(\mem_fsm_reg[1]_0 [1]),
        .I1(\mem_fsm_reg[1]_0 [0]),
        .I2(cnt_shift[0]),
        .I3(cnt_shift[1]),
        .O(\cnt_shift[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h04444000)) 
    \cnt_shift[2]_i_1__0 
       (.I0(\mem_fsm_reg[1]_0 [1]),
        .I1(\mem_fsm_reg[1]_0 [0]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(\cnt_shift[2]_i_1__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_shift_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\cnt_shift[0]_i_1__0_n_0 ),
        .Q(cnt_shift[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_shift_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\cnt_shift[1]_i_1__0_n_0 ),
        .Q(cnt_shift[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_shift_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\cnt_shift[2]_i_1__0_n_0 ),
        .Q(cnt_shift[2]));
  (* CHECK_LICENSE_TYPE = "ram_single_port,blk_mem_gen_v8_4_11,{}" *) 
  (* IMPORTED_FROM = "c:/Users/ValmyrSilva07/Desktop/SystolicCore/vivado/SystolicCore/SystolicCore.gen/sources_1/ip/ram_single_port/ram_single_port.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
  ram_single_port mem
       (.addra(cnt),
        .clka(clka),
        .dina(single_port_ram_di),
        .douta(douta),
        .ena(single_port_ram_en),
        .rsta(btn_IBUF),
        .rsta_busy(NLW_mem_rsta_busy_UNCONNECTED),
        .wea(wea));
  LUT1 #(
    .INIT(2'h1)) 
    \mem_fsm[1]_i_1 
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
       (.C(clka),
        .CE(E),
        .D(\mem_fsm_reg[1]_1 [0]),
        .Q(\mem_fsm_reg[1]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_fsm_reg[1] 
       (.C(clka),
        .CE(E),
        .D(\mem_fsm_reg[1]_1 [1]),
        .Q(\mem_fsm_reg[1]_0 [1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h80FF8080)) 
    mem_i_1
       (.I0(cnt_shift[2]),
        .I1(cnt_shift[0]),
        .I2(cnt_shift[1]),
        .I3(\mem_fsm_reg[1]_0 [0]),
        .I4(\mem_fsm_reg[1]_0 [1]),
        .O(single_port_ram_en));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    mem_i_2__0
       (.I0(cnt_shift[1]),
        .I1(cnt_shift[0]),
        .I2(cnt_shift[2]),
        .I3(next_buf_data[7]),
        .O(single_port_ram_di[7]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    mem_i_3__0
       (.I0(cnt_shift[1]),
        .I1(cnt_shift[0]),
        .I2(cnt_shift[2]),
        .I3(next_buf_data[6]),
        .O(single_port_ram_di[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    mem_i_4__0
       (.I0(cnt_shift[1]),
        .I1(cnt_shift[0]),
        .I2(cnt_shift[2]),
        .I3(next_buf_data[5]),
        .O(single_port_ram_di[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    mem_i_5__0
       (.I0(cnt_shift[1]),
        .I1(cnt_shift[0]),
        .I2(cnt_shift[2]),
        .I3(next_buf_data[4]),
        .O(single_port_ram_di[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    mem_i_6__0
       (.I0(cnt_shift[1]),
        .I1(cnt_shift[0]),
        .I2(cnt_shift[2]),
        .I3(next_buf_data[3]),
        .O(single_port_ram_di[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    mem_i_7__0
       (.I0(cnt_shift[1]),
        .I1(cnt_shift[0]),
        .I2(cnt_shift[2]),
        .I3(next_buf_data[2]),
        .O(single_port_ram_di[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    mem_i_8__0
       (.I0(cnt_shift[1]),
        .I1(cnt_shift[0]),
        .I2(cnt_shift[2]),
        .I3(next_buf_data[1]),
        .O(single_port_ram_di[1]));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    mem_i_9
       (.I0(cnt_shift[1]),
        .I1(cnt_shift[0]),
        .I2(cnt_shift[2]),
        .I3(systolicControlUnit_serial2mem_opb_valid_i),
        .I4(systolicControlUnit_serial2mem_opb_rw),
        .I5(uart_data_rx_out),
        .O(single_port_ram_di[0]));
endmodule

(* ORIG_REF_NAME = "serial2mem" *) 
module serial2mem__xdcDup__1
   (douta,
    \mem_fsm_reg[0]_0 ,
    Q,
    p_0_in,
    \mem_fsm_reg[0]_1 ,
    \FSM_onehot_fsm_unit_control_reg[2] ,
    \mem_fsm_reg[1]_0 ,
    clka,
    btn_IBUF,
    wea,
    \FSM_onehot_fsm_unit_control_next_reg[2]_i_1 ,
    p_0_in_0,
    systolicControlUnit_serial2mem_opa_valid_i,
    systolicControlUnit_serial2mem_opb_rw,
    uart_data_rx_out,
    serial2mem_opb_valid_i_reg,
    E,
    D,
    \buf_data_reg[0]_0 );
  output [7:0]douta;
  output \mem_fsm_reg[0]_0 ;
  output [1:0]Q;
  output p_0_in;
  output \mem_fsm_reg[0]_1 ;
  output \FSM_onehot_fsm_unit_control_reg[2] ;
  output \mem_fsm_reg[1]_0 ;
  input clka;
  input [0:0]btn_IBUF;
  input [0:0]wea;
  input [1:0]\FSM_onehot_fsm_unit_control_next_reg[2]_i_1 ;
  input p_0_in_0;
  input systolicControlUnit_serial2mem_opa_valid_i;
  input systolicControlUnit_serial2mem_opb_rw;
  input uart_data_rx_out;
  input [1:0]serial2mem_opb_valid_i_reg;
  input [0:0]E;
  input [1:0]D;
  input [0:0]\buf_data_reg[0]_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]\FSM_onehot_fsm_unit_control_next_reg[2]_i_1 ;
  wire \FSM_onehot_fsm_unit_control_reg[2] ;
  wire [1:0]Q;
  wire [0:0]btn_IBUF;
  wire [0:0]\buf_data_reg[0]_0 ;
  wire clka;
  wire [3:0]cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire \cnt[3]_i_2_n_0 ;
  wire \cnt[3]_i_3_n_0 ;
  wire [2:0]cnt_shift;
  wire \cnt_shift[0]_i_1_n_0 ;
  wire \cnt_shift[1]_i_1_n_0 ;
  wire \cnt_shift[2]_i_1_n_0 ;
  wire [7:0]douta;
  wire \mem_fsm_reg[0]_0 ;
  wire \mem_fsm_reg[0]_1 ;
  wire \mem_fsm_reg[1]_0 ;
  wire [7:1]next_buf_data;
  wire p_0_in;
  wire p_0_in_0;
  wire [1:0]serial2mem_opb_valid_i_reg;
  wire [7:0]single_port_ram_di;
  wire single_port_ram_en;
  wire systolicControlUnit_serial2mem_opa_valid_i;
  wire systolicControlUnit_serial2mem_opb_rw;
  wire uart_data_rx_out;
  wire [0:0]wea;
  wire NLW_mem_rsta_busy_UNCONNECTED;

  LUT6 #(
    .INIT(64'hAAAAAAAA80000000)) 
    \FSM_onehot_fsm_unit_control_next_reg[1]_i_2 
       (.I0(Q[1]),
        .I1(cnt[1]),
        .I2(cnt[0]),
        .I3(cnt[2]),
        .I4(cnt[3]),
        .I5(Q[0]),
        .O(\mem_fsm_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hB000B0B000000000)) 
    \FSM_onehot_fsm_unit_control_next_reg[2]_i_2 
       (.I0(Q[0]),
        .I1(p_0_in),
        .I2(Q[1]),
        .I3(\FSM_onehot_fsm_unit_control_next_reg[2]_i_1 [0]),
        .I4(p_0_in_0),
        .I5(\FSM_onehot_fsm_unit_control_next_reg[2]_i_1 [1]),
        .O(\mem_fsm_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    \a_load[7]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(cnt[1]),
        .I3(cnt[0]),
        .I4(cnt[2]),
        .I5(cnt[3]),
        .O(\mem_fsm_reg[0]_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\buf_data_reg[0]_0 ),
        .Q(next_buf_data[1]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[1]),
        .Q(next_buf_data[2]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[2]),
        .Q(next_buf_data[3]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[3]),
        .Q(next_buf_data[4]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[4] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[4]),
        .Q(next_buf_data[5]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[5] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[5]),
        .Q(next_buf_data[6]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[6] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[6]),
        .Q(next_buf_data[7]));
  LUT6 #(
    .INIT(64'h00007F0000FF8000)) 
    \cnt[0]_i_1 
       (.I0(cnt_shift[1]),
        .I1(cnt_shift[2]),
        .I2(cnt_shift[0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(cnt[0]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h04383C00)) 
    \cnt[1]_i_1 
       (.I0(\cnt[3]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(cnt[1]),
        .I4(cnt[0]),
        .O(\cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04383C003C003C00)) 
    \cnt[2]_i_1 
       (.I0(\cnt[3]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(cnt[2]),
        .I4(cnt[0]),
        .I5(cnt[1]),
        .O(\cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3C003C0004383C00)) 
    \cnt[3]_i_1 
       (.I0(\cnt[3]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(cnt[3]),
        .I4(cnt[2]),
        .I5(\cnt[3]_i_3_n_0 ),
        .O(\cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \cnt[3]_i_2 
       (.I0(cnt_shift[0]),
        .I1(cnt_shift[2]),
        .I2(cnt_shift[1]),
        .O(\cnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cnt[3]_i_3 
       (.I0(cnt[0]),
        .I1(cnt[1]),
        .O(\cnt[3]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\cnt[3]_i_1_n_0 ),
        .Q(cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \cnt_shift[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(cnt_shift[0]),
        .O(\cnt_shift[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \cnt_shift[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(cnt_shift[0]),
        .I3(cnt_shift[1]),
        .O(\cnt_shift[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h04444000)) 
    \cnt_shift[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(\cnt_shift[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_shift_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\cnt_shift[0]_i_1_n_0 ),
        .Q(cnt_shift[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_shift_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\cnt_shift[1]_i_1_n_0 ),
        .Q(cnt_shift[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_shift_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\cnt_shift[2]_i_1_n_0 ),
        .Q(cnt_shift[2]));
  (* CHECK_LICENSE_TYPE = "ram_single_port,blk_mem_gen_v8_4_11,{}" *) 
  (* IMPORTED_FROM = "c:/Users/ValmyrSilva07/Desktop/SystolicCore/vivado/SystolicCore/SystolicCore.gen/sources_1/ip/ram_single_port/ram_single_port.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
  ram_single_port mem
       (.addra(cnt),
        .clka(clka),
        .dina(single_port_ram_di),
        .douta(douta),
        .ena(single_port_ram_en),
        .rsta(btn_IBUF),
        .rsta_busy(NLW_mem_rsta_busy_UNCONNECTED),
        .wea(wea));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \mem_fsm[1]_i_3 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .I3(cnt[3]),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \mem_fsm_reg[0] 
       (.C(clka),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_fsm_reg[1] 
       (.C(clka),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    mem_i_10
       (.I0(cnt_shift[1]),
        .I1(cnt_shift[0]),
        .I2(cnt_shift[2]),
        .I3(next_buf_data[1]),
        .O(single_port_ram_di[1]));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    mem_i_11
       (.I0(cnt_shift[1]),
        .I1(cnt_shift[0]),
        .I2(cnt_shift[2]),
        .I3(systolicControlUnit_serial2mem_opa_valid_i),
        .I4(systolicControlUnit_serial2mem_opb_rw),
        .I5(uart_data_rx_out),
        .O(single_port_ram_di[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h80FF8080)) 
    mem_i_2
       (.I0(cnt_shift[2]),
        .I1(cnt_shift[0]),
        .I2(cnt_shift[1]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(single_port_ram_en));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    mem_i_4
       (.I0(cnt_shift[1]),
        .I1(cnt_shift[0]),
        .I2(cnt_shift[2]),
        .I3(next_buf_data[7]),
        .O(single_port_ram_di[7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    mem_i_5
       (.I0(cnt_shift[1]),
        .I1(cnt_shift[0]),
        .I2(cnt_shift[2]),
        .I3(next_buf_data[6]),
        .O(single_port_ram_di[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    mem_i_6
       (.I0(cnt_shift[1]),
        .I1(cnt_shift[0]),
        .I2(cnt_shift[2]),
        .I3(next_buf_data[5]),
        .O(single_port_ram_di[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    mem_i_7
       (.I0(cnt_shift[1]),
        .I1(cnt_shift[0]),
        .I2(cnt_shift[2]),
        .I3(next_buf_data[4]),
        .O(single_port_ram_di[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    mem_i_8
       (.I0(cnt_shift[1]),
        .I1(cnt_shift[0]),
        .I2(cnt_shift[2]),
        .I3(next_buf_data[3]),
        .O(single_port_ram_di[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    mem_i_9__0
       (.I0(cnt_shift[1]),
        .I1(cnt_shift[0]),
        .I2(cnt_shift[2]),
        .I3(next_buf_data[2]),
        .O(single_port_ram_di[2]));
  LUT5 #(
    .INIT(32'hEEAEAAAA)) 
    serial2mem_opb_valid_i_reg_i_1
       (.I0(serial2mem_opb_valid_i_reg[1]),
        .I1(Q[1]),
        .I2(p_0_in),
        .I3(Q[0]),
        .I4(serial2mem_opb_valid_i_reg[0]),
        .O(\FSM_onehot_fsm_unit_control_reg[2] ));
endmodule

module systolicControlUnitTop
   (systolicControlUnit_serial2mem_opa_valid_i,
    systolicControlUnit_serial2mem_opb_valid_i,
    systolicControlUnit_serial2mem_opb_rw,
    systolicControlUnit_syst_rready_i,
    Q,
    systolicControlUnit_uart_valid_tx_in,
    wea,
    ready_rx_out_reg,
    \FSM_sequential_currentStateSystolicControlUnit_reg[0] ,
    \FSM_sequential_currentStateSystolicControlUnit_reg[0]_0 ,
    \data_rx_out_reg[0] ,
    \data_rx_out_reg[0]_0 ,
    D,
    \mem_fsm_reg[1] ,
    \buf_data_reg[0] ,
    clock_IBUF,
    uart_ready_rx_out,
    douta,
    \b_load_reg[7] ,
    \b_load_reg[7]_0 ,
    \a_load_reg[7] ,
    \a_load_reg[7]_0 ,
    uart_data_rx_out,
    \mem_fsm_reg[1]_0 ,
    p_0_in,
    \mem_fsm_reg[1]_1 ,
    p_0_in_0,
    clock_IBUF_BUFG,
    btn_IBUF,
    \FSM_onehot_fsm_unit_control_reg[3]_0 );
  output systolicControlUnit_serial2mem_opa_valid_i;
  output systolicControlUnit_serial2mem_opb_valid_i;
  output systolicControlUnit_serial2mem_opb_rw;
  output systolicControlUnit_syst_rready_i;
  output [3:0]Q;
  output systolicControlUnit_uart_valid_tx_in;
  output [0:0]wea;
  output ready_rx_out_reg;
  output [7:0]\FSM_sequential_currentStateSystolicControlUnit_reg[0] ;
  output [7:0]\FSM_sequential_currentStateSystolicControlUnit_reg[0]_0 ;
  output [0:0]\data_rx_out_reg[0] ;
  output [0:0]\data_rx_out_reg[0]_0 ;
  output [1:0]D;
  output [1:0]\mem_fsm_reg[1] ;
  input \buf_data_reg[0] ;
  input clock_IBUF;
  input uart_ready_rx_out;
  input [7:0]douta;
  input \b_load_reg[7] ;
  input [1:0]\b_load_reg[7]_0 ;
  input [7:0]\a_load_reg[7] ;
  input \a_load_reg[7]_0 ;
  input uart_data_rx_out;
  input [1:0]\mem_fsm_reg[1]_0 ;
  input p_0_in;
  input [1:0]\mem_fsm_reg[1]_1 ;
  input p_0_in_0;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [2:0]\FSM_onehot_fsm_unit_control_reg[3]_0 ;

  wire [1:0]D;
  wire [2:0]\FSM_onehot_fsm_unit_control_reg[3]_0 ;
  wire [7:0]\FSM_sequential_currentStateSystolicControlUnit_reg[0] ;
  wire [7:0]\FSM_sequential_currentStateSystolicControlUnit_reg[0]_0 ;
  wire [3:0]Q;
  wire [7:0]\a_load_reg[7] ;
  wire \a_load_reg[7]_0 ;
  wire \b_load_reg[7] ;
  wire [1:0]\b_load_reg[7]_0 ;
  wire [0:0]btn_IBUF;
  wire \buf_data_reg[0] ;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire [0:0]\data_rx_out_reg[0] ;
  wire [0:0]\data_rx_out_reg[0]_0 ;
  wire [7:0]douta;
  wire [3:0]fsm_unit_control_next;
  wire [1:0]\mem_fsm_reg[1] ;
  wire [1:0]\mem_fsm_reg[1]_0 ;
  wire [1:0]\mem_fsm_reg[1]_1 ;
  wire p_0_in;
  wire p_0_in_0;
  wire ready_rx_out_reg;
  wire serial2mem_opa_rw_reg_i_1_n_0;
  wire serial2mem_opa_valid_i_reg_i_1_n_0;
  wire serial2mem_opa_valid_i_reg_i_2_n_0;
  wire systolicControlUnit_serial2mem_opa_valid_i;
  wire systolicControlUnit_serial2mem_opb_rw;
  wire systolicControlUnit_serial2mem_opb_valid_i;
  wire systolicControlUnit_syst_rready_i;
  wire systolicControlUnit_uart_valid_tx_in;
  wire uart_data_rx_out;
  wire uart_ready_rx_out;
  wire [0:0]wea;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_fsm_unit_control_next_reg[0] 
       (.CLR(1'b0),
        .D(1'b0),
        .G(serial2mem_opa_valid_i_reg_i_2_n_0),
        .GE(1'b1),
        .Q(fsm_unit_control_next[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_unit_control_next_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_fsm_unit_control_reg[3]_0 [0]),
        .G(serial2mem_opa_valid_i_reg_i_2_n_0),
        .GE(1'b1),
        .Q(fsm_unit_control_next[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_unit_control_next_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_onehot_fsm_unit_control_reg[3]_0 [1]),
        .G(serial2mem_opa_valid_i_reg_i_2_n_0),
        .GE(1'b1),
        .Q(fsm_unit_control_next[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_unit_control_next_reg[3] 
       (.CLR(1'b0),
        .D(\FSM_onehot_fsm_unit_control_reg[3]_0 [2]),
        .G(serial2mem_opa_valid_i_reg_i_2_n_0),
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
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "IDLE:00001,WRITE_MEM:00010,SYSTOLIC_READ_MEM:00100,WRITE_MEM_OUT:01000,DONE:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_unit_control_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(fsm_unit_control_next[1]),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "IDLE:00001,WRITE_MEM:00010,SYSTOLIC_READ_MEM:00100,WRITE_MEM_OUT:01000,DONE:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_unit_control_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(fsm_unit_control_next[2]),
        .Q(Q[2]));
  (* FSM_ENCODED_STATES = "IDLE:00001,WRITE_MEM:00010,SYSTOLIC_READ_MEM:00100,WRITE_MEM_OUT:01000,DONE:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_unit_control_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(fsm_unit_control_next[3]),
        .Q(Q[3]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \a_load[0]_i_1 
       (.I0(systolicControlUnit_serial2mem_opb_rw),
        .I1(systolicControlUnit_syst_rready_i),
        .I2(\a_load_reg[7] [0]),
        .I3(\a_load_reg[7]_0 ),
        .I4(\b_load_reg[7]_0 [0]),
        .I5(\b_load_reg[7]_0 [1]),
        .O(\FSM_sequential_currentStateSystolicControlUnit_reg[0]_0 [0]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \a_load[1]_i_1 
       (.I0(systolicControlUnit_serial2mem_opb_rw),
        .I1(systolicControlUnit_syst_rready_i),
        .I2(\a_load_reg[7] [1]),
        .I3(\a_load_reg[7]_0 ),
        .I4(\b_load_reg[7]_0 [0]),
        .I5(\b_load_reg[7]_0 [1]),
        .O(\FSM_sequential_currentStateSystolicControlUnit_reg[0]_0 [1]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \a_load[2]_i_1 
       (.I0(systolicControlUnit_serial2mem_opb_rw),
        .I1(systolicControlUnit_syst_rready_i),
        .I2(\a_load_reg[7] [2]),
        .I3(\a_load_reg[7]_0 ),
        .I4(\b_load_reg[7]_0 [0]),
        .I5(\b_load_reg[7]_0 [1]),
        .O(\FSM_sequential_currentStateSystolicControlUnit_reg[0]_0 [2]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \a_load[3]_i_1 
       (.I0(systolicControlUnit_serial2mem_opb_rw),
        .I1(systolicControlUnit_syst_rready_i),
        .I2(\a_load_reg[7] [3]),
        .I3(\a_load_reg[7]_0 ),
        .I4(\b_load_reg[7]_0 [0]),
        .I5(\b_load_reg[7]_0 [1]),
        .O(\FSM_sequential_currentStateSystolicControlUnit_reg[0]_0 [3]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \a_load[4]_i_1 
       (.I0(systolicControlUnit_serial2mem_opb_rw),
        .I1(systolicControlUnit_syst_rready_i),
        .I2(\a_load_reg[7] [4]),
        .I3(\a_load_reg[7]_0 ),
        .I4(\b_load_reg[7]_0 [0]),
        .I5(\b_load_reg[7]_0 [1]),
        .O(\FSM_sequential_currentStateSystolicControlUnit_reg[0]_0 [4]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \a_load[5]_i_1 
       (.I0(systolicControlUnit_serial2mem_opb_rw),
        .I1(systolicControlUnit_syst_rready_i),
        .I2(\a_load_reg[7] [5]),
        .I3(\a_load_reg[7]_0 ),
        .I4(\b_load_reg[7]_0 [0]),
        .I5(\b_load_reg[7]_0 [1]),
        .O(\FSM_sequential_currentStateSystolicControlUnit_reg[0]_0 [5]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \a_load[6]_i_1 
       (.I0(systolicControlUnit_serial2mem_opb_rw),
        .I1(systolicControlUnit_syst_rready_i),
        .I2(\a_load_reg[7] [6]),
        .I3(\a_load_reg[7]_0 ),
        .I4(\b_load_reg[7]_0 [0]),
        .I5(\b_load_reg[7]_0 [1]),
        .O(\FSM_sequential_currentStateSystolicControlUnit_reg[0]_0 [6]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \a_load[7]_i_1 
       (.I0(systolicControlUnit_serial2mem_opb_rw),
        .I1(systolicControlUnit_syst_rready_i),
        .I2(\a_load_reg[7] [7]),
        .I3(\a_load_reg[7]_0 ),
        .I4(\b_load_reg[7]_0 [0]),
        .I5(\b_load_reg[7]_0 [1]),
        .O(\FSM_sequential_currentStateSystolicControlUnit_reg[0]_0 [7]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \b_load[0]_i_1 
       (.I0(systolicControlUnit_serial2mem_opb_rw),
        .I1(systolicControlUnit_syst_rready_i),
        .I2(douta[0]),
        .I3(\b_load_reg[7] ),
        .I4(\b_load_reg[7]_0 [0]),
        .I5(\b_load_reg[7]_0 [1]),
        .O(\FSM_sequential_currentStateSystolicControlUnit_reg[0] [0]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \b_load[1]_i_1 
       (.I0(systolicControlUnit_serial2mem_opb_rw),
        .I1(systolicControlUnit_syst_rready_i),
        .I2(douta[1]),
        .I3(\b_load_reg[7] ),
        .I4(\b_load_reg[7]_0 [0]),
        .I5(\b_load_reg[7]_0 [1]),
        .O(\FSM_sequential_currentStateSystolicControlUnit_reg[0] [1]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \b_load[2]_i_1 
       (.I0(systolicControlUnit_serial2mem_opb_rw),
        .I1(systolicControlUnit_syst_rready_i),
        .I2(douta[2]),
        .I3(\b_load_reg[7] ),
        .I4(\b_load_reg[7]_0 [0]),
        .I5(\b_load_reg[7]_0 [1]),
        .O(\FSM_sequential_currentStateSystolicControlUnit_reg[0] [2]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \b_load[3]_i_1 
       (.I0(systolicControlUnit_serial2mem_opb_rw),
        .I1(systolicControlUnit_syst_rready_i),
        .I2(douta[3]),
        .I3(\b_load_reg[7] ),
        .I4(\b_load_reg[7]_0 [0]),
        .I5(\b_load_reg[7]_0 [1]),
        .O(\FSM_sequential_currentStateSystolicControlUnit_reg[0] [3]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \b_load[4]_i_1 
       (.I0(systolicControlUnit_serial2mem_opb_rw),
        .I1(systolicControlUnit_syst_rready_i),
        .I2(douta[4]),
        .I3(\b_load_reg[7] ),
        .I4(\b_load_reg[7]_0 [0]),
        .I5(\b_load_reg[7]_0 [1]),
        .O(\FSM_sequential_currentStateSystolicControlUnit_reg[0] [4]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \b_load[5]_i_1 
       (.I0(systolicControlUnit_serial2mem_opb_rw),
        .I1(systolicControlUnit_syst_rready_i),
        .I2(douta[5]),
        .I3(\b_load_reg[7] ),
        .I4(\b_load_reg[7]_0 [0]),
        .I5(\b_load_reg[7]_0 [1]),
        .O(\FSM_sequential_currentStateSystolicControlUnit_reg[0] [5]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \b_load[6]_i_1 
       (.I0(systolicControlUnit_serial2mem_opb_rw),
        .I1(systolicControlUnit_syst_rready_i),
        .I2(douta[6]),
        .I3(\b_load_reg[7] ),
        .I4(\b_load_reg[7]_0 [0]),
        .I5(\b_load_reg[7]_0 [1]),
        .O(\FSM_sequential_currentStateSystolicControlUnit_reg[0] [6]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \b_load[7]_i_1 
       (.I0(systolicControlUnit_serial2mem_opb_rw),
        .I1(systolicControlUnit_syst_rready_i),
        .I2(douta[7]),
        .I3(\b_load_reg[7] ),
        .I4(\b_load_reg[7]_0 [0]),
        .I5(\b_load_reg[7]_0 [1]),
        .O(\FSM_sequential_currentStateSystolicControlUnit_reg[0] [7]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \buf_data[0]_i_1 
       (.I0(systolicControlUnit_serial2mem_opa_valid_i),
        .I1(systolicControlUnit_serial2mem_opb_rw),
        .I2(uart_data_rx_out),
        .O(\data_rx_out_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \buf_data[0]_i_1__0 
       (.I0(systolicControlUnit_serial2mem_opb_valid_i),
        .I1(systolicControlUnit_serial2mem_opb_rw),
        .I2(uart_data_rx_out),
        .O(\data_rx_out_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    mem2serial_valid_i_reg
       (.CLR(1'b0),
        .D(Q[3]),
        .G(serial2mem_opa_valid_i_reg_i_2_n_0),
        .GE(1'b1),
        .Q(systolicControlUnit_uart_valid_tx_in));
  LUT6 #(
    .INIT(64'h00FF0F22FFFF0F22)) 
    \mem_fsm[0]_i_1 
       (.I0(systolicControlUnit_serial2mem_opa_valid_i),
        .I1(systolicControlUnit_serial2mem_opb_rw),
        .I2(p_0_in),
        .I3(\mem_fsm_reg[1]_0 [1]),
        .I4(\mem_fsm_reg[1]_0 [0]),
        .I5(systolicControlUnit_syst_rready_i),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h00FF0F22FFFF0F22)) 
    \mem_fsm[0]_i_1__0 
       (.I0(systolicControlUnit_serial2mem_opb_valid_i),
        .I1(systolicControlUnit_serial2mem_opb_rw),
        .I2(p_0_in_0),
        .I3(\mem_fsm_reg[1]_1 [1]),
        .I4(\mem_fsm_reg[1]_1 [0]),
        .I5(systolicControlUnit_syst_rready_i),
        .O(\mem_fsm_reg[1] [0]));
  LUT6 #(
    .INIT(64'h5500FFC055FFFFC0)) 
    \mem_fsm[1]_i_1__0 
       (.I0(systolicControlUnit_syst_rready_i),
        .I1(systolicControlUnit_serial2mem_opb_valid_i),
        .I2(systolicControlUnit_serial2mem_opb_rw),
        .I3(\mem_fsm_reg[1]_1 [1]),
        .I4(\mem_fsm_reg[1]_1 [0]),
        .I5(p_0_in_0),
        .O(\mem_fsm_reg[1] [1]));
  LUT6 #(
    .INIT(64'h5500FFC055FFFFC0)) 
    \mem_fsm[1]_i_2 
       (.I0(systolicControlUnit_syst_rready_i),
        .I1(systolicControlUnit_serial2mem_opa_valid_i),
        .I2(systolicControlUnit_serial2mem_opb_rw),
        .I3(\mem_fsm_reg[1]_0 [1]),
        .I4(\mem_fsm_reg[1]_0 [0]),
        .I5(p_0_in),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mem_i_12
       (.I0(clock_IBUF),
        .I1(systolicControlUnit_serial2mem_opb_rw),
        .I2(uart_ready_rx_out),
        .O(ready_rx_out_reg));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT1 #(
    .INIT(2'h1)) 
    mem_i_3
       (.I0(systolicControlUnit_serial2mem_opb_rw),
        .O(wea));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    serial2mem_opa_rready_i_reg
       (.CLR(1'b0),
        .D(Q[2]),
        .G(serial2mem_opa_valid_i_reg_i_2_n_0),
        .GE(1'b1),
        .Q(systolicControlUnit_syst_rready_i));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    serial2mem_opa_rw_reg
       (.CLR(1'b0),
        .D(serial2mem_opa_rw_reg_i_1_n_0),
        .G(serial2mem_opa_valid_i_reg_i_2_n_0),
        .GE(1'b1),
        .Q(systolicControlUnit_serial2mem_opb_rw));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hE)) 
    serial2mem_opa_rw_reg_i_1
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(serial2mem_opa_rw_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    serial2mem_opa_valid_i_reg
       (.CLR(1'b0),
        .D(serial2mem_opa_valid_i_reg_i_1_n_0),
        .G(serial2mem_opa_valid_i_reg_i_2_n_0),
        .GE(1'b1),
        .Q(systolicControlUnit_serial2mem_opa_valid_i));
  LUT2 #(
    .INIT(4'hE)) 
    serial2mem_opa_valid_i_reg_i_1
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(serial2mem_opa_valid_i_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    serial2mem_opa_valid_i_reg_i_2
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(serial2mem_opa_valid_i_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    serial2mem_opb_valid_i_reg
       (.CLR(1'b0),
        .D(\buf_data_reg[0] ),
        .G(serial2mem_opa_valid_i_reg_i_2_n_0),
        .GE(1'b1),
        .Q(systolicControlUnit_serial2mem_opb_valid_i));
endmodule

module systolicMatrixMultiply
   (D,
    Q,
    \px_bit_reg[0] ,
    \j_counter_reg[2] ,
    \px_bit_reg[0]_0 ,
    \px_bit_reg[1] ,
    clock_IBUF_BUFG,
    btn_IBUF,
    \FSM_onehot_fsm_unit_control_reg[3] ,
    systolicControlUnit_mem2serial_rvalid_o,
    \FSM_onehot_fsm_unit_control_reg[2] ,
    systolicControlUnit_syst_rready_i,
    sdata_tx_out_reg,
    systolicControlUnit_uart_valid_tx_in,
    sdata_tx_out_i_3_0,
    sdata_tx_out_reg_i_18_0,
    \b_load_reg[7]_0 ,
    \a_load_reg[7]_0 );
  output [1:0]D;
  output [1:0]Q;
  output \px_bit_reg[0] ;
  output [0:0]\j_counter_reg[2] ;
  output \px_bit_reg[0]_0 ;
  output \px_bit_reg[1] ;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input [2:0]\FSM_onehot_fsm_unit_control_reg[3] ;
  input systolicControlUnit_mem2serial_rvalid_o;
  input \FSM_onehot_fsm_unit_control_reg[2] ;
  input systolicControlUnit_syst_rready_i;
  input [1:0]sdata_tx_out_reg;
  input systolicControlUnit_uart_valid_tx_in;
  input [2:0]sdata_tx_out_i_3_0;
  input [2:0]sdata_tx_out_reg_i_18_0;
  input [7:0]\b_load_reg[7]_0 ;
  input [7:0]\a_load_reg[7]_0 ;

  wire A;
  wire B;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[0].MAC_n_1 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[0].MAC_n_10 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[0].MAC_n_11 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[0].MAC_n_12 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[0].MAC_n_13 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[1].MAC_n_0 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[1].MAC_n_1 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[1].MAC_n_10 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[1].MAC_n_11 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[1].MAC_n_12 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[2].MAC_n_0 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[2].MAC_n_1 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[2].MAC_n_10 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[2].MAC_n_11 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[2].MAC_n_12 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[3].MAC_n_0 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[3].MAC_n_1 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[3].MAC_n_10 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[3].MAC_n_11 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[3].MAC_n_12 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[4].MAC_n_0 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[4].MAC_n_1 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[4].MAC_n_10 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[4].MAC_n_11 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[4].MAC_n_12 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[5].MAC_n_0 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[5].MAC_n_1 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[5].MAC_n_10 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[5].MAC_n_11 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[5].MAC_n_12 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[6].MAC_n_0 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[6].MAC_n_10 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[6].MAC_n_11 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[6].MAC_n_9 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[7].MAC_n_0 ;
  wire \CELULA_ROWS[0].CELULA_COLUMNS[7].MAC_n_9 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[0].MAC_n_0 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[0].MAC_n_1 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[0].MAC_n_10 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[0].MAC_n_11 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[0].MAC_n_12 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[1].MAC_n_0 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[1].MAC_n_1 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[1].MAC_n_10 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[1].MAC_n_11 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[2].MAC_n_0 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[2].MAC_n_1 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[2].MAC_n_10 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[2].MAC_n_11 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[3].MAC_n_0 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[3].MAC_n_1 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[3].MAC_n_10 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[3].MAC_n_11 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[4].MAC_n_0 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[4].MAC_n_1 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[4].MAC_n_10 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[4].MAC_n_11 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[5].MAC_n_0 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[5].MAC_n_1 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[5].MAC_n_10 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[5].MAC_n_11 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[6].MAC_n_0 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[6].MAC_n_1 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[6].MAC_n_10 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[6].MAC_n_11 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[7].MAC_n_0 ;
  wire \CELULA_ROWS[1].CELULA_COLUMNS[7].MAC_n_9 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[0].MAC_n_0 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[0].MAC_n_1 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[0].MAC_n_10 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[0].MAC_n_11 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[0].MAC_n_12 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[1].MAC_n_0 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[1].MAC_n_1 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[1].MAC_n_10 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[1].MAC_n_11 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[2].MAC_n_0 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[2].MAC_n_1 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[2].MAC_n_10 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[2].MAC_n_11 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[3].MAC_n_0 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[3].MAC_n_1 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[3].MAC_n_10 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[3].MAC_n_11 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[4].MAC_n_0 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[4].MAC_n_1 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[4].MAC_n_10 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[4].MAC_n_11 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[5].MAC_n_0 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[5].MAC_n_1 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[5].MAC_n_10 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[5].MAC_n_11 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[6].MAC_n_0 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[6].MAC_n_1 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[6].MAC_n_10 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[6].MAC_n_11 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[7].MAC_n_0 ;
  wire \CELULA_ROWS[2].CELULA_COLUMNS[7].MAC_n_9 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[0].MAC_n_0 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[0].MAC_n_1 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[0].MAC_n_10 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[0].MAC_n_11 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[0].MAC_n_12 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[1].MAC_n_0 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[1].MAC_n_1 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[1].MAC_n_10 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[1].MAC_n_11 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[2].MAC_n_0 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[2].MAC_n_1 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[2].MAC_n_10 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[2].MAC_n_11 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[3].MAC_n_0 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[3].MAC_n_1 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[3].MAC_n_10 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[3].MAC_n_11 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[4].MAC_n_0 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[4].MAC_n_1 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[4].MAC_n_10 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[4].MAC_n_11 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[5].MAC_n_0 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[5].MAC_n_1 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[5].MAC_n_10 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[5].MAC_n_11 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[6].MAC_n_0 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[6].MAC_n_1 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[6].MAC_n_10 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[6].MAC_n_11 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[7].MAC_n_0 ;
  wire \CELULA_ROWS[3].CELULA_COLUMNS[7].MAC_n_9 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[0].MAC_n_0 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[0].MAC_n_1 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[0].MAC_n_10 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[0].MAC_n_11 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[0].MAC_n_12 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[1].MAC_n_0 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[1].MAC_n_1 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[1].MAC_n_10 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[1].MAC_n_11 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[2].MAC_n_0 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[2].MAC_n_1 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[2].MAC_n_10 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[2].MAC_n_11 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[3].MAC_n_0 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[3].MAC_n_1 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[3].MAC_n_10 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[3].MAC_n_11 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[4].MAC_n_0 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[4].MAC_n_1 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[4].MAC_n_10 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[4].MAC_n_11 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[5].MAC_n_0 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[5].MAC_n_1 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[5].MAC_n_10 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[5].MAC_n_11 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[6].MAC_n_0 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[6].MAC_n_1 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[6].MAC_n_10 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[6].MAC_n_11 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[7].MAC_n_0 ;
  wire \CELULA_ROWS[4].CELULA_COLUMNS[7].MAC_n_9 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[0].MAC_n_0 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[0].MAC_n_1 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[0].MAC_n_10 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[0].MAC_n_11 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[0].MAC_n_12 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[1].MAC_n_0 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[1].MAC_n_1 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[1].MAC_n_10 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[1].MAC_n_11 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[2].MAC_n_0 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[2].MAC_n_1 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[2].MAC_n_10 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[2].MAC_n_11 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[3].MAC_n_0 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[3].MAC_n_1 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[3].MAC_n_10 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[3].MAC_n_11 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[4].MAC_n_0 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[4].MAC_n_1 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[4].MAC_n_10 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[4].MAC_n_11 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[5].MAC_n_0 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[5].MAC_n_1 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[5].MAC_n_10 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[5].MAC_n_11 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[6].MAC_n_0 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[6].MAC_n_1 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[6].MAC_n_10 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[6].MAC_n_11 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[7].MAC_n_0 ;
  wire \CELULA_ROWS[5].CELULA_COLUMNS[7].MAC_n_9 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[0].MAC_n_0 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[0].MAC_n_10 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[0].MAC_n_11 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[0].MAC_n_9 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[1].MAC_n_0 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[1].MAC_n_1 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[1].MAC_n_10 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[1].MAC_n_11 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[2].MAC_n_0 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[2].MAC_n_1 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[2].MAC_n_10 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[2].MAC_n_11 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[3].MAC_n_0 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[3].MAC_n_1 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[3].MAC_n_10 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[3].MAC_n_11 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[4].MAC_n_0 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[4].MAC_n_1 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[4].MAC_n_10 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[4].MAC_n_11 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[5].MAC_n_0 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[5].MAC_n_1 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[5].MAC_n_10 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[5].MAC_n_11 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[6].MAC_n_0 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[6].MAC_n_1 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[6].MAC_n_10 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[6].MAC_n_11 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[7].MAC_n_0 ;
  wire \CELULA_ROWS[6].CELULA_COLUMNS[7].MAC_n_9 ;
  wire \CELULA_ROWS[7].CELULA_COLUMNS[0].MAC_n_0 ;
  wire \CELULA_ROWS[7].CELULA_COLUMNS[0].MAC_n_9 ;
  wire \CELULA_ROWS[7].CELULA_COLUMNS[1].MAC_n_0 ;
  wire \CELULA_ROWS[7].CELULA_COLUMNS[1].MAC_n_9 ;
  wire \CELULA_ROWS[7].CELULA_COLUMNS[2].MAC_n_0 ;
  wire \CELULA_ROWS[7].CELULA_COLUMNS[2].MAC_n_9 ;
  wire \CELULA_ROWS[7].CELULA_COLUMNS[3].MAC_n_0 ;
  wire \CELULA_ROWS[7].CELULA_COLUMNS[3].MAC_n_9 ;
  wire \CELULA_ROWS[7].CELULA_COLUMNS[4].MAC_n_0 ;
  wire \CELULA_ROWS[7].CELULA_COLUMNS[4].MAC_n_9 ;
  wire \CELULA_ROWS[7].CELULA_COLUMNS[5].MAC_n_0 ;
  wire \CELULA_ROWS[7].CELULA_COLUMNS[5].MAC_n_9 ;
  wire \CELULA_ROWS[7].CELULA_COLUMNS[6].MAC_n_0 ;
  wire \CELULA_ROWS[7].CELULA_COLUMNS[6].MAC_n_9 ;
  wire [1:0]D;
  wire \FSM_onehot_fsm_unit_control_reg[2] ;
  wire [2:0]\FSM_onehot_fsm_unit_control_reg[3] ;
  wire [1:0]Q;
  wire [7:0]\a_load_reg[7]_0 ;
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
  wire [7:0]\b_load_reg[7]_0 ;
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
  wire ena_mac_reg_rep__2_n_0;
  wire ena_mac_reg_rep_n_0;
  wire ena_mac_rep__0_i_1_n_0;
  wire ena_mac_rep__1_i_1_n_0;
  wire ena_mac_rep__2_i_1_n_0;
  wire ena_mac_rep_i_1_n_0;
  wire [0:0]\j_counter_reg[2] ;
  wire [7:0]\mem2serial_transfer_pc/pmatrix_in__55 ;
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
  wire [1:0]sdata_tx_out_reg;
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
  wire [7:0]\syst_output_produc_a_b[0][0]_63 ;
  wire [7:0]\syst_output_produc_a_b[0][1]_62 ;
  wire [7:0]\syst_output_produc_a_b[0][2]_61 ;
  wire [7:0]\syst_output_produc_a_b[0][3]_60 ;
  wire [7:0]\syst_output_produc_a_b[0][4]_59 ;
  wire [7:0]\syst_output_produc_a_b[0][5]_58 ;
  wire [7:0]\syst_output_produc_a_b[0][6]_57 ;
  wire [7:0]\syst_output_produc_a_b[0][7]_56 ;
  wire [7:0]\syst_output_produc_a_b[1][0]_55 ;
  wire [7:0]\syst_output_produc_a_b[1][1]_54 ;
  wire [7:0]\syst_output_produc_a_b[1][2]_53 ;
  wire [7:0]\syst_output_produc_a_b[1][3]_52 ;
  wire [7:0]\syst_output_produc_a_b[1][4]_51 ;
  wire [7:0]\syst_output_produc_a_b[1][5]_50 ;
  wire [7:0]\syst_output_produc_a_b[1][6]_49 ;
  wire [7:0]\syst_output_produc_a_b[1][7]_48 ;
  wire [7:0]\syst_output_produc_a_b[2][0]_47 ;
  wire [7:0]\syst_output_produc_a_b[2][1]_46 ;
  wire [7:0]\syst_output_produc_a_b[2][2]_45 ;
  wire [7:0]\syst_output_produc_a_b[2][3]_44 ;
  wire [7:0]\syst_output_produc_a_b[2][4]_43 ;
  wire [7:0]\syst_output_produc_a_b[2][5]_42 ;
  wire [7:0]\syst_output_produc_a_b[2][6]_41 ;
  wire [7:0]\syst_output_produc_a_b[2][7]_40 ;
  wire [7:0]\syst_output_produc_a_b[3][0]_39 ;
  wire [7:0]\syst_output_produc_a_b[3][1]_38 ;
  wire [7:0]\syst_output_produc_a_b[3][2]_37 ;
  wire [7:0]\syst_output_produc_a_b[3][3]_36 ;
  wire [7:0]\syst_output_produc_a_b[3][4]_35 ;
  wire [7:0]\syst_output_produc_a_b[3][5]_34 ;
  wire [7:0]\syst_output_produc_a_b[3][6]_33 ;
  wire [7:0]\syst_output_produc_a_b[3][7]_32 ;
  wire [7:0]\syst_output_produc_a_b[4][0]_31 ;
  wire [7:0]\syst_output_produc_a_b[4][1]_30 ;
  wire [7:0]\syst_output_produc_a_b[4][2]_29 ;
  wire [7:0]\syst_output_produc_a_b[4][3]_28 ;
  wire [7:0]\syst_output_produc_a_b[4][4]_27 ;
  wire [7:0]\syst_output_produc_a_b[4][5]_26 ;
  wire [7:0]\syst_output_produc_a_b[4][6]_25 ;
  wire [7:0]\syst_output_produc_a_b[4][7]_24 ;
  wire [7:0]\syst_output_produc_a_b[5][0]_23 ;
  wire [7:0]\syst_output_produc_a_b[5][1]_22 ;
  wire [7:0]\syst_output_produc_a_b[5][2]_21 ;
  wire [7:0]\syst_output_produc_a_b[5][3]_20 ;
  wire [7:0]\syst_output_produc_a_b[5][4]_19 ;
  wire [7:0]\syst_output_produc_a_b[5][5]_18 ;
  wire [7:0]\syst_output_produc_a_b[5][6]_17 ;
  wire [7:0]\syst_output_produc_a_b[5][7]_16 ;
  wire [7:0]\syst_output_produc_a_b[6][0]_15 ;
  wire [7:0]\syst_output_produc_a_b[6][1]_14 ;
  wire [7:0]\syst_output_produc_a_b[6][2]_13 ;
  wire [7:0]\syst_output_produc_a_b[6][3]_12 ;
  wire [7:0]\syst_output_produc_a_b[6][4]_11 ;
  wire [7:0]\syst_output_produc_a_b[6][5]_10 ;
  wire [7:0]\syst_output_produc_a_b[6][6]_9 ;
  wire [7:0]\syst_output_produc_a_b[6][7]_8 ;
  wire [7:0]\syst_output_produc_a_b[7][0]_7 ;
  wire [7:0]\syst_output_produc_a_b[7][1]_6 ;
  wire [7:0]\syst_output_produc_a_b[7][2]_5 ;
  wire [7:0]\syst_output_produc_a_b[7][3]_4 ;
  wire [7:0]\syst_output_produc_a_b[7][4]_3 ;
  wire [7:0]\syst_output_produc_a_b[7][5]_2 ;
  wire [7:0]\syst_output_produc_a_b[7][6]_1 ;
  wire [7:0]\syst_output_produc_a_b[7][7]_0 ;
  wire systolicControlUnit_mem2serial_rvalid_o;
  wire systolicControlUnit_syst_rready_i;
  wire systolicControlUnit_uart_valid_tx_in;
  wire [7:1]uart_data_tx_in;
  wire y;

  accumulator_cells \CELULA_ROWS[0].CELULA_COLUMNS[0].MAC 
       (.D(accumulator_reg),
        .DI(\CELULA_ROWS[0].CELULA_COLUMNS[0].MAC_n_10 ),
        .Q({B,\b_load_reg_n_0_[0] }),
        .S(\CELULA_ROWS[0].CELULA_COLUMNS[0].MAC_n_12 ),
        .\a_load_reg[1] (\CELULA_ROWS[0].CELULA_COLUMNS[0].MAC_n_11 ),
        .\accumulator_reg[3]_0 ({A,\a_load_reg_n_0_[0] }),
        .\accumulator_reg[3]_1 (ena_mac_reg_rep__2_n_0),
        .\accumulator_reg[3]_2 (ena_mac_reg_rep__1_n_0),
        .\accumulator_reg[3]_3 (accumulator_reg_7[0]),
        .\accumulator_reg[3]_4 (accumulator_reg_0[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[0].MAC_n_1 ),
        .y(y),
        .\y_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[0].MAC_n_13 ));
  accumulator_cells_2 \CELULA_ROWS[0].CELULA_COLUMNS[1].MAC 
       (.D(accumulator_reg_0),
        .DI(\CELULA_ROWS[0].CELULA_COLUMNS[1].MAC_n_10 ),
        .Q({\a_load_reg_n_0_[2] ,A}),
        .S(\CELULA_ROWS[0].CELULA_COLUMNS[1].MAC_n_12 ),
        .\a_load_reg[2] (\CELULA_ROWS[0].CELULA_COLUMNS[1].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[0].MAC_n_11 ),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[0].CELULA_COLUMNS[0].MAC_n_13 ),
        .\accumulator_reg[3]_2 (ena_mac_reg_rep__1_n_0),
        .\accumulator_reg[3]_3 (\CELULA_ROWS[1].CELULA_COLUMNS[0].MAC_n_0 ),
        .\accumulator_reg[3]_4 (accumulator_reg_1[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[1].MAC_n_1 ),
        .y(y),
        .\y_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[1].MAC_n_0 ));
  accumulator_cells_3 \CELULA_ROWS[0].CELULA_COLUMNS[2].MAC 
       (.D(accumulator_reg_1),
        .DI(\CELULA_ROWS[0].CELULA_COLUMNS[2].MAC_n_10 ),
        .Q({\a_load_reg_n_0_[3] ,\a_load_reg_n_0_[2] }),
        .S(\CELULA_ROWS[0].CELULA_COLUMNS[1].MAC_n_12 ),
        .\a_load_reg[3] (\CELULA_ROWS[0].CELULA_COLUMNS[2].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[1].MAC_n_11 ),
        .\accumulator_reg[3]_1 (ena_mac_reg_rep__1_n_0),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[1].CELULA_COLUMNS[1].MAC_n_0 ),
        .\accumulator_reg[3]_3 (ena_mac_reg_rep__0_n_0),
        .\accumulator_reg[3]_4 (accumulator_reg_2[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[2].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[2].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[0].CELULA_COLUMNS[2].MAC_n_12 ),
        .\y_reg[0]_2 (\CELULA_ROWS[0].CELULA_COLUMNS[1].MAC_n_0 ));
  accumulator_cells_4 \CELULA_ROWS[0].CELULA_COLUMNS[3].MAC 
       (.D(accumulator_reg_2),
        .DI(\CELULA_ROWS[0].CELULA_COLUMNS[3].MAC_n_10 ),
        .Q({\a_load_reg_n_0_[4] ,\a_load_reg_n_0_[3] }),
        .S(\CELULA_ROWS[0].CELULA_COLUMNS[3].MAC_n_12 ),
        .\a_load_reg[4] (\CELULA_ROWS[0].CELULA_COLUMNS[3].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[2].MAC_n_11 ),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[0].CELULA_COLUMNS[2].MAC_n_12 ),
        .\accumulator_reg[3]_2 (ena_mac_reg_rep__0_n_0),
        .\accumulator_reg[3]_3 (\CELULA_ROWS[1].CELULA_COLUMNS[2].MAC_n_0 ),
        .\accumulator_reg[3]_4 (accumulator_reg_3[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[3].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[3].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[0].CELULA_COLUMNS[2].MAC_n_0 ));
  accumulator_cells_5 \CELULA_ROWS[0].CELULA_COLUMNS[4].MAC 
       (.D(accumulator_reg_3),
        .DI(\CELULA_ROWS[0].CELULA_COLUMNS[4].MAC_n_10 ),
        .Q({\a_load_reg_n_0_[5] ,\a_load_reg_n_0_[4] }),
        .S(\CELULA_ROWS[0].CELULA_COLUMNS[3].MAC_n_12 ),
        .\a_load_reg[5] (\CELULA_ROWS[0].CELULA_COLUMNS[4].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[3].MAC_n_11 ),
        .\accumulator_reg[3]_1 (ena_mac_reg_rep__0_n_0),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[1].CELULA_COLUMNS[3].MAC_n_0 ),
        .\accumulator_reg[3]_3 (ena_mac_reg_rep_n_0),
        .\accumulator_reg[3]_4 (accumulator_reg_4[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[4].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[4].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[0].CELULA_COLUMNS[4].MAC_n_12 ),
        .\y_reg[0]_2 (\CELULA_ROWS[0].CELULA_COLUMNS[3].MAC_n_0 ));
  accumulator_cells_6 \CELULA_ROWS[0].CELULA_COLUMNS[5].MAC 
       (.D(accumulator_reg_4),
        .DI(\CELULA_ROWS[0].CELULA_COLUMNS[5].MAC_n_10 ),
        .Q({\a_load_reg_n_0_[6] ,\a_load_reg_n_0_[5] }),
        .S(\CELULA_ROWS[0].CELULA_COLUMNS[5].MAC_n_12 ),
        .\a_load_reg[6] (\CELULA_ROWS[0].CELULA_COLUMNS[5].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[4].MAC_n_11 ),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[0].CELULA_COLUMNS[4].MAC_n_12 ),
        .\accumulator_reg[3]_2 (ena_mac_reg_rep_n_0),
        .\accumulator_reg[3]_3 (\CELULA_ROWS[1].CELULA_COLUMNS[4].MAC_n_0 ),
        .\accumulator_reg[3]_4 (accumulator_reg_5[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[5].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[5].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[0].CELULA_COLUMNS[4].MAC_n_0 ));
  accumulator_cells_7 \CELULA_ROWS[0].CELULA_COLUMNS[6].MAC 
       (.D(accumulator_reg_5),
        .DI(\CELULA_ROWS[0].CELULA_COLUMNS[6].MAC_n_9 ),
        .Q({\a_load_reg_n_0_[7] ,\a_load_reg_n_0_[6] }),
        .S(\CELULA_ROWS[0].CELULA_COLUMNS[5].MAC_n_12 ),
        .\a_load_reg[7] (\CELULA_ROWS[0].CELULA_COLUMNS[6].MAC_n_10 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[5].MAC_n_11 ),
        .\accumulator_reg[3]_1 (ena_mac_reg_rep_n_0),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[1].CELULA_COLUMNS[5].MAC_n_0 ),
        .\accumulator_reg[3]_3 (accumulator_reg_6[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\x_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[6].MAC_n_0 ),
        .\y_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[6].MAC_n_11 ),
        .\y_reg[0]_1 (\CELULA_ROWS[0].CELULA_COLUMNS[5].MAC_n_0 ));
  accumulator_cells_8 \CELULA_ROWS[0].CELULA_COLUMNS[7].MAC 
       (.D(accumulator_reg_6),
        .DI(\CELULA_ROWS[0].CELULA_COLUMNS[7].MAC_n_9 ),
        .Q(\a_load_reg_n_0_[7] ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[6].MAC_n_10 ),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[0].CELULA_COLUMNS[6].MAC_n_11 ),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[1].CELULA_COLUMNS[6].MAC_n_0 ),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\x_reg[0]_0 (\CELULA_ROWS[0].CELULA_COLUMNS[7].MAC_n_0 ));
  accumulator_cells_9 \CELULA_ROWS[1].CELULA_COLUMNS[0].MAC 
       (.D(accumulator_reg_7),
        .DI(\CELULA_ROWS[0].CELULA_COLUMNS[0].MAC_n_10 ),
        .Q({\b_load_reg_n_0_[2] ,B}),
        .S(\CELULA_ROWS[0].CELULA_COLUMNS[0].MAC_n_12 ),
        .\accumulator_reg[3]_0 (ena_mac_reg_rep__2_n_0),
        .\accumulator_reg[3]_1 (accumulator_reg_15[0]),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[0].CELULA_COLUMNS[1].MAC_n_1 ),
        .\accumulator_reg[3]_3 (accumulator_reg_8[0]),
        .\accumulator_reg[3]_4 (ena_mac_reg_rep__1_n_0),
        .\b_load_reg[2] (\CELULA_ROWS[1].CELULA_COLUMNS[0].MAC_n_11 ),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[0].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[0].MAC_n_10 ),
        .\x_reg[0]_2 (\CELULA_ROWS[0].CELULA_COLUMNS[0].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[0].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[0].MAC_n_12 ));
  accumulator_cells_10 \CELULA_ROWS[1].CELULA_COLUMNS[1].MAC 
       (.D(accumulator_reg_8),
        .DI(\CELULA_ROWS[0].CELULA_COLUMNS[1].MAC_n_10 ),
        .S(\CELULA_ROWS[1].CELULA_COLUMNS[1].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[0].MAC_n_12 ),
        .\accumulator_reg[3]_1 (ena_mac_reg_rep__1_n_0),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[2].CELULA_COLUMNS[0].MAC_n_0 ),
        .\accumulator_reg[3]_3 (\CELULA_ROWS[0].CELULA_COLUMNS[2].MAC_n_1 ),
        .\accumulator_reg[3]_4 (accumulator_reg_9[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[1].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[1].MAC_n_10 ),
        .\x_reg[0]_2 (\CELULA_ROWS[0].CELULA_COLUMNS[1].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[1].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[0].MAC_n_0 ));
  accumulator_cells_11 \CELULA_ROWS[1].CELULA_COLUMNS[2].MAC 
       (.D(accumulator_reg_9),
        .DI(\CELULA_ROWS[0].CELULA_COLUMNS[2].MAC_n_10 ),
        .S(\CELULA_ROWS[1].CELULA_COLUMNS[1].MAC_n_11 ),
        .\accumulator_reg[3]_0 (ena_mac_reg_rep__1_n_0),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[2].CELULA_COLUMNS[1].MAC_n_0 ),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[0].CELULA_COLUMNS[3].MAC_n_1 ),
        .\accumulator_reg[3]_3 (accumulator_reg_10[0]),
        .\accumulator_reg[3]_4 (ena_mac_reg_rep__0_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[2].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[2].MAC_n_10 ),
        .\x_reg[0]_2 (\CELULA_ROWS[0].CELULA_COLUMNS[2].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[2].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[2].MAC_n_11 ),
        .\y_reg[0]_2 (\CELULA_ROWS[1].CELULA_COLUMNS[1].MAC_n_0 ));
  accumulator_cells_12 \CELULA_ROWS[1].CELULA_COLUMNS[3].MAC 
       (.D(accumulator_reg_10),
        .DI(\CELULA_ROWS[0].CELULA_COLUMNS[3].MAC_n_10 ),
        .S(\CELULA_ROWS[1].CELULA_COLUMNS[3].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[2].MAC_n_11 ),
        .\accumulator_reg[3]_1 (ena_mac_reg_rep__0_n_0),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[2].CELULA_COLUMNS[2].MAC_n_0 ),
        .\accumulator_reg[3]_3 (\CELULA_ROWS[0].CELULA_COLUMNS[4].MAC_n_1 ),
        .\accumulator_reg[3]_4 (accumulator_reg_11[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[3].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[3].MAC_n_10 ),
        .\x_reg[0]_2 (\CELULA_ROWS[0].CELULA_COLUMNS[3].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[3].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[2].MAC_n_0 ));
  accumulator_cells_13 \CELULA_ROWS[1].CELULA_COLUMNS[4].MAC 
       (.D(accumulator_reg_11),
        .DI(\CELULA_ROWS[0].CELULA_COLUMNS[4].MAC_n_10 ),
        .S(\CELULA_ROWS[1].CELULA_COLUMNS[3].MAC_n_11 ),
        .\accumulator_reg[3]_0 (ena_mac_reg_rep__0_n_0),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[2].CELULA_COLUMNS[3].MAC_n_0 ),
        .\accumulator_reg[3]_2 (ena_mac_reg_rep_n_0),
        .\accumulator_reg[3]_3 (\CELULA_ROWS[0].CELULA_COLUMNS[5].MAC_n_1 ),
        .\accumulator_reg[3]_4 (accumulator_reg_12[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[4].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[4].MAC_n_10 ),
        .\x_reg[0]_2 (\CELULA_ROWS[0].CELULA_COLUMNS[4].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[4].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[4].MAC_n_11 ),
        .\y_reg[0]_2 (\CELULA_ROWS[1].CELULA_COLUMNS[3].MAC_n_0 ));
  accumulator_cells_14 \CELULA_ROWS[1].CELULA_COLUMNS[5].MAC 
       (.D(accumulator_reg_12),
        .DI(\CELULA_ROWS[0].CELULA_COLUMNS[5].MAC_n_10 ),
        .S(\CELULA_ROWS[1].CELULA_COLUMNS[5].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[4].MAC_n_11 ),
        .\accumulator_reg[3]_1 (ena_mac_reg_rep_n_0),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[2].CELULA_COLUMNS[4].MAC_n_0 ),
        .\accumulator_reg[3]_3 (\CELULA_ROWS[0].CELULA_COLUMNS[6].MAC_n_0 ),
        .\accumulator_reg[3]_4 (accumulator_reg_13[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\x_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[5].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[5].MAC_n_10 ),
        .\x_reg[0]_2 (\CELULA_ROWS[0].CELULA_COLUMNS[5].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[5].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[4].MAC_n_0 ));
  accumulator_cells_15 \CELULA_ROWS[1].CELULA_COLUMNS[6].MAC 
       (.D(accumulator_reg_13),
        .DI(\CELULA_ROWS[0].CELULA_COLUMNS[6].MAC_n_9 ),
        .S(\CELULA_ROWS[1].CELULA_COLUMNS[5].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[5].MAC_n_0 ),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[0].CELULA_COLUMNS[7].MAC_n_0 ),
        .\accumulator_reg[3]_2 (accumulator_reg_14[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\x_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[6].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[6].MAC_n_10 ),
        .\x_reg[0]_2 (\CELULA_ROWS[0].CELULA_COLUMNS[6].MAC_n_0 ),
        .\y_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[6].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[6].MAC_n_11 ),
        .\y_reg[0]_2 (\CELULA_ROWS[1].CELULA_COLUMNS[5].MAC_n_0 ));
  accumulator_cells_16 \CELULA_ROWS[1].CELULA_COLUMNS[7].MAC 
       (.D(accumulator_reg_14),
        .DI(\CELULA_ROWS[0].CELULA_COLUMNS[7].MAC_n_9 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[6].MAC_n_11 ),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[2].CELULA_COLUMNS[6].MAC_n_0 ),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\x_reg[0]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[7].MAC_n_0 ),
        .\x_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[7].MAC_n_9 ),
        .\x_reg[0]_2 (\CELULA_ROWS[0].CELULA_COLUMNS[7].MAC_n_0 ));
  accumulator_cells_17 \CELULA_ROWS[2].CELULA_COLUMNS[0].MAC 
       (.D(accumulator_reg_15),
        .DI(\CELULA_ROWS[2].CELULA_COLUMNS[0].MAC_n_10 ),
        .Q({\b_load_reg_n_0_[3] ,\b_load_reg_n_0_[2] }),
        .S(\CELULA_ROWS[2].CELULA_COLUMNS[0].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[0].MAC_n_10 ),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[0].MAC_n_11 ),
        .\accumulator_reg[3]_2 (ena_mac_reg_rep__2_n_0),
        .\accumulator_reg[3]_3 (accumulator_reg_23[0]),
        .\accumulator_reg[3]_4 (\CELULA_ROWS[1].CELULA_COLUMNS[1].MAC_n_1 ),
        .\accumulator_reg[3]_5 (accumulator_reg_16[0]),
        .\accumulator_reg[3]_6 (ena_mac_reg_rep__1_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[0].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[0].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[0].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[2].CELULA_COLUMNS[0].MAC_n_12 ));
  accumulator_cells_18 \CELULA_ROWS[2].CELULA_COLUMNS[1].MAC 
       (.D(accumulator_reg_16),
        .DI(\CELULA_ROWS[2].CELULA_COLUMNS[1].MAC_n_10 ),
        .S(\CELULA_ROWS[2].CELULA_COLUMNS[1].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[1].MAC_n_10 ),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[2].CELULA_COLUMNS[0].MAC_n_12 ),
        .\accumulator_reg[3]_2 (ena_mac_reg_rep__1_n_0),
        .\accumulator_reg[3]_3 (\CELULA_ROWS[3].CELULA_COLUMNS[0].MAC_n_0 ),
        .\accumulator_reg[3]_4 (\CELULA_ROWS[1].CELULA_COLUMNS[2].MAC_n_1 ),
        .\accumulator_reg[3]_5 (accumulator_reg_17[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[1].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[1].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[1].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[2].CELULA_COLUMNS[0].MAC_n_0 ));
  accumulator_cells_19 \CELULA_ROWS[2].CELULA_COLUMNS[2].MAC 
       (.D(accumulator_reg_17),
        .DI(\CELULA_ROWS[2].CELULA_COLUMNS[2].MAC_n_10 ),
        .S(\CELULA_ROWS[2].CELULA_COLUMNS[1].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[2].MAC_n_10 ),
        .\accumulator_reg[3]_1 (ena_mac_reg_rep__1_n_0),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[3].CELULA_COLUMNS[1].MAC_n_0 ),
        .\accumulator_reg[3]_3 (ena_mac_reg_rep__0_n_0),
        .\accumulator_reg[3]_4 (\CELULA_ROWS[1].CELULA_COLUMNS[3].MAC_n_1 ),
        .\accumulator_reg[3]_5 (accumulator_reg_18[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[2].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[2].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[2].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[2].CELULA_COLUMNS[2].MAC_n_11 ),
        .\y_reg[0]_2 (\CELULA_ROWS[2].CELULA_COLUMNS[1].MAC_n_0 ));
  accumulator_cells_20 \CELULA_ROWS[2].CELULA_COLUMNS[3].MAC 
       (.D(accumulator_reg_18),
        .DI(\CELULA_ROWS[2].CELULA_COLUMNS[3].MAC_n_10 ),
        .S(\CELULA_ROWS[2].CELULA_COLUMNS[3].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[3].MAC_n_10 ),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[2].CELULA_COLUMNS[2].MAC_n_11 ),
        .\accumulator_reg[3]_2 (ena_mac_reg_rep__0_n_0),
        .\accumulator_reg[3]_3 (\CELULA_ROWS[3].CELULA_COLUMNS[2].MAC_n_0 ),
        .\accumulator_reg[3]_4 (\CELULA_ROWS[1].CELULA_COLUMNS[4].MAC_n_1 ),
        .\accumulator_reg[3]_5 (accumulator_reg_19[0]),
        .\accumulator_reg[3]_6 (ena_mac_reg_rep_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[3].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[3].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[3].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[2].CELULA_COLUMNS[2].MAC_n_0 ));
  accumulator_cells_21 \CELULA_ROWS[2].CELULA_COLUMNS[4].MAC 
       (.D(accumulator_reg_19),
        .DI(\CELULA_ROWS[2].CELULA_COLUMNS[4].MAC_n_10 ),
        .S(\CELULA_ROWS[2].CELULA_COLUMNS[3].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[4].MAC_n_10 ),
        .\accumulator_reg[3]_1 (ena_mac_reg_rep_n_0),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[3].CELULA_COLUMNS[3].MAC_n_0 ),
        .\accumulator_reg[3]_3 (\CELULA_ROWS[1].CELULA_COLUMNS[5].MAC_n_1 ),
        .\accumulator_reg[3]_4 (accumulator_reg_20[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[4].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[4].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[4].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[2].CELULA_COLUMNS[4].MAC_n_11 ),
        .\y_reg[0]_2 (\CELULA_ROWS[2].CELULA_COLUMNS[3].MAC_n_0 ));
  accumulator_cells_22 \CELULA_ROWS[2].CELULA_COLUMNS[5].MAC 
       (.D(accumulator_reg_20),
        .DI(\CELULA_ROWS[2].CELULA_COLUMNS[5].MAC_n_10 ),
        .S(\CELULA_ROWS[2].CELULA_COLUMNS[5].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[5].MAC_n_10 ),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[2].CELULA_COLUMNS[4].MAC_n_11 ),
        .\accumulator_reg[3]_2 (ena_mac_reg_rep_n_0),
        .\accumulator_reg[3]_3 (\CELULA_ROWS[3].CELULA_COLUMNS[4].MAC_n_0 ),
        .\accumulator_reg[3]_4 (\CELULA_ROWS[1].CELULA_COLUMNS[6].MAC_n_1 ),
        .\accumulator_reg[3]_5 (accumulator_reg_21[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\x_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[5].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[5].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[5].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[2].CELULA_COLUMNS[4].MAC_n_0 ));
  accumulator_cells_23 \CELULA_ROWS[2].CELULA_COLUMNS[6].MAC 
       (.D(accumulator_reg_21),
        .DI(\CELULA_ROWS[2].CELULA_COLUMNS[6].MAC_n_10 ),
        .S(\CELULA_ROWS[2].CELULA_COLUMNS[5].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[6].MAC_n_10 ),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[5].MAC_n_0 ),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[1].CELULA_COLUMNS[7].MAC_n_0 ),
        .\accumulator_reg[3]_3 (accumulator_reg_22[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\x_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[6].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[6].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[6].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[2].CELULA_COLUMNS[6].MAC_n_11 ),
        .\y_reg[0]_2 (\CELULA_ROWS[2].CELULA_COLUMNS[5].MAC_n_0 ));
  accumulator_cells_24 \CELULA_ROWS[2].CELULA_COLUMNS[7].MAC 
       (.D(accumulator_reg_22),
        .DI(\CELULA_ROWS[2].CELULA_COLUMNS[7].MAC_n_9 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[1].CELULA_COLUMNS[7].MAC_n_9 ),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[2].CELULA_COLUMNS[6].MAC_n_11 ),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[3].CELULA_COLUMNS[6].MAC_n_0 ),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\x_reg[0]_0 (\CELULA_ROWS[2].CELULA_COLUMNS[7].MAC_n_0 ),
        .\x_reg[0]_1 (\CELULA_ROWS[1].CELULA_COLUMNS[7].MAC_n_0 ));
  accumulator_cells_25 \CELULA_ROWS[3].CELULA_COLUMNS[0].MAC 
       (.D(accumulator_reg_23),
        .DI(\CELULA_ROWS[2].CELULA_COLUMNS[0].MAC_n_10 ),
        .Q({\b_load_reg_n_0_[4] ,\b_load_reg_n_0_[3] }),
        .S(\CELULA_ROWS[2].CELULA_COLUMNS[0].MAC_n_11 ),
        .\accumulator_reg[3]_0 (ena_mac_reg_rep__2_n_0),
        .\accumulator_reg[3]_1 (ena_mac_reg_rep__1_n_0),
        .\accumulator_reg[3]_2 (accumulator_reg_31[0]),
        .\accumulator_reg[3]_3 (\CELULA_ROWS[2].CELULA_COLUMNS[1].MAC_n_1 ),
        .\accumulator_reg[3]_4 (accumulator_reg_24[0]),
        .\b_load_reg[4] (\CELULA_ROWS[3].CELULA_COLUMNS[0].MAC_n_11 ),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[0].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[0].MAC_n_10 ),
        .\x_reg[0]_2 (\CELULA_ROWS[2].CELULA_COLUMNS[0].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[0].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[0].MAC_n_12 ));
  accumulator_cells_26 \CELULA_ROWS[3].CELULA_COLUMNS[1].MAC 
       (.D(accumulator_reg_24),
        .DI(\CELULA_ROWS[2].CELULA_COLUMNS[1].MAC_n_10 ),
        .S(\CELULA_ROWS[3].CELULA_COLUMNS[1].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[0].MAC_n_12 ),
        .\accumulator_reg[3]_1 (ena_mac_reg_rep__1_n_0),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[4].CELULA_COLUMNS[0].MAC_n_0 ),
        .\accumulator_reg[3]_3 (\CELULA_ROWS[2].CELULA_COLUMNS[2].MAC_n_1 ),
        .\accumulator_reg[3]_4 (accumulator_reg_25[0]),
        .\accumulator_reg[3]_5 (ena_mac_reg_rep__0_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[1].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[1].MAC_n_10 ),
        .\x_reg[0]_2 (\CELULA_ROWS[2].CELULA_COLUMNS[1].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[1].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[0].MAC_n_0 ));
  accumulator_cells_27 \CELULA_ROWS[3].CELULA_COLUMNS[2].MAC 
       (.D(accumulator_reg_25),
        .DI(\CELULA_ROWS[2].CELULA_COLUMNS[2].MAC_n_10 ),
        .S(\CELULA_ROWS[3].CELULA_COLUMNS[1].MAC_n_11 ),
        .\accumulator_reg[3]_0 (ena_mac_reg_rep__0_n_0),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[4].CELULA_COLUMNS[1].MAC_n_0 ),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[2].CELULA_COLUMNS[3].MAC_n_1 ),
        .\accumulator_reg[3]_3 (accumulator_reg_26[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[2].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[2].MAC_n_10 ),
        .\x_reg[0]_2 (\CELULA_ROWS[2].CELULA_COLUMNS[2].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[2].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[2].MAC_n_11 ),
        .\y_reg[0]_2 (\CELULA_ROWS[3].CELULA_COLUMNS[1].MAC_n_0 ));
  accumulator_cells_28 \CELULA_ROWS[3].CELULA_COLUMNS[3].MAC 
       (.D(accumulator_reg_26),
        .DI(\CELULA_ROWS[2].CELULA_COLUMNS[3].MAC_n_10 ),
        .S(\CELULA_ROWS[3].CELULA_COLUMNS[3].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[2].MAC_n_11 ),
        .\accumulator_reg[3]_1 (ena_mac_reg_rep__0_n_0),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[4].CELULA_COLUMNS[2].MAC_n_0 ),
        .\accumulator_reg[3]_3 (\CELULA_ROWS[2].CELULA_COLUMNS[4].MAC_n_1 ),
        .\accumulator_reg[3]_4 (accumulator_reg_27[0]),
        .\accumulator_reg[3]_5 (ena_mac_reg_rep_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[3].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[3].MAC_n_10 ),
        .\x_reg[0]_2 (\CELULA_ROWS[2].CELULA_COLUMNS[3].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[3].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[2].MAC_n_0 ));
  accumulator_cells_29 \CELULA_ROWS[3].CELULA_COLUMNS[4].MAC 
       (.D(accumulator_reg_27),
        .DI(\CELULA_ROWS[2].CELULA_COLUMNS[4].MAC_n_10 ),
        .S(\CELULA_ROWS[3].CELULA_COLUMNS[3].MAC_n_11 ),
        .\accumulator_reg[3]_0 (ena_mac_reg_rep_n_0),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[4].CELULA_COLUMNS[3].MAC_n_0 ),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[2].CELULA_COLUMNS[5].MAC_n_1 ),
        .\accumulator_reg[3]_3 (accumulator_reg_28[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[4].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[4].MAC_n_10 ),
        .\x_reg[0]_2 (\CELULA_ROWS[2].CELULA_COLUMNS[4].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[4].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[4].MAC_n_11 ),
        .\y_reg[0]_2 (\CELULA_ROWS[3].CELULA_COLUMNS[3].MAC_n_0 ));
  accumulator_cells_30 \CELULA_ROWS[3].CELULA_COLUMNS[5].MAC 
       (.D(accumulator_reg_28),
        .DI(\CELULA_ROWS[2].CELULA_COLUMNS[5].MAC_n_10 ),
        .S(\CELULA_ROWS[3].CELULA_COLUMNS[5].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[4].MAC_n_11 ),
        .\accumulator_reg[3]_1 (ena_mac_reg_rep_n_0),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[4].CELULA_COLUMNS[4].MAC_n_0 ),
        .\accumulator_reg[3]_3 (\CELULA_ROWS[2].CELULA_COLUMNS[6].MAC_n_1 ),
        .\accumulator_reg[3]_4 (accumulator_reg_29[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\x_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[5].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[5].MAC_n_10 ),
        .\x_reg[0]_2 (\CELULA_ROWS[2].CELULA_COLUMNS[5].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[5].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[4].MAC_n_0 ));
  accumulator_cells_31 \CELULA_ROWS[3].CELULA_COLUMNS[6].MAC 
       (.D(accumulator_reg_29),
        .DI(\CELULA_ROWS[2].CELULA_COLUMNS[6].MAC_n_10 ),
        .S(\CELULA_ROWS[3].CELULA_COLUMNS[5].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[5].MAC_n_0 ),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[2].CELULA_COLUMNS[7].MAC_n_0 ),
        .\accumulator_reg[3]_2 (accumulator_reg_30[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\x_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[6].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[6].MAC_n_10 ),
        .\x_reg[0]_2 (\CELULA_ROWS[2].CELULA_COLUMNS[6].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[6].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[6].MAC_n_11 ),
        .\y_reg[0]_2 (\CELULA_ROWS[3].CELULA_COLUMNS[5].MAC_n_0 ));
  accumulator_cells_32 \CELULA_ROWS[3].CELULA_COLUMNS[7].MAC 
       (.D(accumulator_reg_30),
        .DI(\CELULA_ROWS[2].CELULA_COLUMNS[7].MAC_n_9 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[6].MAC_n_11 ),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[4].CELULA_COLUMNS[6].MAC_n_0 ),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\x_reg[0]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[7].MAC_n_0 ),
        .\x_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[7].MAC_n_9 ),
        .\x_reg[0]_2 (\CELULA_ROWS[2].CELULA_COLUMNS[7].MAC_n_0 ));
  accumulator_cells_33 \CELULA_ROWS[4].CELULA_COLUMNS[0].MAC 
       (.D(accumulator_reg_31),
        .DI(\CELULA_ROWS[4].CELULA_COLUMNS[0].MAC_n_10 ),
        .Q({\b_load_reg_n_0_[5] ,\b_load_reg_n_0_[4] }),
        .S(\CELULA_ROWS[4].CELULA_COLUMNS[0].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[0].MAC_n_10 ),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[0].MAC_n_11 ),
        .\accumulator_reg[3]_2 (ena_mac_reg_rep__1_n_0),
        .\accumulator_reg[3]_3 (accumulator_reg_39[0]),
        .\accumulator_reg[3]_4 (\CELULA_ROWS[3].CELULA_COLUMNS[1].MAC_n_1 ),
        .\accumulator_reg[3]_5 (accumulator_reg_32[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[0].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[0].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[0].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[4].CELULA_COLUMNS[0].MAC_n_12 ));
  accumulator_cells_34 \CELULA_ROWS[4].CELULA_COLUMNS[1].MAC 
       (.D(accumulator_reg_32),
        .DI(\CELULA_ROWS[4].CELULA_COLUMNS[1].MAC_n_10 ),
        .S(\CELULA_ROWS[4].CELULA_COLUMNS[1].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[1].MAC_n_10 ),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[4].CELULA_COLUMNS[0].MAC_n_12 ),
        .\accumulator_reg[3]_2 (ena_mac_reg_rep__1_n_0),
        .\accumulator_reg[3]_3 (\CELULA_ROWS[5].CELULA_COLUMNS[0].MAC_n_0 ),
        .\accumulator_reg[3]_4 (\CELULA_ROWS[3].CELULA_COLUMNS[2].MAC_n_1 ),
        .\accumulator_reg[3]_5 (accumulator_reg_33[0]),
        .\accumulator_reg[3]_6 (ena_mac_reg_rep__0_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[1].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[1].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[1].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[4].CELULA_COLUMNS[0].MAC_n_0 ));
  accumulator_cells_35 \CELULA_ROWS[4].CELULA_COLUMNS[2].MAC 
       (.D(accumulator_reg_33),
        .DI(\CELULA_ROWS[4].CELULA_COLUMNS[2].MAC_n_10 ),
        .S(\CELULA_ROWS[4].CELULA_COLUMNS[1].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[2].MAC_n_10 ),
        .\accumulator_reg[3]_1 (ena_mac_reg_rep__0_n_0),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[5].CELULA_COLUMNS[1].MAC_n_0 ),
        .\accumulator_reg[3]_3 (\CELULA_ROWS[3].CELULA_COLUMNS[3].MAC_n_1 ),
        .\accumulator_reg[3]_4 (accumulator_reg_34[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[2].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[2].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[2].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[4].CELULA_COLUMNS[2].MAC_n_11 ),
        .\y_reg[0]_2 (\CELULA_ROWS[4].CELULA_COLUMNS[1].MAC_n_0 ));
  accumulator_cells_36 \CELULA_ROWS[4].CELULA_COLUMNS[3].MAC 
       (.D(accumulator_reg_34),
        .DI(\CELULA_ROWS[4].CELULA_COLUMNS[3].MAC_n_10 ),
        .S(\CELULA_ROWS[4].CELULA_COLUMNS[3].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[3].MAC_n_10 ),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[4].CELULA_COLUMNS[2].MAC_n_11 ),
        .\accumulator_reg[3]_2 (ena_mac_reg_rep__0_n_0),
        .\accumulator_reg[3]_3 (\CELULA_ROWS[5].CELULA_COLUMNS[2].MAC_n_0 ),
        .\accumulator_reg[3]_4 (\CELULA_ROWS[3].CELULA_COLUMNS[4].MAC_n_1 ),
        .\accumulator_reg[3]_5 (accumulator_reg_35[0]),
        .\accumulator_reg[3]_6 (ena_mac_reg_rep_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[3].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[3].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[3].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[4].CELULA_COLUMNS[2].MAC_n_0 ));
  accumulator_cells_37 \CELULA_ROWS[4].CELULA_COLUMNS[4].MAC 
       (.D(accumulator_reg_35),
        .DI(\CELULA_ROWS[4].CELULA_COLUMNS[4].MAC_n_10 ),
        .S(\CELULA_ROWS[4].CELULA_COLUMNS[3].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[4].MAC_n_10 ),
        .\accumulator_reg[3]_1 (ena_mac_reg_rep_n_0),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[5].CELULA_COLUMNS[3].MAC_n_0 ),
        .\accumulator_reg[3]_3 (\CELULA_ROWS[3].CELULA_COLUMNS[5].MAC_n_1 ),
        .\accumulator_reg[3]_4 (accumulator_reg_36[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[4].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[4].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[4].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[4].CELULA_COLUMNS[4].MAC_n_11 ),
        .\y_reg[0]_2 (\CELULA_ROWS[4].CELULA_COLUMNS[3].MAC_n_0 ));
  accumulator_cells_38 \CELULA_ROWS[4].CELULA_COLUMNS[5].MAC 
       (.D(accumulator_reg_36),
        .DI(\CELULA_ROWS[4].CELULA_COLUMNS[5].MAC_n_10 ),
        .S(\CELULA_ROWS[4].CELULA_COLUMNS[5].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[5].MAC_n_10 ),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[4].CELULA_COLUMNS[4].MAC_n_11 ),
        .\accumulator_reg[3]_2 (ena_mac_reg_rep_n_0),
        .\accumulator_reg[3]_3 (\CELULA_ROWS[5].CELULA_COLUMNS[4].MAC_n_0 ),
        .\accumulator_reg[3]_4 (\CELULA_ROWS[3].CELULA_COLUMNS[6].MAC_n_1 ),
        .\accumulator_reg[3]_5 (accumulator_reg_37[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\x_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[5].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[5].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[5].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[4].CELULA_COLUMNS[4].MAC_n_0 ));
  accumulator_cells_39 \CELULA_ROWS[4].CELULA_COLUMNS[6].MAC 
       (.D(accumulator_reg_37),
        .DI(\CELULA_ROWS[4].CELULA_COLUMNS[6].MAC_n_10 ),
        .S(\CELULA_ROWS[4].CELULA_COLUMNS[5].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[6].MAC_n_10 ),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[5].MAC_n_0 ),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[3].CELULA_COLUMNS[7].MAC_n_0 ),
        .\accumulator_reg[3]_3 (accumulator_reg_38[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\x_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[6].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[6].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[6].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[4].CELULA_COLUMNS[6].MAC_n_11 ),
        .\y_reg[0]_2 (\CELULA_ROWS[4].CELULA_COLUMNS[5].MAC_n_0 ));
  accumulator_cells_40 \CELULA_ROWS[4].CELULA_COLUMNS[7].MAC 
       (.D(accumulator_reg_38),
        .DI(\CELULA_ROWS[4].CELULA_COLUMNS[7].MAC_n_9 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[3].CELULA_COLUMNS[7].MAC_n_9 ),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[4].CELULA_COLUMNS[6].MAC_n_11 ),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[5].CELULA_COLUMNS[6].MAC_n_0 ),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\x_reg[0]_0 (\CELULA_ROWS[4].CELULA_COLUMNS[7].MAC_n_0 ),
        .\x_reg[0]_1 (\CELULA_ROWS[3].CELULA_COLUMNS[7].MAC_n_0 ));
  accumulator_cells_41 \CELULA_ROWS[5].CELULA_COLUMNS[0].MAC 
       (.D(accumulator_reg_39),
        .DI(\CELULA_ROWS[4].CELULA_COLUMNS[0].MAC_n_10 ),
        .Q({\b_load_reg_n_0_[6] ,\b_load_reg_n_0_[5] }),
        .S(\CELULA_ROWS[4].CELULA_COLUMNS[0].MAC_n_11 ),
        .\accumulator_reg[3]_0 (ena_mac_reg_rep__1_n_0),
        .\accumulator_reg[3]_1 (accumulator_reg_47[0]),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[4].CELULA_COLUMNS[1].MAC_n_1 ),
        .\accumulator_reg[3]_3 (accumulator_reg_40[0]),
        .\b_load_reg[6] (\CELULA_ROWS[5].CELULA_COLUMNS[0].MAC_n_11 ),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[0].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[0].MAC_n_10 ),
        .\x_reg[0]_2 (\CELULA_ROWS[4].CELULA_COLUMNS[0].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[0].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[0].MAC_n_12 ));
  accumulator_cells_42 \CELULA_ROWS[5].CELULA_COLUMNS[1].MAC 
       (.D(accumulator_reg_40),
        .DI(\CELULA_ROWS[4].CELULA_COLUMNS[1].MAC_n_10 ),
        .S(\CELULA_ROWS[5].CELULA_COLUMNS[1].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[0].MAC_n_12 ),
        .\accumulator_reg[3]_1 (ena_mac_reg_rep__1_n_0),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[6].CELULA_COLUMNS[0].MAC_n_0 ),
        .\accumulator_reg[3]_3 (\CELULA_ROWS[4].CELULA_COLUMNS[2].MAC_n_1 ),
        .\accumulator_reg[3]_4 (accumulator_reg_41[0]),
        .\accumulator_reg[3]_5 (ena_mac_reg_rep__0_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[1].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[1].MAC_n_10 ),
        .\x_reg[0]_2 (\CELULA_ROWS[4].CELULA_COLUMNS[1].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[1].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[0].MAC_n_0 ));
  accumulator_cells_43 \CELULA_ROWS[5].CELULA_COLUMNS[2].MAC 
       (.D(accumulator_reg_41),
        .DI(\CELULA_ROWS[4].CELULA_COLUMNS[2].MAC_n_10 ),
        .S(\CELULA_ROWS[5].CELULA_COLUMNS[1].MAC_n_11 ),
        .\accumulator_reg[3]_0 (ena_mac_reg_rep__0_n_0),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[6].CELULA_COLUMNS[1].MAC_n_0 ),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[4].CELULA_COLUMNS[3].MAC_n_1 ),
        .\accumulator_reg[3]_3 (accumulator_reg_42[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[2].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[2].MAC_n_10 ),
        .\x_reg[0]_2 (\CELULA_ROWS[4].CELULA_COLUMNS[2].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[2].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[2].MAC_n_11 ),
        .\y_reg[0]_2 (\CELULA_ROWS[5].CELULA_COLUMNS[1].MAC_n_0 ));
  accumulator_cells_44 \CELULA_ROWS[5].CELULA_COLUMNS[3].MAC 
       (.D(accumulator_reg_42),
        .DI(\CELULA_ROWS[4].CELULA_COLUMNS[3].MAC_n_10 ),
        .S(\CELULA_ROWS[5].CELULA_COLUMNS[3].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[2].MAC_n_11 ),
        .\accumulator_reg[3]_1 (ena_mac_reg_rep__0_n_0),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[6].CELULA_COLUMNS[2].MAC_n_0 ),
        .\accumulator_reg[3]_3 (\CELULA_ROWS[4].CELULA_COLUMNS[4].MAC_n_1 ),
        .\accumulator_reg[3]_4 (accumulator_reg_43[0]),
        .\accumulator_reg[3]_5 (ena_mac_reg_rep_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[3].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[3].MAC_n_10 ),
        .\x_reg[0]_2 (\CELULA_ROWS[4].CELULA_COLUMNS[3].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[3].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[2].MAC_n_0 ));
  accumulator_cells_45 \CELULA_ROWS[5].CELULA_COLUMNS[4].MAC 
       (.D(accumulator_reg_43),
        .DI(\CELULA_ROWS[4].CELULA_COLUMNS[4].MAC_n_10 ),
        .S(\CELULA_ROWS[5].CELULA_COLUMNS[3].MAC_n_11 ),
        .\accumulator_reg[3]_0 (ena_mac_reg_rep_n_0),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[6].CELULA_COLUMNS[3].MAC_n_0 ),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[4].CELULA_COLUMNS[5].MAC_n_1 ),
        .\accumulator_reg[3]_3 (accumulator_reg_44[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[4].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[4].MAC_n_10 ),
        .\x_reg[0]_2 (\CELULA_ROWS[4].CELULA_COLUMNS[4].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[4].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[4].MAC_n_11 ),
        .\y_reg[0]_2 (\CELULA_ROWS[5].CELULA_COLUMNS[3].MAC_n_0 ));
  accumulator_cells_46 \CELULA_ROWS[5].CELULA_COLUMNS[5].MAC 
       (.D(accumulator_reg_44),
        .DI(\CELULA_ROWS[4].CELULA_COLUMNS[5].MAC_n_10 ),
        .S(\CELULA_ROWS[5].CELULA_COLUMNS[5].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[4].MAC_n_11 ),
        .\accumulator_reg[3]_1 (ena_mac_reg_rep_n_0),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[6].CELULA_COLUMNS[4].MAC_n_0 ),
        .\accumulator_reg[3]_3 (\CELULA_ROWS[4].CELULA_COLUMNS[6].MAC_n_1 ),
        .\accumulator_reg[3]_4 (accumulator_reg_45[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\x_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[5].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[5].MAC_n_10 ),
        .\x_reg[0]_2 (\CELULA_ROWS[4].CELULA_COLUMNS[5].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[5].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[4].MAC_n_0 ));
  accumulator_cells_47 \CELULA_ROWS[5].CELULA_COLUMNS[6].MAC 
       (.D(accumulator_reg_45),
        .DI(\CELULA_ROWS[4].CELULA_COLUMNS[6].MAC_n_10 ),
        .S(\CELULA_ROWS[5].CELULA_COLUMNS[5].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[5].MAC_n_0 ),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[4].CELULA_COLUMNS[7].MAC_n_0 ),
        .\accumulator_reg[3]_2 (accumulator_reg_46[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\x_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[6].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[6].MAC_n_10 ),
        .\x_reg[0]_2 (\CELULA_ROWS[4].CELULA_COLUMNS[6].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[6].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[6].MAC_n_11 ),
        .\y_reg[0]_2 (\CELULA_ROWS[5].CELULA_COLUMNS[5].MAC_n_0 ));
  accumulator_cells_48 \CELULA_ROWS[5].CELULA_COLUMNS[7].MAC 
       (.D(accumulator_reg_46),
        .DI(\CELULA_ROWS[4].CELULA_COLUMNS[7].MAC_n_9 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[6].MAC_n_11 ),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[6].CELULA_COLUMNS[6].MAC_n_0 ),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\x_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[7].MAC_n_0 ),
        .\x_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[7].MAC_n_9 ),
        .\x_reg[0]_2 (\CELULA_ROWS[4].CELULA_COLUMNS[7].MAC_n_0 ));
  accumulator_cells_49 \CELULA_ROWS[6].CELULA_COLUMNS[0].MAC 
       (.D(accumulator_reg_47),
        .DI(\CELULA_ROWS[6].CELULA_COLUMNS[0].MAC_n_9 ),
        .Q({\b_load_reg_n_0_[7] ,\b_load_reg_n_0_[6] }),
        .S(\CELULA_ROWS[6].CELULA_COLUMNS[0].MAC_n_10 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[0].MAC_n_10 ),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[0].MAC_n_11 ),
        .\accumulator_reg[3]_2 (ena_mac_reg_rep__1_n_0),
        .\accumulator_reg[3]_3 (accumulator_reg_55[0]),
        .\accumulator_reg[3]_4 (\CELULA_ROWS[5].CELULA_COLUMNS[1].MAC_n_1 ),
        .\accumulator_reg[3]_5 (accumulator_reg_48[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[0].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[0].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[6].CELULA_COLUMNS[0].MAC_n_11 ));
  accumulator_cells_50 \CELULA_ROWS[6].CELULA_COLUMNS[1].MAC 
       (.D(accumulator_reg_48),
        .DI(\CELULA_ROWS[6].CELULA_COLUMNS[1].MAC_n_10 ),
        .S(\CELULA_ROWS[6].CELULA_COLUMNS[1].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[1].MAC_n_10 ),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[6].CELULA_COLUMNS[0].MAC_n_11 ),
        .\accumulator_reg[3]_2 (ena_mac_reg_rep__1_n_0),
        .\accumulator_reg[3]_3 (\CELULA_ROWS[7].CELULA_COLUMNS[0].MAC_n_0 ),
        .\accumulator_reg[3]_4 (\CELULA_ROWS[5].CELULA_COLUMNS[2].MAC_n_1 ),
        .\accumulator_reg[3]_5 (accumulator_reg_49[0]),
        .\accumulator_reg[3]_6 (ena_mac_reg_rep__0_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[1].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[1].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[1].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[6].CELULA_COLUMNS[0].MAC_n_0 ));
  accumulator_cells_51 \CELULA_ROWS[6].CELULA_COLUMNS[2].MAC 
       (.D(accumulator_reg_49),
        .DI(\CELULA_ROWS[6].CELULA_COLUMNS[2].MAC_n_10 ),
        .S(\CELULA_ROWS[6].CELULA_COLUMNS[1].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[2].MAC_n_10 ),
        .\accumulator_reg[3]_1 (ena_mac_reg_rep__0_n_0),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[7].CELULA_COLUMNS[1].MAC_n_0 ),
        .\accumulator_reg[3]_3 (\CELULA_ROWS[5].CELULA_COLUMNS[3].MAC_n_1 ),
        .\accumulator_reg[3]_4 (accumulator_reg_50[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[2].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[2].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[2].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[6].CELULA_COLUMNS[2].MAC_n_11 ),
        .\y_reg[0]_2 (\CELULA_ROWS[6].CELULA_COLUMNS[1].MAC_n_0 ));
  accumulator_cells_52 \CELULA_ROWS[6].CELULA_COLUMNS[3].MAC 
       (.D(accumulator_reg_50),
        .DI(\CELULA_ROWS[6].CELULA_COLUMNS[3].MAC_n_10 ),
        .S(\CELULA_ROWS[6].CELULA_COLUMNS[3].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[3].MAC_n_10 ),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[6].CELULA_COLUMNS[2].MAC_n_11 ),
        .\accumulator_reg[3]_2 (ena_mac_reg_rep__0_n_0),
        .\accumulator_reg[3]_3 (\CELULA_ROWS[7].CELULA_COLUMNS[2].MAC_n_0 ),
        .\accumulator_reg[3]_4 (\CELULA_ROWS[5].CELULA_COLUMNS[4].MAC_n_1 ),
        .\accumulator_reg[3]_5 (accumulator_reg_51[0]),
        .\accumulator_reg[3]_6 (ena_mac_reg_rep_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[3].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[3].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[3].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[6].CELULA_COLUMNS[2].MAC_n_0 ));
  accumulator_cells_53 \CELULA_ROWS[6].CELULA_COLUMNS[4].MAC 
       (.D(accumulator_reg_51),
        .DI(\CELULA_ROWS[6].CELULA_COLUMNS[4].MAC_n_10 ),
        .S(\CELULA_ROWS[6].CELULA_COLUMNS[3].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[4].MAC_n_10 ),
        .\accumulator_reg[3]_1 (ena_mac_reg_rep_n_0),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[7].CELULA_COLUMNS[3].MAC_n_0 ),
        .\accumulator_reg[3]_3 (\CELULA_ROWS[5].CELULA_COLUMNS[5].MAC_n_1 ),
        .\accumulator_reg[3]_4 (accumulator_reg_52[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\x_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[4].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[4].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[4].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[6].CELULA_COLUMNS[4].MAC_n_11 ),
        .\y_reg[0]_2 (\CELULA_ROWS[6].CELULA_COLUMNS[3].MAC_n_0 ));
  accumulator_cells_54 \CELULA_ROWS[6].CELULA_COLUMNS[5].MAC 
       (.D(accumulator_reg_52),
        .DI(\CELULA_ROWS[6].CELULA_COLUMNS[5].MAC_n_10 ),
        .S(\CELULA_ROWS[6].CELULA_COLUMNS[5].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[5].MAC_n_10 ),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[6].CELULA_COLUMNS[4].MAC_n_11 ),
        .\accumulator_reg[3]_2 (ena_mac_reg_rep_n_0),
        .\accumulator_reg[3]_3 (\CELULA_ROWS[7].CELULA_COLUMNS[4].MAC_n_0 ),
        .\accumulator_reg[3]_4 (\CELULA_ROWS[5].CELULA_COLUMNS[6].MAC_n_1 ),
        .\accumulator_reg[3]_5 (accumulator_reg_53[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\x_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[5].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[5].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[5].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[6].CELULA_COLUMNS[4].MAC_n_0 ));
  accumulator_cells_55 \CELULA_ROWS[6].CELULA_COLUMNS[6].MAC 
       (.D(accumulator_reg_53),
        .DI(\CELULA_ROWS[6].CELULA_COLUMNS[6].MAC_n_10 ),
        .S(\CELULA_ROWS[6].CELULA_COLUMNS[5].MAC_n_11 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[6].MAC_n_10 ),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[7].CELULA_COLUMNS[5].MAC_n_0 ),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[5].CELULA_COLUMNS[7].MAC_n_0 ),
        .\accumulator_reg[3]_3 (accumulator_reg_54[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\x_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[6].MAC_n_1 ),
        .\x_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[6].MAC_n_1 ),
        .\y_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[6].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[6].CELULA_COLUMNS[6].MAC_n_11 ),
        .\y_reg[0]_2 (\CELULA_ROWS[6].CELULA_COLUMNS[5].MAC_n_0 ));
  accumulator_cells_56 \CELULA_ROWS[6].CELULA_COLUMNS[7].MAC 
       (.D(accumulator_reg_54),
        .DI(\CELULA_ROWS[6].CELULA_COLUMNS[7].MAC_n_9 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[5].CELULA_COLUMNS[7].MAC_n_9 ),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[6].CELULA_COLUMNS[6].MAC_n_11 ),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[7].CELULA_COLUMNS[6].MAC_n_0 ),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\x_reg[0]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[7].MAC_n_0 ),
        .\x_reg[0]_1 (\CELULA_ROWS[5].CELULA_COLUMNS[7].MAC_n_0 ));
  accumulator_cells_57 \CELULA_ROWS[7].CELULA_COLUMNS[0].MAC 
       (.D(accumulator_reg_55),
        .DI(\CELULA_ROWS[6].CELULA_COLUMNS[0].MAC_n_9 ),
        .Q(\b_load_reg_n_0_[7] ),
        .S(\CELULA_ROWS[6].CELULA_COLUMNS[0].MAC_n_10 ),
        .\accumulator_reg[3]_0 (ena_mac_reg_rep__1_n_0),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[6].CELULA_COLUMNS[1].MAC_n_1 ),
        .\accumulator_reg[3]_2 (accumulator_reg_56[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\y_reg[0]_0 (\CELULA_ROWS[7].CELULA_COLUMNS[0].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[7].CELULA_COLUMNS[0].MAC_n_9 ));
  accumulator_cells_58 \CELULA_ROWS[7].CELULA_COLUMNS[1].MAC 
       (.D(accumulator_reg_56),
        .DI(\CELULA_ROWS[6].CELULA_COLUMNS[1].MAC_n_10 ),
        .S(\CELULA_ROWS[7].CELULA_COLUMNS[1].MAC_n_9 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[7].CELULA_COLUMNS[0].MAC_n_9 ),
        .\accumulator_reg[3]_1 (ena_mac_reg_rep__1_n_0),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[6].CELULA_COLUMNS[2].MAC_n_1 ),
        .\accumulator_reg[3]_3 (accumulator_reg_57[0]),
        .\accumulator_reg[3]_4 (ena_mac_reg_rep__0_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\y_reg[0]_0 (\CELULA_ROWS[7].CELULA_COLUMNS[1].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[7].CELULA_COLUMNS[0].MAC_n_0 ));
  accumulator_cells_59 \CELULA_ROWS[7].CELULA_COLUMNS[2].MAC 
       (.D(accumulator_reg_57),
        .DI(\CELULA_ROWS[6].CELULA_COLUMNS[2].MAC_n_10 ),
        .S(\CELULA_ROWS[7].CELULA_COLUMNS[1].MAC_n_9 ),
        .\accumulator_reg[3]_0 (ena_mac_reg_rep__0_n_0),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[6].CELULA_COLUMNS[3].MAC_n_1 ),
        .\accumulator_reg[3]_2 (accumulator_reg_58[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\y_reg[0]_0 (\CELULA_ROWS[7].CELULA_COLUMNS[2].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[7].CELULA_COLUMNS[2].MAC_n_9 ),
        .\y_reg[0]_2 (\CELULA_ROWS[7].CELULA_COLUMNS[1].MAC_n_0 ));
  accumulator_cells_60 \CELULA_ROWS[7].CELULA_COLUMNS[3].MAC 
       (.D(accumulator_reg_58),
        .DI(\CELULA_ROWS[6].CELULA_COLUMNS[3].MAC_n_10 ),
        .S(\CELULA_ROWS[7].CELULA_COLUMNS[3].MAC_n_9 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[7].CELULA_COLUMNS[2].MAC_n_9 ),
        .\accumulator_reg[3]_1 (ena_mac_reg_rep__0_n_0),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[6].CELULA_COLUMNS[4].MAC_n_1 ),
        .\accumulator_reg[3]_3 (accumulator_reg_59[0]),
        .\accumulator_reg[3]_4 (ena_mac_reg_rep_n_0),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\y_reg[0]_0 (\CELULA_ROWS[7].CELULA_COLUMNS[3].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[7].CELULA_COLUMNS[2].MAC_n_0 ));
  accumulator_cells_61 \CELULA_ROWS[7].CELULA_COLUMNS[4].MAC 
       (.D(accumulator_reg_59),
        .DI(\CELULA_ROWS[6].CELULA_COLUMNS[4].MAC_n_10 ),
        .S(\CELULA_ROWS[7].CELULA_COLUMNS[3].MAC_n_9 ),
        .\accumulator_reg[3]_0 (ena_mac_reg_rep_n_0),
        .\accumulator_reg[3]_1 (\CELULA_ROWS[6].CELULA_COLUMNS[5].MAC_n_1 ),
        .\accumulator_reg[3]_2 (accumulator_reg_60[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .\y_reg[0]_0 (\CELULA_ROWS[7].CELULA_COLUMNS[4].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[7].CELULA_COLUMNS[4].MAC_n_9 ),
        .\y_reg[0]_2 (\CELULA_ROWS[7].CELULA_COLUMNS[3].MAC_n_0 ));
  accumulator_cells_62 \CELULA_ROWS[7].CELULA_COLUMNS[5].MAC 
       (.D(accumulator_reg_60),
        .DI(\CELULA_ROWS[6].CELULA_COLUMNS[5].MAC_n_10 ),
        .S(\CELULA_ROWS[7].CELULA_COLUMNS[5].MAC_n_9 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[7].CELULA_COLUMNS[4].MAC_n_9 ),
        .\accumulator_reg[3]_1 (ena_mac_reg_rep_n_0),
        .\accumulator_reg[3]_2 (\CELULA_ROWS[6].CELULA_COLUMNS[6].MAC_n_1 ),
        .\accumulator_reg[3]_3 (accumulator_reg_61[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\y_reg[0]_0 (\CELULA_ROWS[7].CELULA_COLUMNS[5].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[7].CELULA_COLUMNS[4].MAC_n_0 ));
  accumulator_cells_63 \CELULA_ROWS[7].CELULA_COLUMNS[6].MAC 
       (.D(accumulator_reg_61),
        .DI(\CELULA_ROWS[6].CELULA_COLUMNS[6].MAC_n_10 ),
        .S(\CELULA_ROWS[7].CELULA_COLUMNS[5].MAC_n_9 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[6].CELULA_COLUMNS[7].MAC_n_0 ),
        .\accumulator_reg[3]_1 (accumulator_reg_62[0]),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac),
        .\y_reg[0]_0 (\CELULA_ROWS[7].CELULA_COLUMNS[6].MAC_n_0 ),
        .\y_reg[0]_1 (\CELULA_ROWS[7].CELULA_COLUMNS[6].MAC_n_9 ),
        .\y_reg[0]_2 (\CELULA_ROWS[7].CELULA_COLUMNS[5].MAC_n_0 ));
  accumulator_cells_64 \CELULA_ROWS[7].CELULA_COLUMNS[7].MAC 
       (.D(accumulator_reg_62),
        .DI(\CELULA_ROWS[6].CELULA_COLUMNS[7].MAC_n_9 ),
        .\accumulator_reg[3]_0 (\CELULA_ROWS[7].CELULA_COLUMNS[6].MAC_n_9 ),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .ena_mac(ena_mac));
  LUT5 #(
    .INIT(32'hF777F000)) 
    \FSM_onehot_fsm_unit_control_next_reg[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\FSM_onehot_fsm_unit_control_reg[2] ),
        .I3(\FSM_onehot_fsm_unit_control_reg[3] [0]),
        .I4(\FSM_onehot_fsm_unit_control_reg[3] [1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    \FSM_onehot_fsm_unit_control_next_reg[3]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\FSM_onehot_fsm_unit_control_reg[3] [1]),
        .I3(systolicControlUnit_mem2serial_rvalid_o),
        .I4(\FSM_onehot_fsm_unit_control_reg[3] [2]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h33307777FFFC4444)) 
    \FSM_sequential_currentStateSystolicControlUnit[0]_i_1 
       (.I0(counter_transfer_m[4]),
        .I1(Q[0]),
        .I2(counter_mult[3]),
        .I3(counter_mult[4]),
        .I4(Q[1]),
        .I5(systolicControlUnit_syst_rready_i),
        .O(nextStateSystolicControlUnit__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7C4C)) 
    \FSM_sequential_currentStateSystolicControlUnit[1]_i_1 
       (.I0(systolicControlUnit_syst_rready_i),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(counter_transfer_m[4]),
        .O(nextStateSystolicControlUnit__0[1]));
  (* FSM_ENCODED_STATES = "LOAD_MULTI_MATRIX:01,MULTI_MATRIX:10,DONE:11,IDLE:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_currentStateSystolicControlUnit_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(nextStateSystolicControlUnit__0[0]),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "LOAD_MULTI_MATRIX:01,MULTI_MATRIX:10,DONE:11,IDLE:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_currentStateSystolicControlUnit_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(nextStateSystolicControlUnit__0[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \a_load_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\a_load_reg[7]_0 [0]),
        .Q(\a_load_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_load_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\a_load_reg[7]_0 [1]),
        .Q(A));
  FDCE #(
    .INIT(1'b0)) 
    \a_load_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\a_load_reg[7]_0 [2]),
        .Q(\a_load_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_load_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\a_load_reg[7]_0 [3]),
        .Q(\a_load_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_load_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\a_load_reg[7]_0 [4]),
        .Q(\a_load_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_load_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\a_load_reg[7]_0 [5]),
        .Q(\a_load_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_load_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\a_load_reg[7]_0 [6]),
        .Q(\a_load_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_load_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\a_load_reg[7]_0 [7]),
        .Q(\a_load_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_load_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\b_load_reg[7]_0 [0]),
        .Q(\b_load_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_load_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\b_load_reg[7]_0 [1]),
        .Q(B));
  FDCE #(
    .INIT(1'b0)) 
    \b_load_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\b_load_reg[7]_0 [2]),
        .Q(\b_load_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_load_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\b_load_reg[7]_0 [3]),
        .Q(\b_load_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_load_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\b_load_reg[7]_0 [4]),
        .Q(\b_load_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_load_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\b_load_reg[7]_0 [5]),
        .Q(\b_load_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_load_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\b_load_reg[7]_0 [6]),
        .Q(\b_load_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_load_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\b_load_reg[7]_0 [7]),
        .Q(\b_load_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter_mult[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(counter_mult[0]),
        .O(next_counter_mult__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1400)) 
    \counter_mult[1]_i_1 
       (.I0(Q[0]),
        .I1(counter_mult[0]),
        .I2(counter_mult[1]),
        .I3(Q[1]),
        .O(next_counter_mult__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h15400000)) 
    \counter_mult[2]_i_1 
       (.I0(Q[0]),
        .I1(counter_mult[0]),
        .I2(counter_mult[1]),
        .I3(counter_mult[2]),
        .I4(Q[1]),
        .O(next_counter_mult__0[2]));
  LUT6 #(
    .INIT(64'h1555400000000000)) 
    \counter_mult[3]_i_1 
       (.I0(Q[0]),
        .I1(counter_mult[1]),
        .I2(counter_mult[0]),
        .I3(counter_mult[2]),
        .I4(counter_mult[3]),
        .I5(Q[1]),
        .O(next_counter_mult__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h15400000)) 
    \counter_mult[4]_i_1 
       (.I0(Q[0]),
        .I1(\counter_mult[4]_i_2_n_0 ),
        .I2(counter_mult[3]),
        .I3(counter_mult[4]),
        .I4(Q[1]),
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter_transfer_m[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(counter_transfer_m[0]),
        .O(next_counter_transfer_m__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \counter_transfer_m[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(counter_transfer_m[0]),
        .I3(counter_transfer_m[1]),
        .O(next_counter_transfer_m__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h04444000)) 
    \counter_transfer_m[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(counter_transfer_m[0]),
        .I3(counter_transfer_m[1]),
        .I4(counter_transfer_m[2]),
        .O(next_counter_transfer_m__0[2]));
  LUT6 #(
    .INIT(64'h0444444440000000)) 
    \counter_transfer_m[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(counter_transfer_m[1]),
        .I3(counter_transfer_m[0]),
        .I4(counter_transfer_m[2]),
        .I5(counter_transfer_m[3]),
        .O(next_counter_transfer_m__0[3]));
  LUT5 #(
    .INIT(32'h04444000)) 
    \counter_transfer_m[4]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\counter_transfer_m[4]_i_2_n_0 ),
        .I3(counter_transfer_m[3]),
        .I4(counter_transfer_m[4]),
        .O(next_counter_transfer_m__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2226)) 
    ena_mac_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(counter_mult[3]),
        .I3(counter_mult[4]),
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
  (* ORIG_CELL_NAME = "ena_mac_reg" *) 
  FDCE #(
    .INIT(1'b0)) 
    ena_mac_reg_rep__2
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(ena_mac_rep__2_i_1_n_0),
        .Q(ena_mac_reg_rep__2_n_0));
  LUT4 #(
    .INIT(16'h2226)) 
    ena_mac_rep__0_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(counter_mult[3]),
        .I3(counter_mult[4]),
        .O(ena_mac_rep__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2226)) 
    ena_mac_rep__1_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(counter_mult[3]),
        .I3(counter_mult[4]),
        .O(ena_mac_rep__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2226)) 
    ena_mac_rep__2_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(counter_mult[3]),
        .I3(counter_mult[4]),
        .O(ena_mac_rep__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2226)) 
    ena_mac_rep_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(counter_mult[3]),
        .I3(counter_mult[4]),
        .O(ena_mac_rep_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \output_produc_a_b[7][7][7]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\output_produc_a_b[7][7][7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][0][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_62[0]),
        .Q(\syst_output_produc_a_b[0][0]_63 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][0][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_62[1]),
        .Q(\syst_output_produc_a_b[0][0]_63 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][0][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_62[2]),
        .Q(\syst_output_produc_a_b[0][0]_63 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][0][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_62[3]),
        .Q(\syst_output_produc_a_b[0][0]_63 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][0][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_62[4]),
        .Q(\syst_output_produc_a_b[0][0]_63 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][0][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_62[5]),
        .Q(\syst_output_produc_a_b[0][0]_63 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][0][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_62[6]),
        .Q(\syst_output_produc_a_b[0][0]_63 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][0][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_62[7]),
        .Q(\syst_output_produc_a_b[0][0]_63 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][1][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_54[0]),
        .Q(\syst_output_produc_a_b[0][1]_62 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][1][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_54[1]),
        .Q(\syst_output_produc_a_b[0][1]_62 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][1][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_54[2]),
        .Q(\syst_output_produc_a_b[0][1]_62 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][1][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_54[3]),
        .Q(\syst_output_produc_a_b[0][1]_62 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][1][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_54[4]),
        .Q(\syst_output_produc_a_b[0][1]_62 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][1][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_54[5]),
        .Q(\syst_output_produc_a_b[0][1]_62 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][1][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_54[6]),
        .Q(\syst_output_produc_a_b[0][1]_62 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][1][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_54[7]),
        .Q(\syst_output_produc_a_b[0][1]_62 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][2][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_46[0]),
        .Q(\syst_output_produc_a_b[0][2]_61 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][2][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_46[1]),
        .Q(\syst_output_produc_a_b[0][2]_61 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][2][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_46[2]),
        .Q(\syst_output_produc_a_b[0][2]_61 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][2][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_46[3]),
        .Q(\syst_output_produc_a_b[0][2]_61 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][2][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_46[4]),
        .Q(\syst_output_produc_a_b[0][2]_61 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][2][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_46[5]),
        .Q(\syst_output_produc_a_b[0][2]_61 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][2][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_46[6]),
        .Q(\syst_output_produc_a_b[0][2]_61 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][2][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_46[7]),
        .Q(\syst_output_produc_a_b[0][2]_61 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][3][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_38[0]),
        .Q(\syst_output_produc_a_b[0][3]_60 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][3][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_38[1]),
        .Q(\syst_output_produc_a_b[0][3]_60 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][3][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_38[2]),
        .Q(\syst_output_produc_a_b[0][3]_60 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][3][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_38[3]),
        .Q(\syst_output_produc_a_b[0][3]_60 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][3][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_38[4]),
        .Q(\syst_output_produc_a_b[0][3]_60 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][3][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_38[5]),
        .Q(\syst_output_produc_a_b[0][3]_60 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][3][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_38[6]),
        .Q(\syst_output_produc_a_b[0][3]_60 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][3][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_38[7]),
        .Q(\syst_output_produc_a_b[0][3]_60 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][4][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_30[0]),
        .Q(\syst_output_produc_a_b[0][4]_59 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][4][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_30[1]),
        .Q(\syst_output_produc_a_b[0][4]_59 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][4][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_30[2]),
        .Q(\syst_output_produc_a_b[0][4]_59 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][4][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_30[3]),
        .Q(\syst_output_produc_a_b[0][4]_59 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][4][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_30[4]),
        .Q(\syst_output_produc_a_b[0][4]_59 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][4][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_30[5]),
        .Q(\syst_output_produc_a_b[0][4]_59 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][4][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_30[6]),
        .Q(\syst_output_produc_a_b[0][4]_59 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][4][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_30[7]),
        .Q(\syst_output_produc_a_b[0][4]_59 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][5][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_22[0]),
        .Q(\syst_output_produc_a_b[0][5]_58 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][5][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_22[1]),
        .Q(\syst_output_produc_a_b[0][5]_58 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][5][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_22[2]),
        .Q(\syst_output_produc_a_b[0][5]_58 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][5][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_22[3]),
        .Q(\syst_output_produc_a_b[0][5]_58 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][5][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_22[4]),
        .Q(\syst_output_produc_a_b[0][5]_58 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][5][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_22[5]),
        .Q(\syst_output_produc_a_b[0][5]_58 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][5][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_22[6]),
        .Q(\syst_output_produc_a_b[0][5]_58 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][5][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_22[7]),
        .Q(\syst_output_produc_a_b[0][5]_58 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][6][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_14[0]),
        .Q(\syst_output_produc_a_b[0][6]_57 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][6][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_14[1]),
        .Q(\syst_output_produc_a_b[0][6]_57 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][6][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_14[2]),
        .Q(\syst_output_produc_a_b[0][6]_57 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][6][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_14[3]),
        .Q(\syst_output_produc_a_b[0][6]_57 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][6][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_14[4]),
        .Q(\syst_output_produc_a_b[0][6]_57 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][6][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_14[5]),
        .Q(\syst_output_produc_a_b[0][6]_57 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][6][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_14[6]),
        .Q(\syst_output_produc_a_b[0][6]_57 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][6][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_14[7]),
        .Q(\syst_output_produc_a_b[0][6]_57 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][7][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_6[0]),
        .Q(\syst_output_produc_a_b[0][7]_56 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][7][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_6[1]),
        .Q(\syst_output_produc_a_b[0][7]_56 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][7][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_6[2]),
        .Q(\syst_output_produc_a_b[0][7]_56 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][7][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_6[3]),
        .Q(\syst_output_produc_a_b[0][7]_56 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][7][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_6[4]),
        .Q(\syst_output_produc_a_b[0][7]_56 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][7][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_6[5]),
        .Q(\syst_output_produc_a_b[0][7]_56 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][7][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_6[6]),
        .Q(\syst_output_produc_a_b[0][7]_56 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[0][7][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_6[7]),
        .Q(\syst_output_produc_a_b[0][7]_56 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][0][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_61[0]),
        .Q(\syst_output_produc_a_b[1][0]_55 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][0][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_61[1]),
        .Q(\syst_output_produc_a_b[1][0]_55 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][0][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_61[2]),
        .Q(\syst_output_produc_a_b[1][0]_55 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][0][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_61[3]),
        .Q(\syst_output_produc_a_b[1][0]_55 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][0][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_61[4]),
        .Q(\syst_output_produc_a_b[1][0]_55 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][0][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_61[5]),
        .Q(\syst_output_produc_a_b[1][0]_55 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][0][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_61[6]),
        .Q(\syst_output_produc_a_b[1][0]_55 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][0][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_61[7]),
        .Q(\syst_output_produc_a_b[1][0]_55 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][1][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_53[0]),
        .Q(\syst_output_produc_a_b[1][1]_54 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][1][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_53[1]),
        .Q(\syst_output_produc_a_b[1][1]_54 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][1][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_53[2]),
        .Q(\syst_output_produc_a_b[1][1]_54 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][1][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_53[3]),
        .Q(\syst_output_produc_a_b[1][1]_54 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][1][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_53[4]),
        .Q(\syst_output_produc_a_b[1][1]_54 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][1][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_53[5]),
        .Q(\syst_output_produc_a_b[1][1]_54 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][1][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_53[6]),
        .Q(\syst_output_produc_a_b[1][1]_54 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][1][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_53[7]),
        .Q(\syst_output_produc_a_b[1][1]_54 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][2][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_45[0]),
        .Q(\syst_output_produc_a_b[1][2]_53 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][2][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_45[1]),
        .Q(\syst_output_produc_a_b[1][2]_53 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][2][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_45[2]),
        .Q(\syst_output_produc_a_b[1][2]_53 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][2][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_45[3]),
        .Q(\syst_output_produc_a_b[1][2]_53 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][2][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_45[4]),
        .Q(\syst_output_produc_a_b[1][2]_53 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][2][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_45[5]),
        .Q(\syst_output_produc_a_b[1][2]_53 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][2][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_45[6]),
        .Q(\syst_output_produc_a_b[1][2]_53 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][2][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_45[7]),
        .Q(\syst_output_produc_a_b[1][2]_53 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][3][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_37[0]),
        .Q(\syst_output_produc_a_b[1][3]_52 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][3][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_37[1]),
        .Q(\syst_output_produc_a_b[1][3]_52 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][3][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_37[2]),
        .Q(\syst_output_produc_a_b[1][3]_52 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][3][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_37[3]),
        .Q(\syst_output_produc_a_b[1][3]_52 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][3][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_37[4]),
        .Q(\syst_output_produc_a_b[1][3]_52 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][3][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_37[5]),
        .Q(\syst_output_produc_a_b[1][3]_52 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][3][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_37[6]),
        .Q(\syst_output_produc_a_b[1][3]_52 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][3][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_37[7]),
        .Q(\syst_output_produc_a_b[1][3]_52 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][4][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_29[0]),
        .Q(\syst_output_produc_a_b[1][4]_51 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][4][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_29[1]),
        .Q(\syst_output_produc_a_b[1][4]_51 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][4][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_29[2]),
        .Q(\syst_output_produc_a_b[1][4]_51 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][4][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_29[3]),
        .Q(\syst_output_produc_a_b[1][4]_51 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][4][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_29[4]),
        .Q(\syst_output_produc_a_b[1][4]_51 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][4][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_29[5]),
        .Q(\syst_output_produc_a_b[1][4]_51 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][4][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_29[6]),
        .Q(\syst_output_produc_a_b[1][4]_51 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][4][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_29[7]),
        .Q(\syst_output_produc_a_b[1][4]_51 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][5][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_21[0]),
        .Q(\syst_output_produc_a_b[1][5]_50 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][5][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_21[1]),
        .Q(\syst_output_produc_a_b[1][5]_50 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][5][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_21[2]),
        .Q(\syst_output_produc_a_b[1][5]_50 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][5][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_21[3]),
        .Q(\syst_output_produc_a_b[1][5]_50 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][5][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_21[4]),
        .Q(\syst_output_produc_a_b[1][5]_50 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][5][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_21[5]),
        .Q(\syst_output_produc_a_b[1][5]_50 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][5][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_21[6]),
        .Q(\syst_output_produc_a_b[1][5]_50 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][5][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_21[7]),
        .Q(\syst_output_produc_a_b[1][5]_50 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][6][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_13[0]),
        .Q(\syst_output_produc_a_b[1][6]_49 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][6][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_13[1]),
        .Q(\syst_output_produc_a_b[1][6]_49 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][6][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_13[2]),
        .Q(\syst_output_produc_a_b[1][6]_49 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][6][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_13[3]),
        .Q(\syst_output_produc_a_b[1][6]_49 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][6][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_13[4]),
        .Q(\syst_output_produc_a_b[1][6]_49 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][6][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_13[5]),
        .Q(\syst_output_produc_a_b[1][6]_49 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][6][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_13[6]),
        .Q(\syst_output_produc_a_b[1][6]_49 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][6][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_13[7]),
        .Q(\syst_output_produc_a_b[1][6]_49 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][7][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_5[0]),
        .Q(\syst_output_produc_a_b[1][7]_48 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][7][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_5[1]),
        .Q(\syst_output_produc_a_b[1][7]_48 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][7][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_5[2]),
        .Q(\syst_output_produc_a_b[1][7]_48 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][7][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_5[3]),
        .Q(\syst_output_produc_a_b[1][7]_48 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][7][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_5[4]),
        .Q(\syst_output_produc_a_b[1][7]_48 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][7][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_5[5]),
        .Q(\syst_output_produc_a_b[1][7]_48 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][7][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_5[6]),
        .Q(\syst_output_produc_a_b[1][7]_48 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[1][7][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_5[7]),
        .Q(\syst_output_produc_a_b[1][7]_48 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][0][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_60[0]),
        .Q(\syst_output_produc_a_b[2][0]_47 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][0][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_60[1]),
        .Q(\syst_output_produc_a_b[2][0]_47 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][0][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_60[2]),
        .Q(\syst_output_produc_a_b[2][0]_47 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][0][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_60[3]),
        .Q(\syst_output_produc_a_b[2][0]_47 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][0][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_60[4]),
        .Q(\syst_output_produc_a_b[2][0]_47 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][0][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_60[5]),
        .Q(\syst_output_produc_a_b[2][0]_47 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][0][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_60[6]),
        .Q(\syst_output_produc_a_b[2][0]_47 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][0][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_60[7]),
        .Q(\syst_output_produc_a_b[2][0]_47 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][1][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_52[0]),
        .Q(\syst_output_produc_a_b[2][1]_46 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][1][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_52[1]),
        .Q(\syst_output_produc_a_b[2][1]_46 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][1][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_52[2]),
        .Q(\syst_output_produc_a_b[2][1]_46 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][1][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_52[3]),
        .Q(\syst_output_produc_a_b[2][1]_46 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][1][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_52[4]),
        .Q(\syst_output_produc_a_b[2][1]_46 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][1][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_52[5]),
        .Q(\syst_output_produc_a_b[2][1]_46 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][1][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_52[6]),
        .Q(\syst_output_produc_a_b[2][1]_46 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][1][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_52[7]),
        .Q(\syst_output_produc_a_b[2][1]_46 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][2][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_44[0]),
        .Q(\syst_output_produc_a_b[2][2]_45 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][2][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_44[1]),
        .Q(\syst_output_produc_a_b[2][2]_45 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][2][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_44[2]),
        .Q(\syst_output_produc_a_b[2][2]_45 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][2][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_44[3]),
        .Q(\syst_output_produc_a_b[2][2]_45 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][2][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_44[4]),
        .Q(\syst_output_produc_a_b[2][2]_45 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][2][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_44[5]),
        .Q(\syst_output_produc_a_b[2][2]_45 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][2][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_44[6]),
        .Q(\syst_output_produc_a_b[2][2]_45 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][2][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_44[7]),
        .Q(\syst_output_produc_a_b[2][2]_45 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][3][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_36[0]),
        .Q(\syst_output_produc_a_b[2][3]_44 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][3][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_36[1]),
        .Q(\syst_output_produc_a_b[2][3]_44 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][3][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_36[2]),
        .Q(\syst_output_produc_a_b[2][3]_44 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][3][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_36[3]),
        .Q(\syst_output_produc_a_b[2][3]_44 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][3][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_36[4]),
        .Q(\syst_output_produc_a_b[2][3]_44 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][3][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_36[5]),
        .Q(\syst_output_produc_a_b[2][3]_44 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][3][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_36[6]),
        .Q(\syst_output_produc_a_b[2][3]_44 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][3][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_36[7]),
        .Q(\syst_output_produc_a_b[2][3]_44 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][4][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_28[0]),
        .Q(\syst_output_produc_a_b[2][4]_43 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][4][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_28[1]),
        .Q(\syst_output_produc_a_b[2][4]_43 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][4][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_28[2]),
        .Q(\syst_output_produc_a_b[2][4]_43 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][4][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_28[3]),
        .Q(\syst_output_produc_a_b[2][4]_43 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][4][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_28[4]),
        .Q(\syst_output_produc_a_b[2][4]_43 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][4][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_28[5]),
        .Q(\syst_output_produc_a_b[2][4]_43 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][4][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_28[6]),
        .Q(\syst_output_produc_a_b[2][4]_43 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][4][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_28[7]),
        .Q(\syst_output_produc_a_b[2][4]_43 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][5][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_20[0]),
        .Q(\syst_output_produc_a_b[2][5]_42 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][5][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_20[1]),
        .Q(\syst_output_produc_a_b[2][5]_42 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][5][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_20[2]),
        .Q(\syst_output_produc_a_b[2][5]_42 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][5][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_20[3]),
        .Q(\syst_output_produc_a_b[2][5]_42 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][5][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_20[4]),
        .Q(\syst_output_produc_a_b[2][5]_42 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][5][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_20[5]),
        .Q(\syst_output_produc_a_b[2][5]_42 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][5][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_20[6]),
        .Q(\syst_output_produc_a_b[2][5]_42 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][5][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_20[7]),
        .Q(\syst_output_produc_a_b[2][5]_42 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][6][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_12[0]),
        .Q(\syst_output_produc_a_b[2][6]_41 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][6][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_12[1]),
        .Q(\syst_output_produc_a_b[2][6]_41 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][6][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_12[2]),
        .Q(\syst_output_produc_a_b[2][6]_41 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][6][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_12[3]),
        .Q(\syst_output_produc_a_b[2][6]_41 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][6][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_12[4]),
        .Q(\syst_output_produc_a_b[2][6]_41 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][6][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_12[5]),
        .Q(\syst_output_produc_a_b[2][6]_41 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][6][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_12[6]),
        .Q(\syst_output_produc_a_b[2][6]_41 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][6][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_12[7]),
        .Q(\syst_output_produc_a_b[2][6]_41 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][7][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_4[0]),
        .Q(\syst_output_produc_a_b[2][7]_40 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][7][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_4[1]),
        .Q(\syst_output_produc_a_b[2][7]_40 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][7][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_4[2]),
        .Q(\syst_output_produc_a_b[2][7]_40 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][7][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_4[3]),
        .Q(\syst_output_produc_a_b[2][7]_40 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][7][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_4[4]),
        .Q(\syst_output_produc_a_b[2][7]_40 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][7][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_4[5]),
        .Q(\syst_output_produc_a_b[2][7]_40 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][7][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_4[6]),
        .Q(\syst_output_produc_a_b[2][7]_40 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[2][7][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_4[7]),
        .Q(\syst_output_produc_a_b[2][7]_40 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][0][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_59[0]),
        .Q(\syst_output_produc_a_b[3][0]_39 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][0][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_59[1]),
        .Q(\syst_output_produc_a_b[3][0]_39 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][0][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_59[2]),
        .Q(\syst_output_produc_a_b[3][0]_39 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][0][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_59[3]),
        .Q(\syst_output_produc_a_b[3][0]_39 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][0][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_59[4]),
        .Q(\syst_output_produc_a_b[3][0]_39 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][0][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_59[5]),
        .Q(\syst_output_produc_a_b[3][0]_39 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][0][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_59[6]),
        .Q(\syst_output_produc_a_b[3][0]_39 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][0][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_59[7]),
        .Q(\syst_output_produc_a_b[3][0]_39 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][1][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_51[0]),
        .Q(\syst_output_produc_a_b[3][1]_38 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][1][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_51[1]),
        .Q(\syst_output_produc_a_b[3][1]_38 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][1][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_51[2]),
        .Q(\syst_output_produc_a_b[3][1]_38 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][1][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_51[3]),
        .Q(\syst_output_produc_a_b[3][1]_38 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][1][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_51[4]),
        .Q(\syst_output_produc_a_b[3][1]_38 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][1][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_51[5]),
        .Q(\syst_output_produc_a_b[3][1]_38 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][1][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_51[6]),
        .Q(\syst_output_produc_a_b[3][1]_38 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][1][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_51[7]),
        .Q(\syst_output_produc_a_b[3][1]_38 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][2][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_43[0]),
        .Q(\syst_output_produc_a_b[3][2]_37 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][2][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_43[1]),
        .Q(\syst_output_produc_a_b[3][2]_37 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][2][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_43[2]),
        .Q(\syst_output_produc_a_b[3][2]_37 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][2][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_43[3]),
        .Q(\syst_output_produc_a_b[3][2]_37 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][2][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_43[4]),
        .Q(\syst_output_produc_a_b[3][2]_37 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][2][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_43[5]),
        .Q(\syst_output_produc_a_b[3][2]_37 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][2][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_43[6]),
        .Q(\syst_output_produc_a_b[3][2]_37 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][2][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_43[7]),
        .Q(\syst_output_produc_a_b[3][2]_37 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][3][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_35[0]),
        .Q(\syst_output_produc_a_b[3][3]_36 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][3][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_35[1]),
        .Q(\syst_output_produc_a_b[3][3]_36 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][3][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_35[2]),
        .Q(\syst_output_produc_a_b[3][3]_36 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][3][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_35[3]),
        .Q(\syst_output_produc_a_b[3][3]_36 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][3][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_35[4]),
        .Q(\syst_output_produc_a_b[3][3]_36 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][3][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_35[5]),
        .Q(\syst_output_produc_a_b[3][3]_36 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][3][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_35[6]),
        .Q(\syst_output_produc_a_b[3][3]_36 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][3][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_35[7]),
        .Q(\syst_output_produc_a_b[3][3]_36 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][4][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_27[0]),
        .Q(\syst_output_produc_a_b[3][4]_35 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][4][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_27[1]),
        .Q(\syst_output_produc_a_b[3][4]_35 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][4][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_27[2]),
        .Q(\syst_output_produc_a_b[3][4]_35 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][4][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_27[3]),
        .Q(\syst_output_produc_a_b[3][4]_35 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][4][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_27[4]),
        .Q(\syst_output_produc_a_b[3][4]_35 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][4][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_27[5]),
        .Q(\syst_output_produc_a_b[3][4]_35 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][4][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_27[6]),
        .Q(\syst_output_produc_a_b[3][4]_35 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][4][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_27[7]),
        .Q(\syst_output_produc_a_b[3][4]_35 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][5][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_19[0]),
        .Q(\syst_output_produc_a_b[3][5]_34 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][5][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_19[1]),
        .Q(\syst_output_produc_a_b[3][5]_34 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][5][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_19[2]),
        .Q(\syst_output_produc_a_b[3][5]_34 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][5][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_19[3]),
        .Q(\syst_output_produc_a_b[3][5]_34 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][5][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_19[4]),
        .Q(\syst_output_produc_a_b[3][5]_34 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][5][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_19[5]),
        .Q(\syst_output_produc_a_b[3][5]_34 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][5][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_19[6]),
        .Q(\syst_output_produc_a_b[3][5]_34 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][5][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_19[7]),
        .Q(\syst_output_produc_a_b[3][5]_34 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][6][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_11[0]),
        .Q(\syst_output_produc_a_b[3][6]_33 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][6][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_11[1]),
        .Q(\syst_output_produc_a_b[3][6]_33 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][6][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_11[2]),
        .Q(\syst_output_produc_a_b[3][6]_33 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][6][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_11[3]),
        .Q(\syst_output_produc_a_b[3][6]_33 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][6][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_11[4]),
        .Q(\syst_output_produc_a_b[3][6]_33 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][6][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_11[5]),
        .Q(\syst_output_produc_a_b[3][6]_33 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][6][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_11[6]),
        .Q(\syst_output_produc_a_b[3][6]_33 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][6][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_11[7]),
        .Q(\syst_output_produc_a_b[3][6]_33 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][7][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_3[0]),
        .Q(\syst_output_produc_a_b[3][7]_32 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][7][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_3[1]),
        .Q(\syst_output_produc_a_b[3][7]_32 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][7][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_3[2]),
        .Q(\syst_output_produc_a_b[3][7]_32 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][7][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_3[3]),
        .Q(\syst_output_produc_a_b[3][7]_32 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][7][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_3[4]),
        .Q(\syst_output_produc_a_b[3][7]_32 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][7][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_3[5]),
        .Q(\syst_output_produc_a_b[3][7]_32 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][7][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_3[6]),
        .Q(\syst_output_produc_a_b[3][7]_32 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[3][7][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_3[7]),
        .Q(\syst_output_produc_a_b[3][7]_32 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][0][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_58[0]),
        .Q(\syst_output_produc_a_b[4][0]_31 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][0][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_58[1]),
        .Q(\syst_output_produc_a_b[4][0]_31 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][0][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_58[2]),
        .Q(\syst_output_produc_a_b[4][0]_31 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][0][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_58[3]),
        .Q(\syst_output_produc_a_b[4][0]_31 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][0][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_58[4]),
        .Q(\syst_output_produc_a_b[4][0]_31 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][0][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_58[5]),
        .Q(\syst_output_produc_a_b[4][0]_31 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][0][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_58[6]),
        .Q(\syst_output_produc_a_b[4][0]_31 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][0][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_58[7]),
        .Q(\syst_output_produc_a_b[4][0]_31 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][1][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_50[0]),
        .Q(\syst_output_produc_a_b[4][1]_30 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][1][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_50[1]),
        .Q(\syst_output_produc_a_b[4][1]_30 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][1][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_50[2]),
        .Q(\syst_output_produc_a_b[4][1]_30 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][1][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_50[3]),
        .Q(\syst_output_produc_a_b[4][1]_30 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][1][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_50[4]),
        .Q(\syst_output_produc_a_b[4][1]_30 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][1][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_50[5]),
        .Q(\syst_output_produc_a_b[4][1]_30 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][1][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_50[6]),
        .Q(\syst_output_produc_a_b[4][1]_30 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][1][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_50[7]),
        .Q(\syst_output_produc_a_b[4][1]_30 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][2][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_42[0]),
        .Q(\syst_output_produc_a_b[4][2]_29 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][2][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_42[1]),
        .Q(\syst_output_produc_a_b[4][2]_29 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][2][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_42[2]),
        .Q(\syst_output_produc_a_b[4][2]_29 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][2][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_42[3]),
        .Q(\syst_output_produc_a_b[4][2]_29 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][2][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_42[4]),
        .Q(\syst_output_produc_a_b[4][2]_29 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][2][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_42[5]),
        .Q(\syst_output_produc_a_b[4][2]_29 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][2][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_42[6]),
        .Q(\syst_output_produc_a_b[4][2]_29 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][2][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_42[7]),
        .Q(\syst_output_produc_a_b[4][2]_29 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][3][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_34[0]),
        .Q(\syst_output_produc_a_b[4][3]_28 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][3][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_34[1]),
        .Q(\syst_output_produc_a_b[4][3]_28 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][3][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_34[2]),
        .Q(\syst_output_produc_a_b[4][3]_28 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][3][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_34[3]),
        .Q(\syst_output_produc_a_b[4][3]_28 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][3][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_34[4]),
        .Q(\syst_output_produc_a_b[4][3]_28 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][3][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_34[5]),
        .Q(\syst_output_produc_a_b[4][3]_28 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][3][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_34[6]),
        .Q(\syst_output_produc_a_b[4][3]_28 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][3][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_34[7]),
        .Q(\syst_output_produc_a_b[4][3]_28 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][4][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_26[0]),
        .Q(\syst_output_produc_a_b[4][4]_27 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][4][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_26[1]),
        .Q(\syst_output_produc_a_b[4][4]_27 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][4][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_26[2]),
        .Q(\syst_output_produc_a_b[4][4]_27 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][4][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_26[3]),
        .Q(\syst_output_produc_a_b[4][4]_27 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][4][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_26[4]),
        .Q(\syst_output_produc_a_b[4][4]_27 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][4][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_26[5]),
        .Q(\syst_output_produc_a_b[4][4]_27 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][4][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_26[6]),
        .Q(\syst_output_produc_a_b[4][4]_27 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][4][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_26[7]),
        .Q(\syst_output_produc_a_b[4][4]_27 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][5][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_18[0]),
        .Q(\syst_output_produc_a_b[4][5]_26 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][5][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_18[1]),
        .Q(\syst_output_produc_a_b[4][5]_26 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][5][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_18[2]),
        .Q(\syst_output_produc_a_b[4][5]_26 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][5][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_18[3]),
        .Q(\syst_output_produc_a_b[4][5]_26 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][5][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_18[4]),
        .Q(\syst_output_produc_a_b[4][5]_26 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][5][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_18[5]),
        .Q(\syst_output_produc_a_b[4][5]_26 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][5][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_18[6]),
        .Q(\syst_output_produc_a_b[4][5]_26 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][5][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_18[7]),
        .Q(\syst_output_produc_a_b[4][5]_26 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][6][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_10[0]),
        .Q(\syst_output_produc_a_b[4][6]_25 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][6][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_10[1]),
        .Q(\syst_output_produc_a_b[4][6]_25 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][6][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_10[2]),
        .Q(\syst_output_produc_a_b[4][6]_25 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][6][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_10[3]),
        .Q(\syst_output_produc_a_b[4][6]_25 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][6][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_10[4]),
        .Q(\syst_output_produc_a_b[4][6]_25 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][6][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_10[5]),
        .Q(\syst_output_produc_a_b[4][6]_25 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][6][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_10[6]),
        .Q(\syst_output_produc_a_b[4][6]_25 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][6][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_10[7]),
        .Q(\syst_output_produc_a_b[4][6]_25 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][7][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_2[0]),
        .Q(\syst_output_produc_a_b[4][7]_24 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][7][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_2[1]),
        .Q(\syst_output_produc_a_b[4][7]_24 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][7][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_2[2]),
        .Q(\syst_output_produc_a_b[4][7]_24 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][7][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_2[3]),
        .Q(\syst_output_produc_a_b[4][7]_24 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][7][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_2[4]),
        .Q(\syst_output_produc_a_b[4][7]_24 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][7][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_2[5]),
        .Q(\syst_output_produc_a_b[4][7]_24 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][7][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_2[6]),
        .Q(\syst_output_produc_a_b[4][7]_24 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[4][7][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_2[7]),
        .Q(\syst_output_produc_a_b[4][7]_24 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][0][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_57[0]),
        .Q(\syst_output_produc_a_b[5][0]_23 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][0][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_57[1]),
        .Q(\syst_output_produc_a_b[5][0]_23 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][0][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_57[2]),
        .Q(\syst_output_produc_a_b[5][0]_23 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][0][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_57[3]),
        .Q(\syst_output_produc_a_b[5][0]_23 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][0][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_57[4]),
        .Q(\syst_output_produc_a_b[5][0]_23 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][0][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_57[5]),
        .Q(\syst_output_produc_a_b[5][0]_23 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][0][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_57[6]),
        .Q(\syst_output_produc_a_b[5][0]_23 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][0][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_57[7]),
        .Q(\syst_output_produc_a_b[5][0]_23 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][1][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_49[0]),
        .Q(\syst_output_produc_a_b[5][1]_22 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][1][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_49[1]),
        .Q(\syst_output_produc_a_b[5][1]_22 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][1][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_49[2]),
        .Q(\syst_output_produc_a_b[5][1]_22 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][1][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_49[3]),
        .Q(\syst_output_produc_a_b[5][1]_22 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][1][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_49[4]),
        .Q(\syst_output_produc_a_b[5][1]_22 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][1][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_49[5]),
        .Q(\syst_output_produc_a_b[5][1]_22 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][1][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_49[6]),
        .Q(\syst_output_produc_a_b[5][1]_22 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][1][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_49[7]),
        .Q(\syst_output_produc_a_b[5][1]_22 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][2][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_41[0]),
        .Q(\syst_output_produc_a_b[5][2]_21 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][2][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_41[1]),
        .Q(\syst_output_produc_a_b[5][2]_21 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][2][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_41[2]),
        .Q(\syst_output_produc_a_b[5][2]_21 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][2][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_41[3]),
        .Q(\syst_output_produc_a_b[5][2]_21 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][2][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_41[4]),
        .Q(\syst_output_produc_a_b[5][2]_21 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][2][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_41[5]),
        .Q(\syst_output_produc_a_b[5][2]_21 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][2][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_41[6]),
        .Q(\syst_output_produc_a_b[5][2]_21 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][2][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_41[7]),
        .Q(\syst_output_produc_a_b[5][2]_21 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][3][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_33[0]),
        .Q(\syst_output_produc_a_b[5][3]_20 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][3][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_33[1]),
        .Q(\syst_output_produc_a_b[5][3]_20 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][3][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_33[2]),
        .Q(\syst_output_produc_a_b[5][3]_20 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][3][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_33[3]),
        .Q(\syst_output_produc_a_b[5][3]_20 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][3][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_33[4]),
        .Q(\syst_output_produc_a_b[5][3]_20 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][3][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_33[5]),
        .Q(\syst_output_produc_a_b[5][3]_20 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][3][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_33[6]),
        .Q(\syst_output_produc_a_b[5][3]_20 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][3][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_33[7]),
        .Q(\syst_output_produc_a_b[5][3]_20 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][4][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_25[0]),
        .Q(\syst_output_produc_a_b[5][4]_19 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][4][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_25[1]),
        .Q(\syst_output_produc_a_b[5][4]_19 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][4][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_25[2]),
        .Q(\syst_output_produc_a_b[5][4]_19 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][4][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_25[3]),
        .Q(\syst_output_produc_a_b[5][4]_19 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][4][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_25[4]),
        .Q(\syst_output_produc_a_b[5][4]_19 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][4][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_25[5]),
        .Q(\syst_output_produc_a_b[5][4]_19 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][4][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_25[6]),
        .Q(\syst_output_produc_a_b[5][4]_19 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][4][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_25[7]),
        .Q(\syst_output_produc_a_b[5][4]_19 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][5][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_17[0]),
        .Q(\syst_output_produc_a_b[5][5]_18 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][5][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_17[1]),
        .Q(\syst_output_produc_a_b[5][5]_18 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][5][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_17[2]),
        .Q(\syst_output_produc_a_b[5][5]_18 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][5][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_17[3]),
        .Q(\syst_output_produc_a_b[5][5]_18 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][5][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_17[4]),
        .Q(\syst_output_produc_a_b[5][5]_18 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][5][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_17[5]),
        .Q(\syst_output_produc_a_b[5][5]_18 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][5][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_17[6]),
        .Q(\syst_output_produc_a_b[5][5]_18 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][5][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_17[7]),
        .Q(\syst_output_produc_a_b[5][5]_18 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][6][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_9[0]),
        .Q(\syst_output_produc_a_b[5][6]_17 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][6][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_9[1]),
        .Q(\syst_output_produc_a_b[5][6]_17 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][6][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_9[2]),
        .Q(\syst_output_produc_a_b[5][6]_17 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][6][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_9[3]),
        .Q(\syst_output_produc_a_b[5][6]_17 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][6][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_9[4]),
        .Q(\syst_output_produc_a_b[5][6]_17 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][6][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_9[5]),
        .Q(\syst_output_produc_a_b[5][6]_17 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][6][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_9[6]),
        .Q(\syst_output_produc_a_b[5][6]_17 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][6][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_9[7]),
        .Q(\syst_output_produc_a_b[5][6]_17 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][7][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_1[0]),
        .Q(\syst_output_produc_a_b[5][7]_16 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][7][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_1[1]),
        .Q(\syst_output_produc_a_b[5][7]_16 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][7][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_1[2]),
        .Q(\syst_output_produc_a_b[5][7]_16 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][7][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_1[3]),
        .Q(\syst_output_produc_a_b[5][7]_16 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][7][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_1[4]),
        .Q(\syst_output_produc_a_b[5][7]_16 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][7][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_1[5]),
        .Q(\syst_output_produc_a_b[5][7]_16 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][7][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_1[6]),
        .Q(\syst_output_produc_a_b[5][7]_16 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[5][7][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_1[7]),
        .Q(\syst_output_produc_a_b[5][7]_16 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][0][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_56[0]),
        .Q(\syst_output_produc_a_b[6][0]_15 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][0][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_56[1]),
        .Q(\syst_output_produc_a_b[6][0]_15 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][0][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_56[2]),
        .Q(\syst_output_produc_a_b[6][0]_15 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][0][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_56[3]),
        .Q(\syst_output_produc_a_b[6][0]_15 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][0][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_56[4]),
        .Q(\syst_output_produc_a_b[6][0]_15 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][0][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_56[5]),
        .Q(\syst_output_produc_a_b[6][0]_15 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][0][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_56[6]),
        .Q(\syst_output_produc_a_b[6][0]_15 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][0][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_56[7]),
        .Q(\syst_output_produc_a_b[6][0]_15 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][1][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_48[0]),
        .Q(\syst_output_produc_a_b[6][1]_14 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][1][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_48[1]),
        .Q(\syst_output_produc_a_b[6][1]_14 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][1][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_48[2]),
        .Q(\syst_output_produc_a_b[6][1]_14 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][1][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_48[3]),
        .Q(\syst_output_produc_a_b[6][1]_14 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][1][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_48[4]),
        .Q(\syst_output_produc_a_b[6][1]_14 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][1][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_48[5]),
        .Q(\syst_output_produc_a_b[6][1]_14 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][1][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_48[6]),
        .Q(\syst_output_produc_a_b[6][1]_14 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][1][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_48[7]),
        .Q(\syst_output_produc_a_b[6][1]_14 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][2][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_40[0]),
        .Q(\syst_output_produc_a_b[6][2]_13 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][2][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_40[1]),
        .Q(\syst_output_produc_a_b[6][2]_13 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][2][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_40[2]),
        .Q(\syst_output_produc_a_b[6][2]_13 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][2][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_40[3]),
        .Q(\syst_output_produc_a_b[6][2]_13 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][2][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_40[4]),
        .Q(\syst_output_produc_a_b[6][2]_13 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][2][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_40[5]),
        .Q(\syst_output_produc_a_b[6][2]_13 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][2][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_40[6]),
        .Q(\syst_output_produc_a_b[6][2]_13 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][2][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_40[7]),
        .Q(\syst_output_produc_a_b[6][2]_13 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][3][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_32[0]),
        .Q(\syst_output_produc_a_b[6][3]_12 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][3][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_32[1]),
        .Q(\syst_output_produc_a_b[6][3]_12 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][3][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_32[2]),
        .Q(\syst_output_produc_a_b[6][3]_12 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][3][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_32[3]),
        .Q(\syst_output_produc_a_b[6][3]_12 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][3][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_32[4]),
        .Q(\syst_output_produc_a_b[6][3]_12 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][3][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_32[5]),
        .Q(\syst_output_produc_a_b[6][3]_12 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][3][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_32[6]),
        .Q(\syst_output_produc_a_b[6][3]_12 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][3][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_32[7]),
        .Q(\syst_output_produc_a_b[6][3]_12 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][4][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_24[0]),
        .Q(\syst_output_produc_a_b[6][4]_11 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][4][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_24[1]),
        .Q(\syst_output_produc_a_b[6][4]_11 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][4][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_24[2]),
        .Q(\syst_output_produc_a_b[6][4]_11 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][4][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_24[3]),
        .Q(\syst_output_produc_a_b[6][4]_11 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][4][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_24[4]),
        .Q(\syst_output_produc_a_b[6][4]_11 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][4][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_24[5]),
        .Q(\syst_output_produc_a_b[6][4]_11 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][4][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_24[6]),
        .Q(\syst_output_produc_a_b[6][4]_11 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][4][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_24[7]),
        .Q(\syst_output_produc_a_b[6][4]_11 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][5][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_16[0]),
        .Q(\syst_output_produc_a_b[6][5]_10 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][5][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_16[1]),
        .Q(\syst_output_produc_a_b[6][5]_10 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][5][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_16[2]),
        .Q(\syst_output_produc_a_b[6][5]_10 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][5][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_16[3]),
        .Q(\syst_output_produc_a_b[6][5]_10 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][5][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_16[4]),
        .Q(\syst_output_produc_a_b[6][5]_10 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][5][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_16[5]),
        .Q(\syst_output_produc_a_b[6][5]_10 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][5][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_16[6]),
        .Q(\syst_output_produc_a_b[6][5]_10 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][5][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_16[7]),
        .Q(\syst_output_produc_a_b[6][5]_10 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][6][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_8[0]),
        .Q(\syst_output_produc_a_b[6][6]_9 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][6][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_8[1]),
        .Q(\syst_output_produc_a_b[6][6]_9 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][6][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_8[2]),
        .Q(\syst_output_produc_a_b[6][6]_9 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][6][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_8[3]),
        .Q(\syst_output_produc_a_b[6][6]_9 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][6][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_8[4]),
        .Q(\syst_output_produc_a_b[6][6]_9 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][6][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_8[5]),
        .Q(\syst_output_produc_a_b[6][6]_9 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][6][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_8[6]),
        .Q(\syst_output_produc_a_b[6][6]_9 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][6][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_8[7]),
        .Q(\syst_output_produc_a_b[6][6]_9 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][7][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_0[0]),
        .Q(\syst_output_produc_a_b[6][7]_8 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][7][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_0[1]),
        .Q(\syst_output_produc_a_b[6][7]_8 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][7][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_0[2]),
        .Q(\syst_output_produc_a_b[6][7]_8 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][7][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_0[3]),
        .Q(\syst_output_produc_a_b[6][7]_8 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][7][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_0[4]),
        .Q(\syst_output_produc_a_b[6][7]_8 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][7][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_0[5]),
        .Q(\syst_output_produc_a_b[6][7]_8 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][7][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_0[6]),
        .Q(\syst_output_produc_a_b[6][7]_8 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[6][7][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_0[7]),
        .Q(\syst_output_produc_a_b[6][7]_8 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][0][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_55[0]),
        .Q(\syst_output_produc_a_b[7][0]_7 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][0][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_55[1]),
        .Q(\syst_output_produc_a_b[7][0]_7 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][0][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_55[2]),
        .Q(\syst_output_produc_a_b[7][0]_7 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][0][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_55[3]),
        .Q(\syst_output_produc_a_b[7][0]_7 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][0][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_55[4]),
        .Q(\syst_output_produc_a_b[7][0]_7 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][0][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_55[5]),
        .Q(\syst_output_produc_a_b[7][0]_7 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][0][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_55[6]),
        .Q(\syst_output_produc_a_b[7][0]_7 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][0][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_55[7]),
        .Q(\syst_output_produc_a_b[7][0]_7 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][1][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_47[0]),
        .Q(\syst_output_produc_a_b[7][1]_6 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][1][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_47[1]),
        .Q(\syst_output_produc_a_b[7][1]_6 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][1][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_47[2]),
        .Q(\syst_output_produc_a_b[7][1]_6 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][1][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_47[3]),
        .Q(\syst_output_produc_a_b[7][1]_6 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][1][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_47[4]),
        .Q(\syst_output_produc_a_b[7][1]_6 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][1][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_47[5]),
        .Q(\syst_output_produc_a_b[7][1]_6 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][1][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_47[6]),
        .Q(\syst_output_produc_a_b[7][1]_6 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][1][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_47[7]),
        .Q(\syst_output_produc_a_b[7][1]_6 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][2][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_39[0]),
        .Q(\syst_output_produc_a_b[7][2]_5 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][2][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_39[1]),
        .Q(\syst_output_produc_a_b[7][2]_5 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][2][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_39[2]),
        .Q(\syst_output_produc_a_b[7][2]_5 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][2][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_39[3]),
        .Q(\syst_output_produc_a_b[7][2]_5 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][2][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_39[4]),
        .Q(\syst_output_produc_a_b[7][2]_5 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][2][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_39[5]),
        .Q(\syst_output_produc_a_b[7][2]_5 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][2][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_39[6]),
        .Q(\syst_output_produc_a_b[7][2]_5 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][2][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_39[7]),
        .Q(\syst_output_produc_a_b[7][2]_5 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][3][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_31[0]),
        .Q(\syst_output_produc_a_b[7][3]_4 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][3][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_31[1]),
        .Q(\syst_output_produc_a_b[7][3]_4 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][3][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_31[2]),
        .Q(\syst_output_produc_a_b[7][3]_4 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][3][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_31[3]),
        .Q(\syst_output_produc_a_b[7][3]_4 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][3][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_31[4]),
        .Q(\syst_output_produc_a_b[7][3]_4 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][3][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_31[5]),
        .Q(\syst_output_produc_a_b[7][3]_4 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][3][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_31[6]),
        .Q(\syst_output_produc_a_b[7][3]_4 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][3][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_31[7]),
        .Q(\syst_output_produc_a_b[7][3]_4 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][4][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_23[0]),
        .Q(\syst_output_produc_a_b[7][4]_3 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][4][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_23[1]),
        .Q(\syst_output_produc_a_b[7][4]_3 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][4][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_23[2]),
        .Q(\syst_output_produc_a_b[7][4]_3 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][4][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_23[3]),
        .Q(\syst_output_produc_a_b[7][4]_3 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][4][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_23[4]),
        .Q(\syst_output_produc_a_b[7][4]_3 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][4][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_23[5]),
        .Q(\syst_output_produc_a_b[7][4]_3 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][4][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_23[6]),
        .Q(\syst_output_produc_a_b[7][4]_3 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][4][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_23[7]),
        .Q(\syst_output_produc_a_b[7][4]_3 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][5][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_15[0]),
        .Q(\syst_output_produc_a_b[7][5]_2 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][5][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_15[1]),
        .Q(\syst_output_produc_a_b[7][5]_2 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][5][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_15[2]),
        .Q(\syst_output_produc_a_b[7][5]_2 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][5][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_15[3]),
        .Q(\syst_output_produc_a_b[7][5]_2 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][5][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_15[4]),
        .Q(\syst_output_produc_a_b[7][5]_2 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][5][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_15[5]),
        .Q(\syst_output_produc_a_b[7][5]_2 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][5][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_15[6]),
        .Q(\syst_output_produc_a_b[7][5]_2 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][5][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_15[7]),
        .Q(\syst_output_produc_a_b[7][5]_2 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][6][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_7[0]),
        .Q(\syst_output_produc_a_b[7][6]_1 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][6][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_7[1]),
        .Q(\syst_output_produc_a_b[7][6]_1 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][6][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_7[2]),
        .Q(\syst_output_produc_a_b[7][6]_1 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][6][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_7[3]),
        .Q(\syst_output_produc_a_b[7][6]_1 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][6][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_7[4]),
        .Q(\syst_output_produc_a_b[7][6]_1 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][6][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_7[5]),
        .Q(\syst_output_produc_a_b[7][6]_1 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][6][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_7[6]),
        .Q(\syst_output_produc_a_b[7][6]_1 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][6][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg_7[7]),
        .Q(\syst_output_produc_a_b[7][6]_1 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][7][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg[0]),
        .Q(\syst_output_produc_a_b[7][7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][7][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg[1]),
        .Q(\syst_output_produc_a_b[7][7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][7][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg[2]),
        .Q(\syst_output_produc_a_b[7][7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][7][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg[3]),
        .Q(\syst_output_produc_a_b[7][7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][7][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg[4]),
        .Q(\syst_output_produc_a_b[7][7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][7][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg[5]),
        .Q(\syst_output_produc_a_b[7][7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][7][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg[6]),
        .Q(\syst_output_produc_a_b[7][7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \output_produc_a_b_reg[7][7][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\output_produc_a_b[7][7][7]_i_1_n_0 ),
        .CLR(btn_IBUF),
        .D(accumulator_reg[7]),
        .Q(\syst_output_produc_a_b[7][7]_0 [7]));
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
       (.I0(\syst_output_produc_a_b[3][6]_33 [7]),
        .I1(\syst_output_produc_a_b[2][6]_41 [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][6]_49 [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][6]_57 [7]),
        .O(sdata_tx_out_i_111_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_112
       (.I0(\syst_output_produc_a_b[7][6]_1 [7]),
        .I1(\syst_output_produc_a_b[6][6]_9 [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][6]_17 [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][6]_25 [7]),
        .O(sdata_tx_out_i_112_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_113
       (.I0(\syst_output_produc_a_b[3][7]_32 [7]),
        .I1(\syst_output_produc_a_b[2][7]_40 [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][7]_48 [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][7]_56 [7]),
        .O(sdata_tx_out_i_113_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_114
       (.I0(\syst_output_produc_a_b[7][7]_0 [7]),
        .I1(\syst_output_produc_a_b[6][7]_8 [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][7]_16 [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][7]_24 [7]),
        .O(sdata_tx_out_i_114_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_115
       (.I0(\syst_output_produc_a_b[3][4]_35 [7]),
        .I1(\syst_output_produc_a_b[2][4]_43 [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][4]_51 [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][4]_59 [7]),
        .O(sdata_tx_out_i_115_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_116
       (.I0(\syst_output_produc_a_b[7][4]_3 [7]),
        .I1(\syst_output_produc_a_b[6][4]_11 [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][4]_19 [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][4]_27 [7]),
        .O(sdata_tx_out_i_116_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_117
       (.I0(\syst_output_produc_a_b[3][5]_34 [7]),
        .I1(\syst_output_produc_a_b[2][5]_42 [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][5]_50 [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][5]_58 [7]),
        .O(sdata_tx_out_i_117_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_118
       (.I0(\syst_output_produc_a_b[7][5]_2 [7]),
        .I1(\syst_output_produc_a_b[6][5]_10 [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][5]_18 [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][5]_26 [7]),
        .O(sdata_tx_out_i_118_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_119
       (.I0(\syst_output_produc_a_b[3][2]_37 [7]),
        .I1(\syst_output_produc_a_b[2][2]_45 [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][2]_53 [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][2]_61 [7]),
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
       (.I0(\syst_output_produc_a_b[7][2]_5 [7]),
        .I1(\syst_output_produc_a_b[6][2]_13 [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][2]_21 [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][2]_29 [7]),
        .O(sdata_tx_out_i_120_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_121
       (.I0(\syst_output_produc_a_b[3][3]_36 [7]),
        .I1(\syst_output_produc_a_b[2][3]_44 [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][3]_52 [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][3]_60 [7]),
        .O(sdata_tx_out_i_121_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_122
       (.I0(\syst_output_produc_a_b[7][3]_4 [7]),
        .I1(\syst_output_produc_a_b[6][3]_12 [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][3]_20 [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][3]_28 [7]),
        .O(sdata_tx_out_i_122_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_123
       (.I0(\syst_output_produc_a_b[3][0]_39 [7]),
        .I1(\syst_output_produc_a_b[2][0]_47 [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][0]_55 [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][0]_63 [7]),
        .O(sdata_tx_out_i_123_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_124
       (.I0(\syst_output_produc_a_b[7][0]_7 [7]),
        .I1(\syst_output_produc_a_b[6][0]_15 [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][0]_23 [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][0]_31 [7]),
        .O(sdata_tx_out_i_124_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_125
       (.I0(\syst_output_produc_a_b[3][1]_38 [7]),
        .I1(\syst_output_produc_a_b[2][1]_46 [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][1]_54 [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][1]_62 [7]),
        .O(sdata_tx_out_i_125_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_126
       (.I0(\syst_output_produc_a_b[7][1]_6 [7]),
        .I1(\syst_output_produc_a_b[6][1]_14 [7]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][1]_22 [7]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][1]_30 [7]),
        .O(sdata_tx_out_i_126_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_127
       (.I0(\syst_output_produc_a_b[3][6]_33 [6]),
        .I1(\syst_output_produc_a_b[2][6]_41 [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][6]_49 [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][6]_57 [6]),
        .O(sdata_tx_out_i_127_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_128
       (.I0(\syst_output_produc_a_b[7][6]_1 [6]),
        .I1(\syst_output_produc_a_b[6][6]_9 [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][6]_17 [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][6]_25 [6]),
        .O(sdata_tx_out_i_128_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_129
       (.I0(\syst_output_produc_a_b[3][7]_32 [6]),
        .I1(\syst_output_produc_a_b[2][7]_40 [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][7]_48 [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][7]_56 [6]),
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
       (.I0(\syst_output_produc_a_b[7][7]_0 [6]),
        .I1(\syst_output_produc_a_b[6][7]_8 [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][7]_16 [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][7]_24 [6]),
        .O(sdata_tx_out_i_130_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_131
       (.I0(\syst_output_produc_a_b[3][4]_35 [6]),
        .I1(\syst_output_produc_a_b[2][4]_43 [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][4]_51 [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][4]_59 [6]),
        .O(sdata_tx_out_i_131_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_132
       (.I0(\syst_output_produc_a_b[7][4]_3 [6]),
        .I1(\syst_output_produc_a_b[6][4]_11 [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][4]_19 [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][4]_27 [6]),
        .O(sdata_tx_out_i_132_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_133
       (.I0(\syst_output_produc_a_b[3][5]_34 [6]),
        .I1(\syst_output_produc_a_b[2][5]_42 [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][5]_50 [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][5]_58 [6]),
        .O(sdata_tx_out_i_133_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_134
       (.I0(\syst_output_produc_a_b[7][5]_2 [6]),
        .I1(\syst_output_produc_a_b[6][5]_10 [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][5]_18 [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][5]_26 [6]),
        .O(sdata_tx_out_i_134_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_135
       (.I0(\syst_output_produc_a_b[3][2]_37 [6]),
        .I1(\syst_output_produc_a_b[2][2]_45 [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][2]_53 [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][2]_61 [6]),
        .O(sdata_tx_out_i_135_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_136
       (.I0(\syst_output_produc_a_b[7][2]_5 [6]),
        .I1(\syst_output_produc_a_b[6][2]_13 [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][2]_21 [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][2]_29 [6]),
        .O(sdata_tx_out_i_136_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_137
       (.I0(\syst_output_produc_a_b[3][3]_36 [6]),
        .I1(\syst_output_produc_a_b[2][3]_44 [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][3]_52 [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][3]_60 [6]),
        .O(sdata_tx_out_i_137_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_138
       (.I0(\syst_output_produc_a_b[7][3]_4 [6]),
        .I1(\syst_output_produc_a_b[6][3]_12 [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][3]_20 [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][3]_28 [6]),
        .O(sdata_tx_out_i_138_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_139
       (.I0(\syst_output_produc_a_b[3][0]_39 [6]),
        .I1(\syst_output_produc_a_b[2][0]_47 [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][0]_55 [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][0]_63 [6]),
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
       (.I0(\syst_output_produc_a_b[7][0]_7 [6]),
        .I1(\syst_output_produc_a_b[6][0]_15 [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][0]_23 [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][0]_31 [6]),
        .O(sdata_tx_out_i_140_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_141
       (.I0(\syst_output_produc_a_b[3][1]_38 [6]),
        .I1(\syst_output_produc_a_b[2][1]_46 [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][1]_54 [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][1]_62 [6]),
        .O(sdata_tx_out_i_141_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_142
       (.I0(\syst_output_produc_a_b[7][1]_6 [6]),
        .I1(\syst_output_produc_a_b[6][1]_14 [6]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][1]_22 [6]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][1]_30 [6]),
        .O(sdata_tx_out_i_142_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_143
       (.I0(\syst_output_produc_a_b[3][6]_33 [5]),
        .I1(\syst_output_produc_a_b[2][6]_41 [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][6]_49 [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][6]_57 [5]),
        .O(sdata_tx_out_i_143_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_144
       (.I0(\syst_output_produc_a_b[7][6]_1 [5]),
        .I1(\syst_output_produc_a_b[6][6]_9 [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][6]_17 [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][6]_25 [5]),
        .O(sdata_tx_out_i_144_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_145
       (.I0(\syst_output_produc_a_b[3][7]_32 [5]),
        .I1(\syst_output_produc_a_b[2][7]_40 [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][7]_48 [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][7]_56 [5]),
        .O(sdata_tx_out_i_145_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_146
       (.I0(\syst_output_produc_a_b[7][7]_0 [5]),
        .I1(\syst_output_produc_a_b[6][7]_8 [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][7]_16 [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][7]_24 [5]),
        .O(sdata_tx_out_i_146_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_147
       (.I0(\syst_output_produc_a_b[3][4]_35 [5]),
        .I1(\syst_output_produc_a_b[2][4]_43 [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][4]_51 [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][4]_59 [5]),
        .O(sdata_tx_out_i_147_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_148
       (.I0(\syst_output_produc_a_b[7][4]_3 [5]),
        .I1(\syst_output_produc_a_b[6][4]_11 [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][4]_19 [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][4]_27 [5]),
        .O(sdata_tx_out_i_148_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_149
       (.I0(\syst_output_produc_a_b[3][5]_34 [5]),
        .I1(\syst_output_produc_a_b[2][5]_42 [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][5]_50 [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][5]_58 [5]),
        .O(sdata_tx_out_i_149_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_150
       (.I0(\syst_output_produc_a_b[7][5]_2 [5]),
        .I1(\syst_output_produc_a_b[6][5]_10 [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][5]_18 [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][5]_26 [5]),
        .O(sdata_tx_out_i_150_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_151
       (.I0(\syst_output_produc_a_b[3][2]_37 [5]),
        .I1(\syst_output_produc_a_b[2][2]_45 [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][2]_53 [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][2]_61 [5]),
        .O(sdata_tx_out_i_151_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_152
       (.I0(\syst_output_produc_a_b[7][2]_5 [5]),
        .I1(\syst_output_produc_a_b[6][2]_13 [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][2]_21 [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][2]_29 [5]),
        .O(sdata_tx_out_i_152_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_153
       (.I0(\syst_output_produc_a_b[3][3]_36 [5]),
        .I1(\syst_output_produc_a_b[2][3]_44 [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][3]_52 [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][3]_60 [5]),
        .O(sdata_tx_out_i_153_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_154
       (.I0(\syst_output_produc_a_b[7][3]_4 [5]),
        .I1(\syst_output_produc_a_b[6][3]_12 [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][3]_20 [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][3]_28 [5]),
        .O(sdata_tx_out_i_154_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_155
       (.I0(\syst_output_produc_a_b[3][0]_39 [5]),
        .I1(\syst_output_produc_a_b[2][0]_47 [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][0]_55 [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][0]_63 [5]),
        .O(sdata_tx_out_i_155_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_156
       (.I0(\syst_output_produc_a_b[7][0]_7 [5]),
        .I1(\syst_output_produc_a_b[6][0]_15 [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][0]_23 [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][0]_31 [5]),
        .O(sdata_tx_out_i_156_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_157
       (.I0(\syst_output_produc_a_b[3][1]_38 [5]),
        .I1(\syst_output_produc_a_b[2][1]_46 [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][1]_54 [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][1]_62 [5]),
        .O(sdata_tx_out_i_157_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_158
       (.I0(\syst_output_produc_a_b[7][1]_6 [5]),
        .I1(\syst_output_produc_a_b[6][1]_14 [5]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][1]_22 [5]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][1]_30 [5]),
        .O(sdata_tx_out_i_158_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_159
       (.I0(\syst_output_produc_a_b[3][6]_33 [4]),
        .I1(\syst_output_produc_a_b[2][6]_41 [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][6]_49 [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][6]_57 [4]),
        .O(sdata_tx_out_i_159_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_160
       (.I0(\syst_output_produc_a_b[7][6]_1 [4]),
        .I1(\syst_output_produc_a_b[6][6]_9 [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][6]_17 [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][6]_25 [4]),
        .O(sdata_tx_out_i_160_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_161
       (.I0(\syst_output_produc_a_b[3][7]_32 [4]),
        .I1(\syst_output_produc_a_b[2][7]_40 [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][7]_48 [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][7]_56 [4]),
        .O(sdata_tx_out_i_161_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_162
       (.I0(\syst_output_produc_a_b[7][7]_0 [4]),
        .I1(\syst_output_produc_a_b[6][7]_8 [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][7]_16 [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][7]_24 [4]),
        .O(sdata_tx_out_i_162_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_163
       (.I0(\syst_output_produc_a_b[3][4]_35 [4]),
        .I1(\syst_output_produc_a_b[2][4]_43 [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][4]_51 [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][4]_59 [4]),
        .O(sdata_tx_out_i_163_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_164
       (.I0(\syst_output_produc_a_b[7][4]_3 [4]),
        .I1(\syst_output_produc_a_b[6][4]_11 [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][4]_19 [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][4]_27 [4]),
        .O(sdata_tx_out_i_164_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_165
       (.I0(\syst_output_produc_a_b[3][5]_34 [4]),
        .I1(\syst_output_produc_a_b[2][5]_42 [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][5]_50 [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][5]_58 [4]),
        .O(sdata_tx_out_i_165_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_166
       (.I0(\syst_output_produc_a_b[7][5]_2 [4]),
        .I1(\syst_output_produc_a_b[6][5]_10 [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][5]_18 [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][5]_26 [4]),
        .O(sdata_tx_out_i_166_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_167
       (.I0(\syst_output_produc_a_b[3][2]_37 [4]),
        .I1(\syst_output_produc_a_b[2][2]_45 [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][2]_53 [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][2]_61 [4]),
        .O(sdata_tx_out_i_167_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_168
       (.I0(\syst_output_produc_a_b[7][2]_5 [4]),
        .I1(\syst_output_produc_a_b[6][2]_13 [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][2]_21 [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][2]_29 [4]),
        .O(sdata_tx_out_i_168_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_169
       (.I0(\syst_output_produc_a_b[3][3]_36 [4]),
        .I1(\syst_output_produc_a_b[2][3]_44 [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][3]_52 [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][3]_60 [4]),
        .O(sdata_tx_out_i_169_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_170
       (.I0(\syst_output_produc_a_b[7][3]_4 [4]),
        .I1(\syst_output_produc_a_b[6][3]_12 [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][3]_20 [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][3]_28 [4]),
        .O(sdata_tx_out_i_170_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_171
       (.I0(\syst_output_produc_a_b[3][0]_39 [4]),
        .I1(\syst_output_produc_a_b[2][0]_47 [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][0]_55 [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][0]_63 [4]),
        .O(sdata_tx_out_i_171_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_172
       (.I0(\syst_output_produc_a_b[7][0]_7 [4]),
        .I1(\syst_output_produc_a_b[6][0]_15 [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][0]_23 [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][0]_31 [4]),
        .O(sdata_tx_out_i_172_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_173
       (.I0(\syst_output_produc_a_b[3][1]_38 [4]),
        .I1(\syst_output_produc_a_b[2][1]_46 [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][1]_54 [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][1]_62 [4]),
        .O(sdata_tx_out_i_173_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_174
       (.I0(\syst_output_produc_a_b[7][1]_6 [4]),
        .I1(\syst_output_produc_a_b[6][1]_14 [4]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][1]_22 [4]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][1]_30 [4]),
        .O(sdata_tx_out_i_174_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_175
       (.I0(\syst_output_produc_a_b[3][6]_33 [3]),
        .I1(\syst_output_produc_a_b[2][6]_41 [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][6]_49 [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][6]_57 [3]),
        .O(sdata_tx_out_i_175_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_176
       (.I0(\syst_output_produc_a_b[7][6]_1 [3]),
        .I1(\syst_output_produc_a_b[6][6]_9 [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][6]_17 [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][6]_25 [3]),
        .O(sdata_tx_out_i_176_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_177
       (.I0(\syst_output_produc_a_b[3][7]_32 [3]),
        .I1(\syst_output_produc_a_b[2][7]_40 [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][7]_48 [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][7]_56 [3]),
        .O(sdata_tx_out_i_177_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_178
       (.I0(\syst_output_produc_a_b[7][7]_0 [3]),
        .I1(\syst_output_produc_a_b[6][7]_8 [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][7]_16 [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][7]_24 [3]),
        .O(sdata_tx_out_i_178_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_179
       (.I0(\syst_output_produc_a_b[3][4]_35 [3]),
        .I1(\syst_output_produc_a_b[2][4]_43 [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][4]_51 [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][4]_59 [3]),
        .O(sdata_tx_out_i_179_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_180
       (.I0(\syst_output_produc_a_b[7][4]_3 [3]),
        .I1(\syst_output_produc_a_b[6][4]_11 [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][4]_19 [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][4]_27 [3]),
        .O(sdata_tx_out_i_180_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_181
       (.I0(\syst_output_produc_a_b[3][5]_34 [3]),
        .I1(\syst_output_produc_a_b[2][5]_42 [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][5]_50 [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][5]_58 [3]),
        .O(sdata_tx_out_i_181_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_182
       (.I0(\syst_output_produc_a_b[7][5]_2 [3]),
        .I1(\syst_output_produc_a_b[6][5]_10 [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][5]_18 [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][5]_26 [3]),
        .O(sdata_tx_out_i_182_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_183
       (.I0(\syst_output_produc_a_b[3][2]_37 [3]),
        .I1(\syst_output_produc_a_b[2][2]_45 [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][2]_53 [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][2]_61 [3]),
        .O(sdata_tx_out_i_183_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_184
       (.I0(\syst_output_produc_a_b[7][2]_5 [3]),
        .I1(\syst_output_produc_a_b[6][2]_13 [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][2]_21 [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][2]_29 [3]),
        .O(sdata_tx_out_i_184_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_185
       (.I0(\syst_output_produc_a_b[3][3]_36 [3]),
        .I1(\syst_output_produc_a_b[2][3]_44 [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][3]_52 [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][3]_60 [3]),
        .O(sdata_tx_out_i_185_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_186
       (.I0(\syst_output_produc_a_b[7][3]_4 [3]),
        .I1(\syst_output_produc_a_b[6][3]_12 [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][3]_20 [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][3]_28 [3]),
        .O(sdata_tx_out_i_186_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_187
       (.I0(\syst_output_produc_a_b[3][0]_39 [3]),
        .I1(\syst_output_produc_a_b[2][0]_47 [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][0]_55 [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][0]_63 [3]),
        .O(sdata_tx_out_i_187_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_188
       (.I0(\syst_output_produc_a_b[7][0]_7 [3]),
        .I1(\syst_output_produc_a_b[6][0]_15 [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][0]_23 [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][0]_31 [3]),
        .O(sdata_tx_out_i_188_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_189
       (.I0(\syst_output_produc_a_b[3][1]_38 [3]),
        .I1(\syst_output_produc_a_b[2][1]_46 [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][1]_54 [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][1]_62 [3]),
        .O(sdata_tx_out_i_189_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_190
       (.I0(\syst_output_produc_a_b[7][1]_6 [3]),
        .I1(\syst_output_produc_a_b[6][1]_14 [3]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][1]_22 [3]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][1]_30 [3]),
        .O(sdata_tx_out_i_190_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_191
       (.I0(\syst_output_produc_a_b[3][6]_33 [2]),
        .I1(\syst_output_produc_a_b[2][6]_41 [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][6]_49 [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][6]_57 [2]),
        .O(sdata_tx_out_i_191_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_192
       (.I0(\syst_output_produc_a_b[7][6]_1 [2]),
        .I1(\syst_output_produc_a_b[6][6]_9 [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][6]_17 [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][6]_25 [2]),
        .O(sdata_tx_out_i_192_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_193
       (.I0(\syst_output_produc_a_b[3][7]_32 [2]),
        .I1(\syst_output_produc_a_b[2][7]_40 [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][7]_48 [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][7]_56 [2]),
        .O(sdata_tx_out_i_193_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_194
       (.I0(\syst_output_produc_a_b[7][7]_0 [2]),
        .I1(\syst_output_produc_a_b[6][7]_8 [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][7]_16 [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][7]_24 [2]),
        .O(sdata_tx_out_i_194_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_195
       (.I0(\syst_output_produc_a_b[3][4]_35 [2]),
        .I1(\syst_output_produc_a_b[2][4]_43 [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][4]_51 [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][4]_59 [2]),
        .O(sdata_tx_out_i_195_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_196
       (.I0(\syst_output_produc_a_b[7][4]_3 [2]),
        .I1(\syst_output_produc_a_b[6][4]_11 [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][4]_19 [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][4]_27 [2]),
        .O(sdata_tx_out_i_196_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_197
       (.I0(\syst_output_produc_a_b[3][5]_34 [2]),
        .I1(\syst_output_produc_a_b[2][5]_42 [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][5]_50 [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][5]_58 [2]),
        .O(sdata_tx_out_i_197_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_198
       (.I0(\syst_output_produc_a_b[7][5]_2 [2]),
        .I1(\syst_output_produc_a_b[6][5]_10 [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][5]_18 [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][5]_26 [2]),
        .O(sdata_tx_out_i_198_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_199
       (.I0(\syst_output_produc_a_b[3][2]_37 [2]),
        .I1(\syst_output_produc_a_b[2][2]_45 [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][2]_53 [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][2]_61 [2]),
        .O(sdata_tx_out_i_199_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_200
       (.I0(\syst_output_produc_a_b[7][2]_5 [2]),
        .I1(\syst_output_produc_a_b[6][2]_13 [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][2]_21 [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][2]_29 [2]),
        .O(sdata_tx_out_i_200_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_201
       (.I0(\syst_output_produc_a_b[3][3]_36 [2]),
        .I1(\syst_output_produc_a_b[2][3]_44 [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][3]_52 [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][3]_60 [2]),
        .O(sdata_tx_out_i_201_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_202
       (.I0(\syst_output_produc_a_b[7][3]_4 [2]),
        .I1(\syst_output_produc_a_b[6][3]_12 [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][3]_20 [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][3]_28 [2]),
        .O(sdata_tx_out_i_202_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_203
       (.I0(\syst_output_produc_a_b[3][0]_39 [2]),
        .I1(\syst_output_produc_a_b[2][0]_47 [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][0]_55 [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][0]_63 [2]),
        .O(sdata_tx_out_i_203_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_204
       (.I0(\syst_output_produc_a_b[7][0]_7 [2]),
        .I1(\syst_output_produc_a_b[6][0]_15 [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][0]_23 [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][0]_31 [2]),
        .O(sdata_tx_out_i_204_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_205
       (.I0(\syst_output_produc_a_b[3][1]_38 [2]),
        .I1(\syst_output_produc_a_b[2][1]_46 [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][1]_54 [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][1]_62 [2]),
        .O(sdata_tx_out_i_205_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_206
       (.I0(\syst_output_produc_a_b[7][1]_6 [2]),
        .I1(\syst_output_produc_a_b[6][1]_14 [2]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][1]_22 [2]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][1]_30 [2]),
        .O(sdata_tx_out_i_206_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_207
       (.I0(\syst_output_produc_a_b[3][6]_33 [1]),
        .I1(\syst_output_produc_a_b[2][6]_41 [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][6]_49 [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][6]_57 [1]),
        .O(sdata_tx_out_i_207_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_208
       (.I0(\syst_output_produc_a_b[7][6]_1 [1]),
        .I1(\syst_output_produc_a_b[6][6]_9 [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][6]_17 [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][6]_25 [1]),
        .O(sdata_tx_out_i_208_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_209
       (.I0(\syst_output_produc_a_b[3][7]_32 [1]),
        .I1(\syst_output_produc_a_b[2][7]_40 [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][7]_48 [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][7]_56 [1]),
        .O(sdata_tx_out_i_209_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_210
       (.I0(\syst_output_produc_a_b[7][7]_0 [1]),
        .I1(\syst_output_produc_a_b[6][7]_8 [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][7]_16 [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][7]_24 [1]),
        .O(sdata_tx_out_i_210_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_211
       (.I0(\syst_output_produc_a_b[3][4]_35 [1]),
        .I1(\syst_output_produc_a_b[2][4]_43 [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][4]_51 [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][4]_59 [1]),
        .O(sdata_tx_out_i_211_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_212
       (.I0(\syst_output_produc_a_b[7][4]_3 [1]),
        .I1(\syst_output_produc_a_b[6][4]_11 [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][4]_19 [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][4]_27 [1]),
        .O(sdata_tx_out_i_212_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_213
       (.I0(\syst_output_produc_a_b[3][5]_34 [1]),
        .I1(\syst_output_produc_a_b[2][5]_42 [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][5]_50 [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][5]_58 [1]),
        .O(sdata_tx_out_i_213_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_214
       (.I0(\syst_output_produc_a_b[7][5]_2 [1]),
        .I1(\syst_output_produc_a_b[6][5]_10 [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][5]_18 [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][5]_26 [1]),
        .O(sdata_tx_out_i_214_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_215
       (.I0(\syst_output_produc_a_b[3][2]_37 [1]),
        .I1(\syst_output_produc_a_b[2][2]_45 [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][2]_53 [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][2]_61 [1]),
        .O(sdata_tx_out_i_215_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_216
       (.I0(\syst_output_produc_a_b[7][2]_5 [1]),
        .I1(\syst_output_produc_a_b[6][2]_13 [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][2]_21 [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][2]_29 [1]),
        .O(sdata_tx_out_i_216_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_217
       (.I0(\syst_output_produc_a_b[3][3]_36 [1]),
        .I1(\syst_output_produc_a_b[2][3]_44 [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][3]_52 [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][3]_60 [1]),
        .O(sdata_tx_out_i_217_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_218
       (.I0(\syst_output_produc_a_b[7][3]_4 [1]),
        .I1(\syst_output_produc_a_b[6][3]_12 [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][3]_20 [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][3]_28 [1]),
        .O(sdata_tx_out_i_218_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_219
       (.I0(\syst_output_produc_a_b[3][0]_39 [1]),
        .I1(\syst_output_produc_a_b[2][0]_47 [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][0]_55 [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][0]_63 [1]),
        .O(sdata_tx_out_i_219_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_220
       (.I0(\syst_output_produc_a_b[7][0]_7 [1]),
        .I1(\syst_output_produc_a_b[6][0]_15 [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][0]_23 [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][0]_31 [1]),
        .O(sdata_tx_out_i_220_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_221
       (.I0(\syst_output_produc_a_b[3][1]_38 [1]),
        .I1(\syst_output_produc_a_b[2][1]_46 [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][1]_54 [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][1]_62 [1]),
        .O(sdata_tx_out_i_221_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_222
       (.I0(\syst_output_produc_a_b[7][1]_6 [1]),
        .I1(\syst_output_produc_a_b[6][1]_14 [1]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][1]_22 [1]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][1]_30 [1]),
        .O(sdata_tx_out_i_222_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_223
       (.I0(\syst_output_produc_a_b[3][6]_33 [0]),
        .I1(\syst_output_produc_a_b[2][6]_41 [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][6]_49 [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][6]_57 [0]),
        .O(sdata_tx_out_i_223_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_224
       (.I0(\syst_output_produc_a_b[7][6]_1 [0]),
        .I1(\syst_output_produc_a_b[6][6]_9 [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][6]_17 [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][6]_25 [0]),
        .O(sdata_tx_out_i_224_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_225
       (.I0(\syst_output_produc_a_b[3][7]_32 [0]),
        .I1(\syst_output_produc_a_b[2][7]_40 [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][7]_48 [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][7]_56 [0]),
        .O(sdata_tx_out_i_225_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_226
       (.I0(\syst_output_produc_a_b[7][7]_0 [0]),
        .I1(\syst_output_produc_a_b[6][7]_8 [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][7]_16 [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][7]_24 [0]),
        .O(sdata_tx_out_i_226_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_227
       (.I0(\syst_output_produc_a_b[3][4]_35 [0]),
        .I1(\syst_output_produc_a_b[2][4]_43 [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][4]_51 [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][4]_59 [0]),
        .O(sdata_tx_out_i_227_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_228
       (.I0(\syst_output_produc_a_b[7][4]_3 [0]),
        .I1(\syst_output_produc_a_b[6][4]_11 [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][4]_19 [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][4]_27 [0]),
        .O(sdata_tx_out_i_228_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_229
       (.I0(\syst_output_produc_a_b[3][5]_34 [0]),
        .I1(\syst_output_produc_a_b[2][5]_42 [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][5]_50 [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][5]_58 [0]),
        .O(sdata_tx_out_i_229_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_230
       (.I0(\syst_output_produc_a_b[7][5]_2 [0]),
        .I1(\syst_output_produc_a_b[6][5]_10 [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][5]_18 [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][5]_26 [0]),
        .O(sdata_tx_out_i_230_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_231
       (.I0(\syst_output_produc_a_b[3][2]_37 [0]),
        .I1(\syst_output_produc_a_b[2][2]_45 [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][2]_53 [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][2]_61 [0]),
        .O(sdata_tx_out_i_231_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_232
       (.I0(\syst_output_produc_a_b[7][2]_5 [0]),
        .I1(\syst_output_produc_a_b[6][2]_13 [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][2]_21 [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][2]_29 [0]),
        .O(sdata_tx_out_i_232_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_233
       (.I0(\syst_output_produc_a_b[3][3]_36 [0]),
        .I1(\syst_output_produc_a_b[2][3]_44 [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][3]_52 [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][3]_60 [0]),
        .O(sdata_tx_out_i_233_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_234
       (.I0(\syst_output_produc_a_b[7][3]_4 [0]),
        .I1(\syst_output_produc_a_b[6][3]_12 [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][3]_20 [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][3]_28 [0]),
        .O(sdata_tx_out_i_234_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_235
       (.I0(\syst_output_produc_a_b[3][0]_39 [0]),
        .I1(\syst_output_produc_a_b[2][0]_47 [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][0]_55 [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][0]_63 [0]),
        .O(sdata_tx_out_i_235_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_236
       (.I0(\syst_output_produc_a_b[7][0]_7 [0]),
        .I1(\syst_output_produc_a_b[6][0]_15 [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][0]_23 [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][0]_31 [0]),
        .O(sdata_tx_out_i_236_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_237
       (.I0(\syst_output_produc_a_b[3][1]_38 [0]),
        .I1(\syst_output_produc_a_b[2][1]_46 [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[1][1]_54 [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[0][1]_62 [0]),
        .O(sdata_tx_out_i_237_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sdata_tx_out_i_238
       (.I0(\syst_output_produc_a_b[7][1]_6 [0]),
        .I1(\syst_output_produc_a_b[6][1]_14 [0]),
        .I2(sdata_tx_out_reg_i_18_0[1]),
        .I3(\syst_output_produc_a_b[5][1]_22 [0]),
        .I4(sdata_tx_out_reg_i_18_0[0]),
        .I5(\syst_output_produc_a_b[4][1]_30 [0]),
        .O(sdata_tx_out_i_238_n_0));
  LUT6 #(
    .INIT(64'hB8BB0000B8880000)) 
    sdata_tx_out_i_3
       (.I0(uart_data_tx_in[7]),
        .I1(sdata_tx_out_reg[1]),
        .I2(uart_data_tx_in[6]),
        .I3(sdata_tx_out_reg[0]),
        .I4(systolicControlUnit_uart_valid_tx_in),
        .I5(uart_data_tx_in[5]),
        .O(\px_bit_reg[1] ));
  LUT4 #(
    .INIT(16'hB080)) 
    sdata_tx_out_i_4
       (.I0(uart_data_tx_in[4]),
        .I1(sdata_tx_out_reg[0]),
        .I2(systolicControlUnit_uart_valid_tx_in),
        .I3(uart_data_tx_in[3]),
        .O(\px_bit_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    sdata_tx_out_i_5
       (.I0(uart_data_tx_in[2]),
        .I1(sdata_tx_out_reg[0]),
        .I2(systolicControlUnit_uart_valid_tx_in),
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
   (uart_ready_rx_out,
    uart_data_rx_out,
    clock_IBUF_BUFG,
    btn_IBUF,
    uart_txd_in_IBUF);
  output uart_ready_rx_out;
  output uart_data_rx_out;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input uart_txd_in_IBUF;

  wire \FSM_sequential_current_fsm[0]_i_2_n_0 ;
  wire bit_start;
  wire bit_start0;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire clock_out;
  wire [1:0]current_fsm;
  wire \data_rx_out[0]_i_1_n_0 ;
  wire ena;
  wire ena_next;
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
  wire uart_data_rx_out;
  wire uart_ready_rx_out;
  wire uart_txd_in_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair34" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
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
  LUT3 #(
    .INIT(8'hB8)) 
    \data_rx_out[0]_i_1 
       (.I0(pdata_rx_out[0]),
        .I1(uart_ready_rx_out),
        .I2(uart_data_rx_out),
        .O(\data_rx_out[0]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_rx_out_reg[0] 
       (.C(clock_out),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\data_rx_out[0]_i_1_n_0 ),
        .Q(uart_data_rx_out));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \px_bit[1]_i_1__0 
       (.I0(current_fsm[1]),
        .I1(px_bit[1]),
        .I2(px_bit[0]),
        .O(\px_bit[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \px_bit[2]_i_1__0 
       (.I0(current_fsm[1]),
        .I1(px_bit[2]),
        .I2(px_bit[1]),
        .I3(px_bit[0]),
        .O(\px_bit[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
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
    uart_ready_rx_out,
    uart_data_rx_out,
    Q,
    clock_IBUF_BUFG,
    btn_IBUF,
    uart_txd_in_IBUF,
    systolicControlUnit_uart_valid_tx_in,
    sdata_tx_out_reg,
    sdata_tx_out_reg_0,
    sdata_tx_out_reg_1,
    sdata_tx_out_i_2);
  output uart_rxd_out_OBUF;
  output uart_ready_rx_out;
  output uart_data_rx_out;
  output [1:0]Q;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input uart_txd_in_IBUF;
  input systolicControlUnit_uart_valid_tx_in;
  input sdata_tx_out_reg;
  input sdata_tx_out_reg_0;
  input sdata_tx_out_reg_1;
  input [0:0]sdata_tx_out_i_2;

  wire [1:0]Q;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire [0:0]sdata_tx_out_i_2;
  wire sdata_tx_out_reg;
  wire sdata_tx_out_reg_0;
  wire sdata_tx_out_reg_1;
  wire systolicControlUnit_uart_valid_tx_in;
  wire uart_data_rx_out;
  wire uart_ready_rx_out;
  wire uart_rxd_out_OBUF;
  wire uart_txd_in_IBUF;

  uart_rx uart_receiver
       (.btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .uart_data_rx_out(uart_data_rx_out),
        .uart_ready_rx_out(uart_ready_rx_out),
        .uart_txd_in_IBUF(uart_txd_in_IBUF));
  uart_tx uart_transmitter
       (.Q(Q),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .sdata_tx_out_i_2_0(sdata_tx_out_i_2),
        .sdata_tx_out_reg_0(sdata_tx_out_reg),
        .sdata_tx_out_reg_1(sdata_tx_out_reg_0),
        .sdata_tx_out_reg_2(sdata_tx_out_reg_1),
        .systolicControlUnit_uart_valid_tx_in(systolicControlUnit_uart_valid_tx_in),
        .uart_rxd_out_OBUF(uart_rxd_out_OBUF));
endmodule

module uart_tx
   (uart_rxd_out_OBUF,
    Q,
    clock_IBUF_BUFG,
    btn_IBUF,
    systolicControlUnit_uart_valid_tx_in,
    sdata_tx_out_reg_0,
    sdata_tx_out_reg_1,
    sdata_tx_out_reg_2,
    sdata_tx_out_i_2_0);
  output uart_rxd_out_OBUF;
  output [1:0]Q;
  input clock_IBUF_BUFG;
  input [0:0]btn_IBUF;
  input systolicControlUnit_uart_valid_tx_in;
  input sdata_tx_out_reg_0;
  input sdata_tx_out_reg_1;
  input sdata_tx_out_reg_2;
  input [0:0]sdata_tx_out_i_2_0;

  wire [1:0]Q;
  wire [0:0]btn_IBUF;
  wire clock_IBUF_BUFG;
  wire clock_out;
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
  wire systolicControlUnit_uart_valid_tx_in;
  wire uart_rxd_out_OBUF;

  baudRateGenerator__parameterized0 boudrategenerator_inst
       (.CLK(clock_out),
        .btn_IBUF(btn_IBUF),
        .clock_IBUF_BUFG(clock_IBUF_BUFG));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \px_bit[0]_i_1__0 
       (.I0(Q[0]),
        .I1(\px_bit[7]_i_3_n_0 ),
        .O(\px_bit[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \px_bit[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\px_bit[7]_i_3_n_0 ),
        .O(\px_bit[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \px_bit[2]_i_1 
       (.I0(px_bit_reg[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\px_bit[7]_i_3_n_0 ),
        .O(\px_bit[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \px_bit[6]_i_1 
       (.I0(px_bit_reg[6]),
        .I1(\px_bit[7]_i_2_n_0 ),
        .I2(\px_bit[7]_i_3_n_0 ),
        .O(\px_bit[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
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
       (.I0(systolicControlUnit_uart_valid_tx_in),
        .I1(\px_bit[7]_i_4_n_0 ),
        .I2(Q[1]),
        .I3(px_bit_reg[3]),
        .I4(px_bit_reg[4]),
        .I5(px_bit_reg[6]),
        .O(\px_bit[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h8F00)) 
    sdata_tx_out_i_6
       (.I0(Q[0]),
        .I1(sdata_tx_out_i_2_0),
        .I2(Q[1]),
        .I3(systolicControlUnit_uart_valid_tx_in),
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
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gydSV72FvW4hnoyUt6yZFJHfJqjRQWPUfYIuDKP0fpjrPOkLRbJGBr4Z9msYTvoIHRlYtXJ2YMY0
d1TIQb+FK4gKsTRru9wr397OxuFBsTRf4e+ZjpYZEdsnqYWcgMSzhN4yhPvO06GyZO15y/LKBxa8
3OKwxVlOLYXhv+sxdXg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WHB6Zbfa5Qi47krP9T4L8UnPOlr881dWx7UcYaZfNGIQQM0gadcoXbhucIpRaUuyOKxv6yhKveRN
h0l+N9+KX6rbZ6+TRhP9JAMuPhlpI7T42QtRv5zx9+m3ct5S0NMszbFaK8zeTAYra5BGP7BHmtkr
MpKfLK5sFyaTE/A7ACtAace9MwFTHDZdl9uUs4aY6KJlm6GaypKduiqkNugukJp5vlFPX/ZapJqG
KMtMhI6grhcuYb1FJrwRZ4jW7hs9HxddSdGLzsZ0HsBcO/qaCPTst+ZA0YIQfd5ULlFmPqq39FfO
p1P+2hEH2n+LycbMj5cn4Dxfqv2R8eucM78R3w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SmAzQA1VEuJXtJi5vXa2Jg7YvRqAJs6PX9HTZ1YqrJw4VfonBW3726gJ81BjlizpMkcf/Uk5sFIK
aPedVhEs4xCIZylz7gXYDshtytOA/pXUID2qV9nXr8qfI+FydSADUF3ScYDZmlkclFqlZrGq6DQ7
da3lJAzt2h/iR+cczrA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iAph5JWb/chMQpLPX1UoLjQDxN5l2I8McM/k2xN5wRht7HXoE6F5yV8luDjn3zkI6vnfUYo7BaI1
mogRRx+R3XcwxvhHr+lngh4+/YLVex1TFncl+kiUMAsu3M/FjFSiqGMVMdKTNLDqr35DuZJVyuiF
lTwXob/KkbQDJiJjBEoxbt+968rKRKRyJGcqIjm4mqRBdqMcgo3HOJFG74SFsWAQrxvXfBhdLSG3
OfoLfls9XDojBjp7G83k0h82g1eeWgBfydm/OcX9o48Pst93NvI4ua8WShZL8MCvRWYqWZrrjrWi
cfUjXAF5SDACjq1/OU6arz/Idz6/a7AP/jmexw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BY49GZBxBT/gjZDPyaSWlti/sctckoR7jK6NuWdhnF9tiyNfVU7BqjjwxSnyMi0Uucv1BKHXC18h
8hQbFWnNtrq71ilURotXux7sssHlVJ2i1CsJWU18DOcBWxm2ai89uwvxDJh3TJkBJixB5KPvsDhL
lWOjTvZWPoR+Ixy+Tzo+U5Vx7z7SOakRwTrn3u7+c3vmCEBphE+HKeJExhBAoOEd0SXK5iwXaByW
D7Wb7zq6NNUmnCyaJ2BG9kGxLVsf+md7SlocuaFsYyaRZhwPyTucxIlz1tLYwcytKzx0ovoax3no
nYgzlzP/F0/PDWk9BqXgr/tuclc4EZYX0cf4ng==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qGnCvL35qO7cbUEKCL50yDv1UvezcqBz601zctKop1954QlcjemzZWZHg1zJ00nJaToNdH2S8AKX
n8hNJvbQ+x5HEGL5DoSU9m5qjXd8xxocnZ0yzuZX/dGCT8kDn3gWJR2Gz13pT+w2LQUno1fX+MsC
ehgwvjBBT6GeYjdxHi+aybQUP9AblSxX/z3vh857SGCPohEWvghOgORCHAe45YD+ZWnL62FLxMM2
c+Ozq/Au/Q4q1Yzlzcfv8Mnsvg7OqOeEamQHbuYOfdkJUuYqOwsskEWW348u7FXtsf8m7P3pZyyz
IWyTDAW4igGguMPLHfbtK/twZx8ScJQmOKzglg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hz+6K8+wh5/fukU4ZWNDXGsq6hreSVCSPP67nA6kUz9Vpjy4TtTnOrrl1BWY0ivEC7Ldyw8VI60A
VO/WPlt409LdAZdMZGsEZ1JuTZ0m9LPcgu9CPCyoMECctmd8LHE+otY6etTmYABB9syY61rk2hrv
RgbcyT/HCK9TzWxSm+XMqvx2nvagCLkMDPh/JZv51fj2zcKaBPnxsz8rnDipaeo0fEyVRC3Y1F/V
U3RmXojBjIumPHSJkQ537dENJEIA0Ra65u8EM/+ItUn1bcryLcIbKy1xGadrHmHdHRUoRcAodO2C
B48bNVeL0VnGg8P9ACIB04lMNzn5p6A1tPOb4Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
YDpb+UeT0rJ543Q8wCo2xSS3gpVAT+JoStgBlV5IMjJoUOWkiOPn691FGChmDi3BTq5NxC73KHHR
1galACCjeTGq6cv+0Zc2Ocm1oobdrnSPHp7TMDr5Zle8FX6WywJCiGdoWBODggZSlbOASIK/PVfY
cZM2z60M6RSvzsi3TnYHiKYHpju8THVoSgRd6r31GcbiSy9TjjARERXan0OVc79jGuAg90mmDEEq
91eqmn6NZ9yLI2fgBjFUZbtFCpmJ8WGxOL1h39niWnRK3ZXnk8jcpnZUlxLbYTPO0Z3vVr1zrvcn
RVQloU0OLqg7M95zSs7NtX5Vzvb6jGbMehWV+WMMyxWmxL2XOwsAwPSeX2dI2r77pioY7X6VzH7f
/JxMAnq9udra3WGPsUkD1G0CvPkCC3zdxjpVaflY37ztX9UONhKtzMQa8lJc1IL8GhXRY3R9Lg2c
HIeXSGkpNNuFDqKT6Khe/6Casq+SjFJq+IH9IUtz6RUZTkbFb0Xhgm2P

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q+63zFEYw/LeMgxa7g8g79GGvSyIKDKD8RvvC4DHDQuGObf6n9OGZX4e17v/E/+EDEwUhsWQHFDI
Lp/aH+6fNRmhu9BEWVjxq2WRrQSl4eQjfIaSOXu2dlYh3JjRJwiUp4LteVh8RFAf5t5sRQO4dRIK
x+h28yliSgibaWEAv5FaJQ1EFbNwmgedAaSYjgf2A3afBUcBh5Uy9VHbW/zRzdhhJdsVNBjZYcFy
CVLOcf1toCRp8J4U5FlnFMOzFegUbdXFQhq2VmIhPRxWjrfTk6iR4BcMEN9UMij/5IHRAeBdksyD
CqEKsyFxosbI5KVMRZ1Ln75Zipn0JdsGekHkxg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DPUa5DLPYRWvbPnX0U412yoWvvvHyuq43DrYmDJGTK0cR5U4U6th8icYgizC1/hUAEzt19kM/hVa
zZh7bXSWACYLpcfhPY8dRTVGDZVjpbkraw0ceBryLP7jc6Jt5JdNw88tZtZpprCB7nQ25lUL82Hf
WTwL1ZqgGIvtfHhxO0JF5L5ES5giedwQ6u5ffXG3UB6ELcpQD1NvpW5lAz4mfXyvVDCAPZN581TF
tlAy79iKbPKlJ2zFn1BS2cuRIHHe2JRxwPo+0n5VD5CXVgg+lCYxTnCxI8CdyFaTumbs4IfAKwVI
wSN/btbwDUhW9hAHWHIRo+BpdJ4qeGcTDPKtsA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mf5hcf6JE6yLm0jNCQnHMVmogjLlPz6re0FwG67yvOJ3FuEorru0emIeAKEwgOoxjUYNWvcM7QAH
/UEeB2EIdjLl6glPAUda0HjtaCU2rdncVdM8k6DSMBggc4yo18Qx5F+1TD/RoBgoo0jNkMdDy6wJ
JHjqlN+R01z3yYIMQ9f2z6ZaYncbBYEp4+YAb7g1D7CSMxP5cFRpQznRpYp0JwqJfT9CHzlKgdab
8B288NxeLM66iYodiTS+GSRGLGtDWXpz9yeiuiPe6kJxae2GJyHIMSfluO/0Slc3m24DQNdbojf8
jdc0G2UnrDe5mCUTfYiDmpOWTUJOdYo0FK0N2g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27056)
`pragma protect data_block
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
`pragma protect end_protected
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
