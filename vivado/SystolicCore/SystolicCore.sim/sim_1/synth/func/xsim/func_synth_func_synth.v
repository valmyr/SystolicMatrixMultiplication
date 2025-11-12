// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sun Nov  9 22:36:59 2025
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/xmen/Desktop/SystolicCore/vivado/SystolicCore/SystolicCore.sim/sim_1/synth/func/xsim/func_synth_func_synth.v
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
  (* IMPORTED_FROM = "/home/xmen/Desktop/SystolicCore/vivado/SystolicCore/SystolicCore.gen/sources_1/ip/ram_single_port/ram_single_port.dcp" *) 
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
  (* IMPORTED_FROM = "/home/xmen/Desktop/SystolicCore/vivado/SystolicCore/SystolicCore.gen/sources_1/ip/ram_single_port/ram_single_port.dcp" *) 
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
