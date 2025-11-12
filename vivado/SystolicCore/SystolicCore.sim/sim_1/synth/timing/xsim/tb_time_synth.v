// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sun Nov  9 23:11:05 2025
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/xmen/Desktop/SystolicCore/vivado/SystolicCore/SystolicCore.sim/sim_1/synth/timing/xsim/tb_time_synth.v
// Design      : Arty7_top_sim
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

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

initial begin
 $sdf_annotate("tb_time_synth.sdf",,,,"tool_control");
end
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

(* CHECK_LICENSE_TYPE = "ram_single_port,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
module ram_single_port_HD10
   (clka,
    rsta,
    ena,
    rsta_busy,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  output rsta_busy;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

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
  ram_single_port_blk_mem_gen_v8_4_11_HD11 U0
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
  ram_single_port_HD10 mem
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 54160)
`pragma protect data_block
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
lnubAT+EnLGrRQ==
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
