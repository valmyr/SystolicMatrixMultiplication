// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sat Nov  8 12:14:51 2025
// Host        : VT0144 running 64-bit Rocky Linux release 8.10 (Green Obsidian)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/xmen/Desktop/compara/analise/SystolicMatrixMultiplication/project_1/project_1.sim/sim_1/synth/timing/xsim/Arty7_top_sim_time_synth.v
// Design      : Arty7_top_sim
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* BAUDRATE = "115200" *) (* BYTESIZES = "8" *) (* CLOCK_REF = "10000000" *) 
(* CLOCK_TRANSFER_PC = "10000" *) (* COUNTER_CLOCK_INPUT = "100000000" *) (* OVERSAMPLING = "16" *) 
(* SIZE = "16" *) (* WIDTH = "8" *) (* WIDTHx = "4" *) 
(* NotValidForBitStream *)
module Arty7_top_sim
   (clock,
    uart_txd_in,
    uart_rxd_out,
    btn);
  input clock;
  input uart_txd_in;
  output uart_rxd_out;
  input [3:0]btn;

  wire DUT_MatrixMultiplyM0_n_0;
  wire DUT_MatrixMultiplyM0_n_1;
  wire [3:0]btn;
  wire [0:0]btn_IBUF;
  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire [1:1]fsm_unit_control;
  wire mem2serial_clock;
  wire [1:0]mem_fsm;
  wire [1:0]mem_fsm_0;
  wire serial2mem_opA_n_2;
  wire serial2mem_opA_n_3;
  wire serial2mem_opA_n_4;
  wire serial2mem_opA_n_5;
  wire serial2mem_opB_n_3;
  wire serial2mem_opB_n_4;
  wire serial2mem_opB_n_5;
  wire [3:0]serial2mem_opa_in_data;
  wire serial2mem_opb_clock;
  wire serial2mem_opb_clock_BUFG;
  wire [3:0]serial2mem_opb_in_data;
  wire [3:0]single_port_ram_di;
  wire [3:0]single_port_ram_di_1;
  wire single_port_ram_we;
  wire systolicControlUnit_Global_n_17;
  wire systolicControlUnit_Global_n_18;
  wire systolicControlUnit_Global_n_4;
  wire systolicControlUnit_mem2serial_rvalid_o;
  wire systolicControlUnit_nreset;
  wire systolicControlUnit_serial2mem_opa_valid_i;
  wire systolicControlUnit_serial2mem_opb_rw;
  wire systolicControlUnit_serial2mem_opb_valid_i;
  wire systolicControlUnit_syst_rready_i;
  wire systolicControlUnit_uart_valid_tx_in;
  wire [3:0]uart_data_rx_out;
  wire uart_ready_rx_out;
  wire uart_rxd_out;
  wire uart_rxd_out_OBUF;
  wire uart_txd_in;
  wire uart_txd_in_IBUF;

initial begin
 $sdf_annotate("Arty7_top_sim_time_synth.sdf",,,,"tool_control");
end
  systolicMatrixMultiply DUT_MatrixMultiplyM0
       (.CLK(clock_IBUF_BUFG),
        .Q({DUT_MatrixMultiplyM0_n_0,DUT_MatrixMultiplyM0_n_1}),
        .btn_IBUF(btn_IBUF),
        .systolicControlUnit_syst_rready_i(systolicControlUnit_syst_rready_i));
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
       (.CLK(clock_IBUF_BUFG),
        .btn_IBUF(btn_IBUF),
        .out_clock_ref_reg_0(mem2serial_clock));
  mem2seriala mem2serial_transfer_pc
       (.CLK(mem2serial_clock),
        .btn_IBUF(btn_IBUF),
        .systolicControlUnit_mem2serial_rvalid_o(systolicControlUnit_mem2serial_rvalid_o),
        .systolicControlUnit_uart_valid_tx_in(systolicControlUnit_uart_valid_tx_in));
  serial2mem__xdcDup__1 serial2mem_opA
       (.D(systolicControlUnit_Global_n_18),
        .E(systolicControlUnit_nreset),
        .Q(mem_fsm),
        .btn_IBUF(btn_IBUF),
        .\buf_data_reg[3]_0 (serial2mem_opa_in_data),
        .clka(serial2mem_opb_clock_BUFG),
        .\cnt_reg[3]_0 (serial2mem_opA_n_4),
        .\cnt_reg[3]_1 (serial2mem_opA_n_5),
        .\cnt_shift_reg[2]_0 (serial2mem_opA_n_2),
        .dina(single_port_ram_di_1),
        .\mem_fsm_reg[1]_0 (serial2mem_opA_n_3),
        .serial2mem_opb_valid_i_reg({systolicControlUnit_Global_n_4,fsm_unit_control}),
        .systolicControlUnit_serial2mem_opa_valid_i(systolicControlUnit_serial2mem_opa_valid_i),
        .systolicControlUnit_serial2mem_opb_rw(systolicControlUnit_serial2mem_opb_rw),
        .systolicControlUnit_syst_rready_i(systolicControlUnit_syst_rready_i),
        .wea(single_port_ram_we));
  serial2mem serial2mem_opB
       (.D(systolicControlUnit_Global_n_17),
        .E(systolicControlUnit_nreset),
        .\FSM_onehot_fsm_unit_control_next_reg[1]_i_1 (mem_fsm[1]),
        .Q(mem_fsm_0),
        .btn_IBUF(btn_IBUF),
        .\buf_data_reg[3]_0 (serial2mem_opb_in_data),
        .clka(serial2mem_opb_clock_BUFG),
        .\cnt_reg[3]_0 (serial2mem_opB_n_4),
        .\cnt_shift_reg[2]_0 (serial2mem_opB_n_3),
        .dina(single_port_ram_di),
        .\mem_fsm_reg[1]_0 (serial2mem_opB_n_5),
        .systolicControlUnit_serial2mem_opb_rw(systolicControlUnit_serial2mem_opb_rw),
        .systolicControlUnit_serial2mem_opb_valid_i(systolicControlUnit_serial2mem_opb_valid_i),
        .systolicControlUnit_syst_rready_i(systolicControlUnit_syst_rready_i),
        .wea(single_port_ram_we));
  BUFG serial2mem_opb_clock_BUFG_inst
       (.I(serial2mem_opb_clock),
        .O(serial2mem_opb_clock_BUFG));
  systolicControlUnitTop systolicControlUnit_Global
       (.CLK(clock_IBUF_BUFG),
        .D(systolicControlUnit_Global_n_17),
        .E(uart_ready_rx_out),
        .\FSM_onehot_fsm_unit_control_reg[2]_0 (serial2mem_opB_n_5),
        .\FSM_onehot_fsm_unit_control_reg[2]_1 (serial2mem_opA_n_4),
        .\FSM_onehot_fsm_unit_control_reg[3]_0 ({DUT_MatrixMultiplyM0_n_0,DUT_MatrixMultiplyM0_n_1}),
        .Q({systolicControlUnit_Global_n_4,fsm_unit_control}),
        .btn_IBUF(btn_IBUF),
        .\buf_data_reg[3] (uart_data_rx_out),
        .clock_IBUF(clock_IBUF),
        .\data_rx_out_reg[3] (single_port_ram_di),
        .\data_rx_out_reg[3]_0 (serial2mem_opa_in_data),
        .\data_rx_out_reg[3]_1 (serial2mem_opb_in_data),
        .dina(single_port_ram_di_1),
        .mem(serial2mem_opA_n_2),
        .mem_0(serial2mem_opB_n_3),
        .\mem_fsm_reg[0] (serial2mem_opA_n_3),
        .\mem_fsm_reg[0]_0 (serial2mem_opB_n_4),
        .\mem_fsm_reg[0]_1 (mem_fsm_0),
        .\mem_fsm_reg[0]_2 (mem_fsm),
        .\mem_fsm_reg[0]_3 (serial2mem_opA_n_5),
        .\mem_fsm_reg[1] (systolicControlUnit_Global_n_18),
        .serial2mem_opb_clock(serial2mem_opb_clock),
        .systolicControlUnit_mem2serial_rvalid_o(systolicControlUnit_mem2serial_rvalid_o),
        .systolicControlUnit_serial2mem_opa_valid_i(systolicControlUnit_serial2mem_opa_valid_i),
        .systolicControlUnit_serial2mem_opb_rw(systolicControlUnit_serial2mem_opb_rw),
        .systolicControlUnit_serial2mem_opb_valid_i(systolicControlUnit_serial2mem_opb_valid_i),
        .systolicControlUnit_syst_rready_i(systolicControlUnit_syst_rready_i),
        .systolicControlUnit_uart_valid_tx_in(systolicControlUnit_uart_valid_tx_in),
        .wea(single_port_ram_we));
  OBUF uart_rxd_out_OBUF_inst
       (.I(uart_rxd_out_OBUF),
        .O(uart_rxd_out));
  uart_top uart_systolic_core
       (.CLK(clock_IBUF_BUFG),
        .E(uart_ready_rx_out),
        .Q(uart_data_rx_out),
        .btn_IBUF(btn_IBUF),
        .systolicControlUnit_uart_valid_tx_in(systolicControlUnit_uart_valid_tx_in),
        .uart_rxd_out_OBUF(uart_rxd_out_OBUF),
        .uart_txd_in_IBUF(uart_txd_in_IBUF));
  IBUF uart_txd_in_IBUF_inst
       (.I(uart_txd_in),
        .O(uart_txd_in_IBUF));
endmodule

module baudRateGenerator
   (clock_out_reg_0,
    D,
    pdata_rx_out1,
    E,
    CLK,
    btn_IBUF,
    ena,
    Q,
    \FSM_sequential_current_fsm_reg[0] ,
    bit_start,
    \px_bit_reg[0] ,
    \pdata_rx_out_reg[0] ,
    tmp_sdata_rx_in,
    \pdata_rx_out_reg[0]_0 ,
    \pdata_rx_out_reg[0]_1 );
  output clock_out_reg_0;
  output [1:0]D;
  output pdata_rx_out1;
  output [0:0]E;
  input CLK;
  input [0:0]btn_IBUF;
  input ena;
  input [1:0]Q;
  input \FSM_sequential_current_fsm_reg[0] ;
  input bit_start;
  input [1:0]\px_bit_reg[0] ;
  input \pdata_rx_out_reg[0] ;
  input tmp_sdata_rx_in;
  input \pdata_rx_out_reg[0]_0 ;
  input \pdata_rx_out_reg[0]_1 ;

  wire CLK;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_sequential_current_fsm_reg[0] ;
  wire [1:0]Q;
  wire base_clock;
  wire bit_start;
  wire [0:0]btn_IBUF;
  wire clock_base_ref_n_0;
  wire clock_out_i_1_n_0;
  wire clock_out_reg_0;
  wire ena;
  wire pdata_rx_out1;
  wire \pdata_rx_out_reg[0] ;
  wire \pdata_rx_out_reg[0]_0 ;
  wire \pdata_rx_out_reg[0]_1 ;
  wire [1:0]\px_bit_reg[0] ;
  wire tmp_sdata_rx_in;

  counter__parameterized0 base_clock_counter
       (.base_clock(base_clock),
        .btn_IBUF(btn_IBUF),
        .\counter_reg[1]_0 (clock_base_ref_n_0));
  ref_clock_0 clock_base_ref
       (.CLK(CLK),
        .btn_IBUF(btn_IBUF),
        .out_clock_ref_reg_0(clock_base_ref_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clock_out_i_1
       (.I0(clock_out_reg_0),
        .O(clock_out_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clock_out_reg
       (.C(base_clock),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(clock_out_i_1_n_0),
        .Q(clock_out_reg_0));
  counter__parameterized1 sampling_counter
       (.D(D),
        .E(E),
        .\FSM_sequential_current_fsm_reg[0] (\FSM_sequential_current_fsm_reg[0] ),
        .Q(Q),
        .bit_start(bit_start),
        .btn_IBUF(btn_IBUF),
        .\counter_reg[3]_0 (clock_out_reg_0),
        .ena(ena),
        .pdata_rx_out1(pdata_rx_out1),
        .\pdata_rx_out_reg[0] (\pdata_rx_out_reg[0] ),
        .\pdata_rx_out_reg[0]_0 (\pdata_rx_out_reg[0]_0 ),
        .\pdata_rx_out_reg[0]_1 (\pdata_rx_out_reg[0]_1 ),
        .\px_bit_reg[0] (\px_bit_reg[0] ),
        .tmp_sdata_rx_in(tmp_sdata_rx_in));
endmodule

(* ORIG_REF_NAME = "baudRateGenerator" *) 
module baudRateGenerator__parameterized0
   (clock_out_reg_0,
    CLK,
    btn_IBUF);
  output clock_out_reg_0;
  input CLK;
  input [0:0]btn_IBUF;

  wire CLK;
  wire base_clock_counter_n_0;
  wire [0:0]btn_IBUF;
  wire clock_base_ref_n_0;
  wire clock_out_i_1__0_n_0;
  wire clock_out_reg_0;

  counter__parameterized2 base_clock_counter
       (.btn_IBUF(btn_IBUF),
        .\counter_reg[5]_0 (clock_base_ref_n_0),
        .counting_done_reg_0(base_clock_counter_n_0));
  ref_clock clock_base_ref
       (.CLK(CLK),
        .btn_IBUF(btn_IBUF),
        .out_clock_ref_reg_0(clock_base_ref_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clock_out_i_1__0
       (.I0(clock_out_reg_0),
        .O(clock_out_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clock_out_reg
       (.C(base_clock_counter_n_0),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(clock_out_i_1__0_n_0),
        .Q(clock_out_reg_0));
endmodule

module counter
   (counting_done_reg_0,
    CLK,
    btn_IBUF);
  output counting_done_reg_0;
  input CLK;
  input [0:0]btn_IBUF;

  wire CLK;
  wire [0:0]btn_IBUF;
  wire counter3_n_0;
  wire \counter[0]_i_1__2_n_0 ;
  wire \counter[1]_i_1__2_n_0 ;
  wire \counter[2]_i_1__2_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire counting_done_reg_0;

  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h04)) 
    counter3
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[1] ),
        .O(counter3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \counter[0]_i_1__2 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1__2 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .O(\counter[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h68)) 
    \counter[2]_i_1__2 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[0] ),
        .O(\counter[2]_i_1__2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter[0]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter[1]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter[2]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    counting_done_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(counter3_n_0),
        .Q(counting_done_reg_0));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module counter_1
   (done,
    CLK,
    btn_IBUF);
  output done;
  input CLK;
  input [0:0]btn_IBUF;

  wire CLK;
  wire [0:0]btn_IBUF;
  wire [2:0]counter;
  wire counter3_n_0;
  wire \counter[0]_i_1__0_n_0 ;
  wire \counter[1]_i_1__3_n_0 ;
  wire \counter[2]_i_1__1_n_0 ;
  wire done;

  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h04)) 
    counter3
       (.I0(counter[0]),
        .I1(counter[2]),
        .I2(counter[1]),
        .O(counter3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \counter[0]_i_1__0 
       (.I0(counter[1]),
        .I1(counter[2]),
        .I2(counter[0]),
        .O(\counter[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1__3 
       (.I0(counter[1]),
        .I1(counter[0]),
        .O(\counter[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h68)) 
    \counter[2]_i_1__1 
       (.I0(counter[1]),
        .I1(counter[2]),
        .I2(counter[0]),
        .O(\counter[2]_i_1__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter[0]_i_1__0_n_0 ),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter[1]_i_1__3_n_0 ),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter[2]_i_1__1_n_0 ),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    counting_done_reg
       (.C(CLK),
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
  wire \counter[0]_i_1__1_n_0 ;
  wire \counter[1]_i_1__0_n_0 ;
  wire \counter_reg[1]_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire counting_done_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \counter[0]_i_1__1 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[1]_i_1__0 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[1] ),
        .O(\counter[1]_i_1__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(\counter_reg[1]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter[0]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(\counter_reg[1]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter[1]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
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
   (D,
    pdata_rx_out1,
    E,
    \counter_reg[3]_0 ,
    btn_IBUF,
    ena,
    Q,
    \FSM_sequential_current_fsm_reg[0] ,
    bit_start,
    \px_bit_reg[0] ,
    \pdata_rx_out_reg[0] ,
    tmp_sdata_rx_in,
    \pdata_rx_out_reg[0]_0 ,
    \pdata_rx_out_reg[0]_1 );
  output [1:0]D;
  output pdata_rx_out1;
  output [0:0]E;
  input \counter_reg[3]_0 ;
  input [0:0]btn_IBUF;
  input ena;
  input [1:0]Q;
  input \FSM_sequential_current_fsm_reg[0] ;
  input bit_start;
  input [1:0]\px_bit_reg[0] ;
  input \pdata_rx_out_reg[0] ;
  input tmp_sdata_rx_in;
  input \pdata_rx_out_reg[0]_0 ;
  input \pdata_rx_out_reg[0]_1 ;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_sequential_current_fsm_reg[0] ;
  wire [1:0]Q;
  wire bit_start;
  wire [0:0]btn_IBUF;
  wire \counter[0]_i_1__3_n_0 ;
  wire [3:0]counter_reg;
  wire \counter_reg[3]_0 ;
  wire counting_done_i_1__0_n_0;
  wire ena;
  wire [3:1]p_0_in;
  wire pdata_rx_out1;
  wire \pdata_rx_out_reg[0] ;
  wire \pdata_rx_out_reg[0]_0 ;
  wire \pdata_rx_out_reg[0]_1 ;
  wire [1:0]\px_bit_reg[0] ;
  wire sample_center_bit;
  wire tmp_sdata_rx_in;

  LUT6 #(
    .INIT(64'h00FF11F0FF0000F0)) 
    \FSM_sequential_current_fsm[0]_i_1 
       (.I0(Q[1]),
        .I1(\FSM_sequential_current_fsm_reg[0] ),
        .I2(bit_start),
        .I3(\px_bit_reg[0] [1]),
        .I4(\px_bit_reg[0] [0]),
        .I5(sample_center_bit),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h5C)) 
    \FSM_sequential_current_fsm[1]_i_1 
       (.I0(sample_center_bit),
        .I1(\px_bit_reg[0] [1]),
        .I2(\px_bit_reg[0] [0]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_1__3 
       (.I0(ena),
        .I1(counter_reg[0]),
        .O(\counter[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \counter[1]_i_1 
       (.I0(counter_reg[0]),
        .I1(ena),
        .I2(counter_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \counter[2]_i_1 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .I2(ena),
        .I3(counter_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \counter[3]_i_1 
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .I2(counter_reg[2]),
        .I3(ena),
        .I4(counter_reg[3]),
        .O(p_0_in[3]));
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
        .D(p_0_in[1]),
        .Q(counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(\counter_reg[3]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(p_0_in[2]),
        .Q(counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(\counter_reg[3]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(p_0_in[3]),
        .Q(counter_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    counting_done_i_1__0
       (.I0(ena),
        .I1(counter_reg[3]),
        .I2(counter_reg[2]),
        .I3(counter_reg[0]),
        .I4(counter_reg[1]),
        .O(counting_done_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    counting_done_reg
       (.C(\counter_reg[3]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(counting_done_i_1__0_n_0),
        .Q(sample_center_bit));
  LUT6 #(
    .INIT(64'hFF00C0C0AAAAC0C0)) 
    \pdata_rx_out[7]_i_2 
       (.I0(\pdata_rx_out_reg[0] ),
        .I1(tmp_sdata_rx_in),
        .I2(sample_center_bit),
        .I3(\pdata_rx_out_reg[0]_0 ),
        .I4(\pdata_rx_out_reg[0]_1 ),
        .I5(Q[0]),
        .O(pdata_rx_out1));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h02FF)) 
    \px_bit[3]_i_1__0 
       (.I0(sample_center_bit),
        .I1(Q[1]),
        .I2(\px_bit_reg[0] [0]),
        .I3(\px_bit_reg[0] [1]),
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
  wire \counter[1]_i_1__1_n_0 ;
  wire [5:0]counter_reg;
  wire \counter_reg[5]_0 ;
  wire counting_done_i_1__1_n_0;
  wire counting_done_reg_0;
  wire [5:0]p_0_in__0;

  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1__1 
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .O(\counter[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFFDF000000)) 
    \counter[2]_i_1__0 
       (.I0(counter_reg[5]),
        .I1(counter_reg[4]),
        .I2(counter_reg[3]),
        .I3(counter_reg[1]),
        .I4(counter_reg[0]),
        .I5(counter_reg[2]),
        .O(p_0_in__0[2]));
  LUT6 #(
    .INIT(64'h51AAFF00FF00FF00)) 
    \counter[3]_i_1__0 
       (.I0(counter_reg[2]),
        .I1(counter_reg[5]),
        .I2(counter_reg[4]),
        .I3(counter_reg[3]),
        .I4(counter_reg[0]),
        .I5(counter_reg[1]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_1 
       (.I0(counter_reg[2]),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .I3(counter_reg[3]),
        .I4(counter_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h68AAAAAAAAAAAAAA)) 
    \counter[5]_i_1 
       (.I0(counter_reg[5]),
        .I1(counter_reg[4]),
        .I2(counter_reg[2]),
        .I3(counter_reg[1]),
        .I4(counter_reg[0]),
        .I5(counter_reg[3]),
        .O(p_0_in__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(\counter_reg[5]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(p_0_in__0[0]),
        .Q(counter_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(\counter_reg[5]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter[1]_i_1__1_n_0 ),
        .Q(counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(\counter_reg[5]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(p_0_in__0[2]),
        .Q(counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(\counter_reg[5]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(p_0_in__0[3]),
        .Q(counter_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(\counter_reg[5]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(p_0_in__0[4]),
        .Q(counter_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(\counter_reg[5]_0 ),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(p_0_in__0[5]),
        .Q(counter_reg[5]));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    counting_done_i_1__1
       (.I0(counter_reg[2]),
        .I1(counter_reg[4]),
        .I2(counter_reg[5]),
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
   (counting_done_reg_0,
    CLK,
    btn_IBUF);
  output counting_done_reg_0;
  input CLK;
  input [0:0]btn_IBUF;

  wire CLK;
  wire [0:0]btn_IBUF;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[12]_i_2_n_0 ;
  wire \counter[12]_i_3_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire \counter[8]_i_4_n_0 ;
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
  wire counting_done_reg_0;
  wire [3:0]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_counter_reg[12]_i_1_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hC4CCCCCC)) 
    \counter[0]_i_2 
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .I2(counting_done_i_2_n_0),
        .I3(counter_reg[7]),
        .I4(counter_reg[2]),
        .O(\counter[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF0000)) 
    \counter[0]_i_3 
       (.I0(counting_done_i_2_n_0),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .I3(counter_reg[7]),
        .I4(counter_reg[2]),
        .O(\counter[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hC4CCCCCC)) 
    \counter[0]_i_4 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .I2(counting_done_i_2_n_0),
        .I3(counter_reg[7]),
        .I4(counter_reg[2]),
        .O(\counter[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_5 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFF00F700)) 
    \counter[12]_i_2 
       (.I0(counter_reg[9]),
        .I1(counter_reg[8]),
        .I2(\counter[12]_i_3_n_0 ),
        .I3(counter_reg[12]),
        .I4(counting_done_i_3_n_0),
        .O(\counter[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter[12]_i_3 
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .I2(counter_reg[7]),
        .I3(counter_reg[2]),
        .O(\counter[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF0000)) 
    \counter[4]_i_2 
       (.I0(counting_done_i_2_n_0),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .I3(counter_reg[2]),
        .I4(counter_reg[7]),
        .O(\counter[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hC4)) 
    \counter[8]_i_2 
       (.I0(counter_reg[8]),
        .I1(counter_reg[9]),
        .I2(\counter[8]_i_4_n_0 ),
        .O(\counter[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hC4)) 
    \counter[8]_i_3 
       (.I0(counter_reg[9]),
        .I1(counter_reg[8]),
        .I2(\counter[8]_i_4_n_0 ),
        .O(\counter[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    \counter[8]_i_4 
       (.I0(counter_reg[2]),
        .I1(counter_reg[7]),
        .I2(counter_reg[0]),
        .I3(counter_reg[1]),
        .I4(counter_reg[12]),
        .I5(counting_done_i_3_n_0),
        .O(\counter[8]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
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
        .S({counter_reg[3],\counter[0]_i_3_n_0 ,\counter[0]_i_4_n_0 ,\counter[0]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
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
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(counter_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
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
        .S({\counter[4]_i_2_n_0 ,counter_reg[6:4]}));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
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
        .S({counter_reg[11:10],\counter[8]_i_2_n_0 ,\counter[8]_i_3_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    counting_done_i_1__2
       (.I0(counter_reg[2]),
        .I1(counter_reg[7]),
        .I2(counter_reg[0]),
        .I3(counter_reg[1]),
        .I4(counting_done_i_2_n_0),
        .O(counting_done_i_1__2_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    counting_done_i_2
       (.I0(counter_reg[9]),
        .I1(counter_reg[8]),
        .I2(counter_reg[12]),
        .I3(counting_done_i_3_n_0),
        .O(counting_done_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    counting_done_i_3
       (.I0(counter_reg[10]),
        .I1(counter_reg[11]),
        .I2(counter_reg[5]),
        .I3(counter_reg[6]),
        .I4(counter_reg[4]),
        .I5(counter_reg[3]),
        .O(counting_done_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    counting_done_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(counting_done_i_1__2_n_0),
        .Q(counting_done_reg_0));
endmodule

module mem2seriala
   (systolicControlUnit_mem2serial_rvalid_o,
    systolicControlUnit_uart_valid_tx_in,
    btn_IBUF,
    CLK);
  output systolicControlUnit_mem2serial_rvalid_o;
  input systolicControlUnit_uart_valid_tx_in;
  input [0:0]btn_IBUF;
  input CLK;

  wire CLK;
  wire [0:0]btn_IBUF;
  wire [3:0]i_counter;
  wire [3:0]j_counter;
  wire [1:0]mem2seriala_fsm;
  wire \mem2seriala_fsm[0]_i_1_n_0 ;
  wire \mem2seriala_fsm[1]_i_1_n_0 ;
  wire [3:0]next_i_counter;
  wire \next_i_counter_reg[0]_i_1_n_0 ;
  wire \next_i_counter_reg[1]_i_1_n_0 ;
  wire \next_i_counter_reg[1]_i_2_n_0 ;
  wire \next_i_counter_reg[2]_i_1_n_0 ;
  wire \next_i_counter_reg[3]_i_1_n_0 ;
  wire \next_i_counter_reg[3]_i_3_n_0 ;
  wire [3:0]next_j_counter;
  wire \next_j_counter_reg[0]_i_1_n_0 ;
  wire \next_j_counter_reg[1]_i_1_n_0 ;
  wire \next_j_counter_reg[2]_i_1_n_0 ;
  wire \next_j_counter_reg[3]_i_1_n_0 ;
  wire [1:0]next_mem2seriala_fsm;
  wire \next_mem2seriala_fsm_reg[0]_i_1_n_0 ;
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
        .Q(i_counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_i_counter[1]),
        .Q(i_counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \i_counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_i_counter[2]),
        .Q(i_counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \i_counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_i_counter[3]),
        .Q(i_counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \j_counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_j_counter[0]),
        .Q(j_counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \j_counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_j_counter[1]),
        .Q(j_counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \j_counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_j_counter[2]),
        .Q(j_counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \j_counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_j_counter[3]),
        .Q(j_counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \mem2seriala_fsm[0]_i_1 
       (.I0(next_mem2seriala_fsm[0]),
        .I1(btn_IBUF),
        .I2(mem2seriala_fsm[0]),
        .O(\mem2seriala_fsm[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
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
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \next_i_counter_reg[0]_i_1 
       (.I0(j_counter[2]),
        .I1(j_counter[0]),
        .I2(j_counter[1]),
        .I3(j_counter[3]),
        .I4(mem2seriala_fsm[0]),
        .I5(i_counter[0]),
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
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \next_i_counter_reg[1]_i_1 
       (.I0(\next_i_counter_reg[1]_i_2_n_0 ),
        .I1(mem2seriala_fsm[0]),
        .I2(i_counter[1]),
        .O(\next_i_counter_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \next_i_counter_reg[1]_i_2 
       (.I0(j_counter[3]),
        .I1(j_counter[1]),
        .I2(j_counter[0]),
        .I3(j_counter[2]),
        .I4(i_counter[0]),
        .O(\next_i_counter_reg[1]_i_2_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \next_i_counter_reg[2]_i_1 
       (.I0(\next_i_counter_reg[3]_i_3_n_0 ),
        .I1(mem2seriala_fsm[0]),
        .I2(i_counter[2]),
        .O(\next_i_counter_reg[2]_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \next_i_counter_reg[3] 
       (.CLR(1'b0),
        .D(\next_i_counter_reg[3]_i_1_n_0 ),
        .G(mem2seriala_fsm[1]),
        .GE(1'b1),
        .Q(next_i_counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hB040)) 
    \next_i_counter_reg[3]_i_1 
       (.I0(\next_i_counter_reg[3]_i_3_n_0 ),
        .I1(i_counter[2]),
        .I2(mem2seriala_fsm[0]),
        .I3(i_counter[3]),
        .O(\next_i_counter_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \next_i_counter_reg[3]_i_3 
       (.I0(i_counter[0]),
        .I1(j_counter[2]),
        .I2(j_counter[0]),
        .I3(j_counter[1]),
        .I4(j_counter[3]),
        .I5(i_counter[1]),
        .O(\next_i_counter_reg[3]_i_3_n_0 ));
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
        .I1(j_counter[0]),
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
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \next_j_counter_reg[1]_i_1 
       (.I0(j_counter[0]),
        .I1(mem2seriala_fsm[0]),
        .I2(j_counter[1]),
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
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \next_j_counter_reg[2]_i_1 
       (.I0(j_counter[0]),
        .I1(j_counter[1]),
        .I2(mem2seriala_fsm[0]),
        .I3(j_counter[2]),
        .O(\next_j_counter_reg[2]_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \next_j_counter_reg[3] 
       (.CLR(1'b0),
        .D(\next_j_counter_reg[3]_i_1_n_0 ),
        .G(mem2seriala_fsm[1]),
        .GE(1'b1),
        .Q(next_j_counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \next_j_counter_reg[3]_i_1 
       (.I0(j_counter[1]),
        .I1(j_counter[0]),
        .I2(j_counter[2]),
        .I3(mem2seriala_fsm[0]),
        .I4(j_counter[3]),
        .O(\next_j_counter_reg[3]_i_1_n_0 ));
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
  LUT6 #(
    .INIT(64'h00000000DFFFDF00)) 
    \next_mem2seriala_fsm_reg[0]_i_1 
       (.I0(i_counter[2]),
        .I1(\next_i_counter_reg[3]_i_3_n_0 ),
        .I2(i_counter[3]),
        .I3(mem2seriala_fsm[0]),
        .I4(systolicControlUnit_uart_valid_tx_in),
        .I5(mem2seriala_fsm[1]),
        .O(\next_mem2seriala_fsm_reg[0]_i_1_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \next_mem2seriala_fsm_reg[1]_i_1 
       (.I0(i_counter[2]),
        .I1(\next_i_counter_reg[3]_i_3_n_0 ),
        .I2(i_counter[3]),
        .I3(mem2seriala_fsm[0]),
        .I4(mem2seriala_fsm[1]),
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
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h7)) 
    rvalid_o_reg_i_1
       (.I0(mem2seriala_fsm[0]),
        .I1(mem2seriala_fsm[1]),
        .O(rvalid_o_reg_i_1_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "ram,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
module ram
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [127:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [127:0]douta;
  output rsta_busy;

  wire [5:0]addra;
  wire clka;
  wire [127:0]dina;
  wire [127:0]douta;
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
  wire [127:0]NLW_U0_doutb_UNCONNECTED;
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [127:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     13.4011 mW" *) 
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
  (* C_INIT_FILE = "ram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "63" *) 
  (* C_READ_DEPTH_B = "63" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "128" *) 
  (* C_READ_WIDTH_B = "128" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "63" *) 
  (* C_WRITE_DEPTH_B = "63" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "128" *) 
  (* C_WRITE_WIDTH_B = "128" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  ram_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[127:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[127:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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

(* CHECK_LICENSE_TYPE = "ram,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
module ram_HD1882
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [127:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [127:0]douta;

  wire [5:0]addra;
  wire clka;
  wire [127:0]dina;
  wire [127:0]douta;
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
  wire [127:0]NLW_U0_doutb_UNCONNECTED;
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [127:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     13.4011 mW" *) 
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
  (* C_INIT_FILE = "ram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "63" *) 
  (* C_READ_DEPTH_B = "63" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "128" *) 
  (* C_READ_WIDTH_B = "128" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "63" *) 
  (* C_WRITE_DEPTH_B = "63" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "128" *) 
  (* C_WRITE_WIDTH_B = "128" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  ram_blk_mem_gen_v8_4_11_HD1883 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[127:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[127:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
    CLK,
    btn_IBUF);
  output out_clock_ref_reg_0;
  input CLK;
  input [0:0]btn_IBUF;

  wire CLK;
  wire [0:0]btn_IBUF;
  wire counter_base_n_0;
  wire out_clock_ref_i_1_n_0;
  wire out_clock_ref_reg_0;

  counter counter_base
       (.CLK(CLK),
        .btn_IBUF(btn_IBUF),
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
    CLK,
    btn_IBUF);
  output out_clock_ref_reg_0;
  input CLK;
  input [0:0]btn_IBUF;

  wire CLK;
  wire [0:0]btn_IBUF;
  wire done;
  wire out_clock_ref_i_1__0_n_0;
  wire out_clock_ref_reg_0;

  counter_1 counter_base
       (.CLK(CLK),
        .btn_IBUF(btn_IBUF),
        .done(done));
  LUT1 #(
    .INIT(2'h1)) 
    out_clock_ref_i_1__0
       (.I0(out_clock_ref_reg_0),
        .O(out_clock_ref_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    out_clock_ref_reg
       (.C(done),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(out_clock_ref_i_1__0_n_0),
        .Q(out_clock_ref_reg_0));
endmodule

(* ORIG_REF_NAME = "ref_clock" *) 
module ref_clock__parameterized0
   (out_clock_ref_reg_0,
    CLK,
    btn_IBUF);
  output out_clock_ref_reg_0;
  input CLK;
  input [0:0]btn_IBUF;

  wire CLK;
  wire [0:0]btn_IBUF;
  wire counter_base_n_0;
  wire out_clock_ref_i_1__1_n_0;
  wire out_clock_ref_reg_0;

  counter__parameterized4 counter_base
       (.CLK(CLK),
        .btn_IBUF(btn_IBUF),
        .counting_done_reg_0(counter_base_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    out_clock_ref_i_1__1
       (.I0(out_clock_ref_reg_0),
        .O(out_clock_ref_i_1__1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    out_clock_ref_reg
       (.C(counter_base_n_0),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(out_clock_ref_i_1__1_n_0),
        .Q(out_clock_ref_reg_0));
endmodule

module serial2mem
   (E,
    Q,
    \cnt_shift_reg[2]_0 ,
    \cnt_reg[3]_0 ,
    \mem_fsm_reg[1]_0 ,
    clka,
    btn_IBUF,
    wea,
    dina,
    systolicControlUnit_syst_rready_i,
    systolicControlUnit_serial2mem_opb_valid_i,
    systolicControlUnit_serial2mem_opb_rw,
    \FSM_onehot_fsm_unit_control_next_reg[1]_i_1 ,
    D,
    \buf_data_reg[3]_0 );
  output [0:0]E;
  output [1:0]Q;
  output \cnt_shift_reg[2]_0 ;
  output \cnt_reg[3]_0 ;
  output \mem_fsm_reg[1]_0 ;
  input clka;
  input [0:0]btn_IBUF;
  input [0:0]wea;
  input [3:0]dina;
  input systolicControlUnit_syst_rready_i;
  input systolicControlUnit_serial2mem_opb_valid_i;
  input systolicControlUnit_serial2mem_opb_rw;
  input [0:0]\FSM_onehot_fsm_unit_control_next_reg[1]_i_1 ;
  input [0:0]D;
  input [3:0]\buf_data_reg[3]_0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_fsm_unit_control_next_reg[1]_i_1 ;
  wire [1:0]Q;
  wire [0:0]btn_IBUF;
  wire [3:0]\buf_data_reg[3]_0 ;
  wire clka;
  wire [4:0]cnt;
  wire \cnt[0]_i_1__0_n_0 ;
  wire \cnt[1]_i_1__0_n_0 ;
  wire \cnt[2]_i_1__0_n_0 ;
  wire \cnt[3]_i_1__0_n_0 ;
  wire \cnt[3]_i_2_n_0 ;
  wire \cnt[4]_i_1__0_n_0 ;
  wire \cnt[4]_i_2_n_0 ;
  wire \cnt_reg[3]_0 ;
  wire [3:0]cnt_shift;
  wire \cnt_shift[0]_i_1__0_n_0 ;
  wire \cnt_shift[1]_i_1__0_n_0 ;
  wire \cnt_shift[2]_i_1__0_n_0 ;
  wire \cnt_shift[3]_i_1__0_n_0 ;
  wire \cnt_shift_reg[2]_0 ;
  wire [3:0]dina;
  wire \mem_fsm[1]_i_1__0_n_0 ;
  wire \mem_fsm_reg[1]_0 ;
  wire [63:4]next_buf_data__0;
  wire [63:4]single_port_ram_di;
  wire [63:0]single_port_ram_dout;
  wire single_port_ram_en;
  wire systolicControlUnit_serial2mem_opb_rw;
  wire systolicControlUnit_serial2mem_opb_valid_i;
  wire systolicControlUnit_syst_rready_i;
  wire [0:0]wea;
  wire NLW_mem_rsta_busy_UNCONNECTED;
  wire [127:64]NLW_mem_douta_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h77F7)) 
    \FSM_onehot_fsm_unit_control_next_reg[2]_i_2 
       (.I0(\FSM_onehot_fsm_unit_control_next_reg[1]_i_1 ),
        .I1(Q[1]),
        .I2(\cnt_reg[3]_0 ),
        .I3(Q[0]),
        .O(\mem_fsm_reg[1]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\buf_data_reg[3]_0 [0]),
        .Q(next_buf_data__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[10] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[10]),
        .Q(next_buf_data__0[14]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[11] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[11]),
        .Q(next_buf_data__0[15]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[12] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[12]),
        .Q(next_buf_data__0[16]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[13] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[13]),
        .Q(next_buf_data__0[17]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[14] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[14]),
        .Q(next_buf_data__0[18]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[15] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[15]),
        .Q(next_buf_data__0[19]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[16] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[16]),
        .Q(next_buf_data__0[20]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[17] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[17]),
        .Q(next_buf_data__0[21]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[18] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[18]),
        .Q(next_buf_data__0[22]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[19] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[19]),
        .Q(next_buf_data__0[23]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\buf_data_reg[3]_0 [1]),
        .Q(next_buf_data__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[20] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[20]),
        .Q(next_buf_data__0[24]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[21] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[21]),
        .Q(next_buf_data__0[25]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[22] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[22]),
        .Q(next_buf_data__0[26]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[23] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[23]),
        .Q(next_buf_data__0[27]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[24] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[24]),
        .Q(next_buf_data__0[28]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[25] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[25]),
        .Q(next_buf_data__0[29]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[26] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[26]),
        .Q(next_buf_data__0[30]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[27] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[27]),
        .Q(next_buf_data__0[31]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[28] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[28]),
        .Q(next_buf_data__0[32]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[29] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[29]),
        .Q(next_buf_data__0[33]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\buf_data_reg[3]_0 [2]),
        .Q(next_buf_data__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[30] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[30]),
        .Q(next_buf_data__0[34]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[31] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[31]),
        .Q(next_buf_data__0[35]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[32] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[32]),
        .Q(next_buf_data__0[36]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[33] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[33]),
        .Q(next_buf_data__0[37]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[34] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[34]),
        .Q(next_buf_data__0[38]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[35] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[35]),
        .Q(next_buf_data__0[39]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[36] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[36]),
        .Q(next_buf_data__0[40]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[37] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[37]),
        .Q(next_buf_data__0[41]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[38] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[38]),
        .Q(next_buf_data__0[42]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[39] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[39]),
        .Q(next_buf_data__0[43]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\buf_data_reg[3]_0 [3]),
        .Q(next_buf_data__0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[40] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[40]),
        .Q(next_buf_data__0[44]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[41] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[41]),
        .Q(next_buf_data__0[45]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[42] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[42]),
        .Q(next_buf_data__0[46]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[43] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[43]),
        .Q(next_buf_data__0[47]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[44] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[44]),
        .Q(next_buf_data__0[48]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[45] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[45]),
        .Q(next_buf_data__0[49]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[46] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[46]),
        .Q(next_buf_data__0[50]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[47] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[47]),
        .Q(next_buf_data__0[51]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[48] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[48]),
        .Q(next_buf_data__0[52]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[49] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[49]),
        .Q(next_buf_data__0[53]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[4] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[4]),
        .Q(next_buf_data__0[8]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[50] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[50]),
        .Q(next_buf_data__0[54]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[51] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[51]),
        .Q(next_buf_data__0[55]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[52] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[52]),
        .Q(next_buf_data__0[56]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[53] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[53]),
        .Q(next_buf_data__0[57]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[54] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[54]),
        .Q(next_buf_data__0[58]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[55] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[55]),
        .Q(next_buf_data__0[59]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[56] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[56]),
        .Q(next_buf_data__0[60]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[57] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[57]),
        .Q(next_buf_data__0[61]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[58] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[58]),
        .Q(next_buf_data__0[62]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[59] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[59]),
        .Q(next_buf_data__0[63]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[5] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[5]),
        .Q(next_buf_data__0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[6] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[6]),
        .Q(next_buf_data__0[10]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[7] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[7]),
        .Q(next_buf_data__0[11]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[8] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[8]),
        .Q(next_buf_data__0[12]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[9] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data__0[9]),
        .Q(next_buf_data__0[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0590)) 
    \cnt[0]_i_1__0 
       (.I0(cnt[0]),
        .I1(\cnt_shift_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\cnt[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h083C3400)) 
    \cnt[1]_i_1__0 
       (.I0(\cnt_shift_reg[2]_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(cnt[0]),
        .I4(cnt[1]),
        .O(\cnt[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h083C3C3C34000000)) 
    \cnt[2]_i_1__0 
       (.I0(\cnt_shift_reg[2]_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(cnt[1]),
        .I4(cnt[0]),
        .I5(cnt[2]),
        .O(\cnt[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h3C080034)) 
    \cnt[3]_i_1__0 
       (.I0(\cnt_shift_reg[2]_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\cnt[3]_i_2_n_0 ),
        .I4(cnt[3]),
        .O(\cnt[3]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \cnt[3]_i_2 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .O(\cnt[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3C080034)) 
    \cnt[4]_i_1__0 
       (.I0(\cnt_shift_reg[2]_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\cnt[4]_i_2_n_0 ),
        .I4(cnt[4]),
        .O(\cnt[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt[4]_i_2 
       (.I0(cnt[2]),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .I3(cnt[3]),
        .O(\cnt[4]_i_2_n_0 ));
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
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\cnt[4]_i_1__0_n_0 ),
        .Q(cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \cnt_shift[0]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(cnt_shift[0]),
        .O(\cnt_shift[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \cnt_shift[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(cnt_shift[0]),
        .I3(cnt_shift[1]),
        .O(\cnt_shift[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \cnt_shift[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(\cnt_shift[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h007F000000800000)) 
    \cnt_shift[3]_i_1__0 
       (.I0(cnt_shift[1]),
        .I1(cnt_shift[0]),
        .I2(cnt_shift[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(cnt_shift[3]),
        .O(\cnt_shift[3]_i_1__0_n_0 ));
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
  FDCE #(
    .INIT(1'b0)) 
    \cnt_shift_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\cnt_shift[3]_i_1__0_n_0 ),
        .Q(cnt_shift[3]));
  (* CHECK_LICENSE_TYPE = "ram,blk_mem_gen_v8_4_11,{}" *) 
  (* IMPORTED_FROM = "/home/xmen/Desktop/compara/analise/SystolicMatrixMultiplication/project_1/project_1.gen/sources_1/ip/ram/ram.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
  ram mem
       (.addra({1'b0,cnt}),
        .clka(clka),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,single_port_ram_di,dina}),
        .douta({NLW_mem_douta_UNCONNECTED[127:64],single_port_ram_dout}),
        .ena(single_port_ram_en),
        .rsta(btn_IBUF),
        .rsta_busy(NLW_mem_rsta_busy_UNCONNECTED),
        .wea(wea));
  LUT1 #(
    .INIT(2'h1)) 
    \mem_fsm[1]_i_1 
       (.I0(btn_IBUF),
        .O(E));
  LUT6 #(
    .INIT(64'h1FDF1CDC1CDC1CDC)) 
    \mem_fsm[1]_i_1__0 
       (.I0(\cnt_reg[3]_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(systolicControlUnit_syst_rready_i),
        .I4(systolicControlUnit_serial2mem_opb_valid_i),
        .I5(systolicControlUnit_serial2mem_opb_rw),
        .O(\mem_fsm[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \mem_fsm[1]_i_2 
       (.I0(cnt[3]),
        .I1(cnt[1]),
        .I2(cnt[0]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .O(\cnt_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_fsm_reg[0] 
       (.C(clka),
        .CE(E),
        .D(D),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_fsm_reg[1] 
       (.C(clka),
        .CE(E),
        .D(\mem_fsm[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_10__0
       (.I0(next_buf_data__0[55]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[55]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_11__0
       (.I0(next_buf_data__0[54]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[54]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_12__0
       (.I0(next_buf_data__0[53]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[53]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_13__0
       (.I0(next_buf_data__0[52]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[52]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_14__0
       (.I0(next_buf_data__0[51]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[51]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_15__0
       (.I0(next_buf_data__0[50]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[50]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_16__0
       (.I0(next_buf_data__0[49]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[49]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_17__0
       (.I0(next_buf_data__0[48]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[48]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_18__0
       (.I0(next_buf_data__0[47]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[47]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_19__0
       (.I0(next_buf_data__0[46]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[46]));
  LUT6 #(
    .INIT(64'hF444444444444444)) 
    mem_i_1__0
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(cnt_shift[3]),
        .I3(cnt_shift[1]),
        .I4(cnt_shift[0]),
        .I5(cnt_shift[2]),
        .O(single_port_ram_en));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_20__0
       (.I0(next_buf_data__0[45]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[45]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_21__0
       (.I0(next_buf_data__0[44]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[44]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_22__0
       (.I0(next_buf_data__0[43]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[43]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_23__0
       (.I0(next_buf_data__0[42]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[42]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_24__0
       (.I0(next_buf_data__0[41]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[41]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_25__0
       (.I0(next_buf_data__0[40]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[40]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_26__0
       (.I0(next_buf_data__0[39]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[39]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_27__0
       (.I0(next_buf_data__0[38]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[38]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_28__0
       (.I0(next_buf_data__0[37]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[37]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_29__0
       (.I0(next_buf_data__0[36]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[36]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_2__0
       (.I0(next_buf_data__0[63]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[63]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_30__0
       (.I0(next_buf_data__0[35]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[35]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_31__0
       (.I0(next_buf_data__0[34]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[34]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_32__0
       (.I0(next_buf_data__0[33]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[33]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_33__0
       (.I0(next_buf_data__0[32]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[32]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_34__0
       (.I0(next_buf_data__0[31]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[31]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_35__0
       (.I0(next_buf_data__0[30]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[30]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_36__0
       (.I0(next_buf_data__0[29]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[29]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_37__0
       (.I0(next_buf_data__0[28]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[28]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_38__0
       (.I0(next_buf_data__0[27]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[27]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_39__0
       (.I0(next_buf_data__0[26]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[26]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_3__0
       (.I0(next_buf_data__0[62]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[62]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_40__0
       (.I0(next_buf_data__0[25]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[25]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_41__0
       (.I0(next_buf_data__0[24]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[24]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_42__0
       (.I0(next_buf_data__0[23]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[23]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_43__0
       (.I0(next_buf_data__0[22]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[22]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_44__0
       (.I0(next_buf_data__0[21]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[21]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_45__0
       (.I0(next_buf_data__0[20]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[20]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_46__0
       (.I0(next_buf_data__0[19]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[19]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_47__0
       (.I0(next_buf_data__0[18]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[18]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_48__0
       (.I0(next_buf_data__0[17]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[17]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_49__0
       (.I0(next_buf_data__0[16]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[16]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_4__0
       (.I0(next_buf_data__0[61]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[61]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_50__0
       (.I0(next_buf_data__0[15]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[15]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_51__0
       (.I0(next_buf_data__0[14]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[14]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_52__0
       (.I0(next_buf_data__0[13]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[13]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_53__0
       (.I0(next_buf_data__0[12]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[12]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_54__0
       (.I0(next_buf_data__0[11]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[11]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_55__0
       (.I0(next_buf_data__0[10]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[10]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_56__0
       (.I0(next_buf_data__0[9]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[9]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_57__0
       (.I0(next_buf_data__0[8]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[8]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_58__0
       (.I0(next_buf_data__0[7]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[7]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_59__0
       (.I0(next_buf_data__0[6]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[6]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_5__0
       (.I0(next_buf_data__0[60]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[60]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_60__0
       (.I0(next_buf_data__0[5]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_61__0
       (.I0(next_buf_data__0[4]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    mem_i_66__0
       (.I0(cnt_shift[2]),
        .I1(cnt_shift[0]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[3]),
        .O(\cnt_shift_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_6__0
       (.I0(next_buf_data__0[59]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[59]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_7__0
       (.I0(next_buf_data__0[58]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[58]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_8__0
       (.I0(next_buf_data__0[57]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[57]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_9__0
       (.I0(next_buf_data__0[56]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[56]));
endmodule

(* ORIG_REF_NAME = "serial2mem" *) 
module serial2mem__xdcDup__1
   (Q,
    \cnt_shift_reg[2]_0 ,
    \mem_fsm_reg[1]_0 ,
    \cnt_reg[3]_0 ,
    \cnt_reg[3]_1 ,
    clka,
    btn_IBUF,
    wea,
    dina,
    serial2mem_opb_valid_i_reg,
    systolicControlUnit_syst_rready_i,
    systolicControlUnit_serial2mem_opa_valid_i,
    systolicControlUnit_serial2mem_opb_rw,
    E,
    D,
    \buf_data_reg[3]_0 );
  output [1:0]Q;
  output \cnt_shift_reg[2]_0 ;
  output \mem_fsm_reg[1]_0 ;
  output \cnt_reg[3]_0 ;
  output \cnt_reg[3]_1 ;
  input clka;
  input [0:0]btn_IBUF;
  input [0:0]wea;
  input [3:0]dina;
  input [1:0]serial2mem_opb_valid_i_reg;
  input systolicControlUnit_syst_rready_i;
  input systolicControlUnit_serial2mem_opa_valid_i;
  input systolicControlUnit_serial2mem_opb_rw;
  input [0:0]E;
  input [0:0]D;
  input [3:0]\buf_data_reg[3]_0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]btn_IBUF;
  wire [3:0]\buf_data_reg[3]_0 ;
  wire clka;
  wire [4:0]cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire \cnt[3]_i_2__0_n_0 ;
  wire \cnt[4]_i_1_n_0 ;
  wire \cnt[4]_i_2__0_n_0 ;
  wire \cnt_reg[3]_0 ;
  wire \cnt_reg[3]_1 ;
  wire [3:0]cnt_shift;
  wire \cnt_shift[0]_i_1_n_0 ;
  wire \cnt_shift[1]_i_1_n_0 ;
  wire \cnt_shift[2]_i_1_n_0 ;
  wire \cnt_shift[3]_i_1_n_0 ;
  wire \cnt_shift_reg[2]_0 ;
  wire [3:0]dina;
  wire \mem_fsm[1]_i_2__0_n_0 ;
  wire \mem_fsm_reg[1]_0 ;
  wire [63:4]next_buf_data;
  wire [1:0]serial2mem_opb_valid_i_reg;
  wire [63:4]single_port_ram_di;
  wire [63:0]single_port_ram_dout;
  wire single_port_ram_en;
  wire systolicControlUnit_serial2mem_opa_valid_i;
  wire systolicControlUnit_serial2mem_opb_rw;
  wire systolicControlUnit_syst_rready_i;
  wire [0:0]wea;
  wire NLW_mem_rsta_busy_UNCONNECTED;
  wire [127:64]NLW_mem_douta_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \FSM_onehot_fsm_unit_control_next_reg[2]_i_3 
       (.I0(cnt[3]),
        .I1(cnt[4]),
        .I2(cnt[2]),
        .I3(cnt[1]),
        .I4(cnt[0]),
        .I5(Q[0]),
        .O(\cnt_reg[3]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\buf_data_reg[3]_0 [0]),
        .Q(next_buf_data[4]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[10] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[10]),
        .Q(next_buf_data[14]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[11] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[11]),
        .Q(next_buf_data[15]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[12] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[12]),
        .Q(next_buf_data[16]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[13] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[13]),
        .Q(next_buf_data[17]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[14] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[14]),
        .Q(next_buf_data[18]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[15] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[15]),
        .Q(next_buf_data[19]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[16] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[16]),
        .Q(next_buf_data[20]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[17] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[17]),
        .Q(next_buf_data[21]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[18] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[18]),
        .Q(next_buf_data[22]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[19] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[19]),
        .Q(next_buf_data[23]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\buf_data_reg[3]_0 [1]),
        .Q(next_buf_data[5]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[20] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[20]),
        .Q(next_buf_data[24]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[21] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[21]),
        .Q(next_buf_data[25]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[22] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[22]),
        .Q(next_buf_data[26]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[23] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[23]),
        .Q(next_buf_data[27]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[24] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[24]),
        .Q(next_buf_data[28]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[25] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[25]),
        .Q(next_buf_data[29]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[26] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[26]),
        .Q(next_buf_data[30]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[27] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[27]),
        .Q(next_buf_data[31]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[28] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[28]),
        .Q(next_buf_data[32]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[29] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[29]),
        .Q(next_buf_data[33]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\buf_data_reg[3]_0 [2]),
        .Q(next_buf_data[6]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[30] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[30]),
        .Q(next_buf_data[34]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[31] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[31]),
        .Q(next_buf_data[35]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[32] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[32]),
        .Q(next_buf_data[36]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[33] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[33]),
        .Q(next_buf_data[37]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[34] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[34]),
        .Q(next_buf_data[38]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[35] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[35]),
        .Q(next_buf_data[39]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[36] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[36]),
        .Q(next_buf_data[40]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[37] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[37]),
        .Q(next_buf_data[41]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[38] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[38]),
        .Q(next_buf_data[42]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[39] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[39]),
        .Q(next_buf_data[43]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\buf_data_reg[3]_0 [3]),
        .Q(next_buf_data[7]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[40] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[40]),
        .Q(next_buf_data[44]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[41] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[41]),
        .Q(next_buf_data[45]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[42] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[42]),
        .Q(next_buf_data[46]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[43] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[43]),
        .Q(next_buf_data[47]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[44] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[44]),
        .Q(next_buf_data[48]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[45] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[45]),
        .Q(next_buf_data[49]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[46] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[46]),
        .Q(next_buf_data[50]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[47] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[47]),
        .Q(next_buf_data[51]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[48] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[48]),
        .Q(next_buf_data[52]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[49] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[49]),
        .Q(next_buf_data[53]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[4] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[4]),
        .Q(next_buf_data[8]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[50] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[50]),
        .Q(next_buf_data[54]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[51] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[51]),
        .Q(next_buf_data[55]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[52] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[52]),
        .Q(next_buf_data[56]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[53] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[53]),
        .Q(next_buf_data[57]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[54] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[54]),
        .Q(next_buf_data[58]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[55] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[55]),
        .Q(next_buf_data[59]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[56] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[56]),
        .Q(next_buf_data[60]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[57] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[57]),
        .Q(next_buf_data[61]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[58] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[58]),
        .Q(next_buf_data[62]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[59] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[59]),
        .Q(next_buf_data[63]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[5] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[5]),
        .Q(next_buf_data[9]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[6] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[6]),
        .Q(next_buf_data[10]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[7] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[7]),
        .Q(next_buf_data[11]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[8] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[8]),
        .Q(next_buf_data[12]));
  FDCE #(
    .INIT(1'b0)) 
    \buf_data_reg[9] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_buf_data[9]),
        .Q(next_buf_data[13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0590)) 
    \cnt[0]_i_1 
       (.I0(cnt[0]),
        .I1(\cnt_shift_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h083C3400)) 
    \cnt[1]_i_1 
       (.I0(\cnt_shift_reg[2]_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(cnt[0]),
        .I4(cnt[1]),
        .O(\cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h083C3C3C34000000)) 
    \cnt[2]_i_1 
       (.I0(\cnt_shift_reg[2]_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(cnt[1]),
        .I4(cnt[0]),
        .I5(cnt[2]),
        .O(\cnt[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3C080034)) 
    \cnt[3]_i_1 
       (.I0(\cnt_shift_reg[2]_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\cnt[3]_i_2__0_n_0 ),
        .I4(cnt[3]),
        .O(\cnt[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \cnt[3]_i_2__0 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .O(\cnt[3]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h3C080034)) 
    \cnt[4]_i_1 
       (.I0(\cnt_shift_reg[2]_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\cnt[4]_i_2__0_n_0 ),
        .I4(cnt[4]),
        .O(\cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt[4]_i_2__0 
       (.I0(cnt[2]),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .I3(cnt[3]),
        .O(\cnt[4]_i_2__0_n_0 ));
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
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\cnt[4]_i_1_n_0 ),
        .Q(cnt[4]));
  LUT3 #(
    .INIT(8'h04)) 
    \cnt_shift[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(cnt_shift[0]),
        .O(\cnt_shift[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \cnt_shift[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(cnt_shift[0]),
        .I3(cnt_shift[1]),
        .O(\cnt_shift[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \cnt_shift[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(\cnt_shift[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h007F000000800000)) 
    \cnt_shift[3]_i_1 
       (.I0(cnt_shift[1]),
        .I1(cnt_shift[0]),
        .I2(cnt_shift[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(cnt_shift[3]),
        .O(\cnt_shift[3]_i_1_n_0 ));
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
  FDCE #(
    .INIT(1'b0)) 
    \cnt_shift_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(\cnt_shift[3]_i_1_n_0 ),
        .Q(cnt_shift[3]));
  (* CHECK_LICENSE_TYPE = "ram,blk_mem_gen_v8_4_11,{}" *) 
  (* IMPORTED_FROM = "/home/xmen/Desktop/compara/analise/SystolicMatrixMultiplication/project_1/project_1.gen/sources_1/ip/ram/ram.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
  ram_HD1882 mem
       (.addra({1'b0,cnt}),
        .clka(clka),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,single_port_ram_di,dina}),
        .douta({NLW_mem_douta_UNCONNECTED[127:64],single_port_ram_dout}),
        .ena(single_port_ram_en),
        .rsta(btn_IBUF),
        .rsta_busy(NLW_mem_rsta_busy_UNCONNECTED),
        .wea(wea));
  LUT6 #(
    .INIT(64'h1FDF1CDC1CDC1CDC)) 
    \mem_fsm[1]_i_2__0 
       (.I0(\cnt_reg[3]_1 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(systolicControlUnit_syst_rready_i),
        .I4(systolicControlUnit_serial2mem_opa_valid_i),
        .I5(systolicControlUnit_serial2mem_opb_rw),
        .O(\mem_fsm[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \mem_fsm[1]_i_3 
       (.I0(cnt[3]),
        .I1(cnt[1]),
        .I2(cnt[0]),
        .I3(cnt[2]),
        .I4(cnt[4]),
        .O(\cnt_reg[3]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_fsm_reg[0] 
       (.C(clka),
        .CE(E),
        .D(D),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_fsm_reg[1] 
       (.C(clka),
        .CE(E),
        .D(\mem_fsm[1]_i_2__0_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF444444444444444)) 
    mem_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(cnt_shift[3]),
        .I3(cnt_shift[1]),
        .I4(cnt_shift[0]),
        .I5(cnt_shift[2]),
        .O(single_port_ram_en));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_10
       (.I0(next_buf_data[56]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[56]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_11
       (.I0(next_buf_data[55]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[55]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_12
       (.I0(next_buf_data[54]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[54]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_13
       (.I0(next_buf_data[53]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[53]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_14
       (.I0(next_buf_data[52]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[52]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_15
       (.I0(next_buf_data[51]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[51]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_16
       (.I0(next_buf_data[50]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[50]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_17
       (.I0(next_buf_data[49]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[49]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_18
       (.I0(next_buf_data[48]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[48]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_19
       (.I0(next_buf_data[47]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[47]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_20
       (.I0(next_buf_data[46]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[46]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_21
       (.I0(next_buf_data[45]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[45]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_22
       (.I0(next_buf_data[44]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[44]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_23
       (.I0(next_buf_data[43]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[43]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_24
       (.I0(next_buf_data[42]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[42]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_25
       (.I0(next_buf_data[41]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[41]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_26
       (.I0(next_buf_data[40]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[40]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_27
       (.I0(next_buf_data[39]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[39]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_28
       (.I0(next_buf_data[38]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[38]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_29
       (.I0(next_buf_data[37]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[37]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_3
       (.I0(next_buf_data[63]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[63]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_30
       (.I0(next_buf_data[36]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[36]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_31
       (.I0(next_buf_data[35]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[35]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_32
       (.I0(next_buf_data[34]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[34]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_33
       (.I0(next_buf_data[33]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[33]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_34
       (.I0(next_buf_data[32]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[32]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_35
       (.I0(next_buf_data[31]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[31]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_36
       (.I0(next_buf_data[30]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[30]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_37
       (.I0(next_buf_data[29]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[29]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_38
       (.I0(next_buf_data[28]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[28]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_39
       (.I0(next_buf_data[27]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[27]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_4
       (.I0(next_buf_data[62]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[62]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_40
       (.I0(next_buf_data[26]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[26]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_41
       (.I0(next_buf_data[25]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[25]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_42
       (.I0(next_buf_data[24]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[24]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_43
       (.I0(next_buf_data[23]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[23]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_44
       (.I0(next_buf_data[22]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[22]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_45
       (.I0(next_buf_data[21]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[21]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_46
       (.I0(next_buf_data[20]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[20]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_47
       (.I0(next_buf_data[19]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[19]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_48
       (.I0(next_buf_data[18]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[18]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_49
       (.I0(next_buf_data[17]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[17]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_5
       (.I0(next_buf_data[61]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[61]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_50
       (.I0(next_buf_data[16]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[16]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_51
       (.I0(next_buf_data[15]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[15]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_52
       (.I0(next_buf_data[14]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[14]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_53
       (.I0(next_buf_data[13]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[13]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_54
       (.I0(next_buf_data[12]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[12]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_55
       (.I0(next_buf_data[11]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[11]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_56
       (.I0(next_buf_data[10]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[10]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_57
       (.I0(next_buf_data[9]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[9]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_58
       (.I0(next_buf_data[8]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[8]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_59
       (.I0(next_buf_data[7]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[7]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_6
       (.I0(next_buf_data[60]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[60]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_60
       (.I0(next_buf_data[6]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[6]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_61
       (.I0(next_buf_data[5]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_62
       (.I0(next_buf_data[4]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    mem_i_67
       (.I0(cnt_shift[2]),
        .I1(cnt_shift[0]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[3]),
        .O(\cnt_shift_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_7
       (.I0(next_buf_data[59]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[59]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_8
       (.I0(next_buf_data[58]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[58]));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_i_9
       (.I0(next_buf_data[57]),
        .I1(cnt_shift[3]),
        .I2(cnt_shift[1]),
        .I3(cnt_shift[0]),
        .I4(cnt_shift[2]),
        .O(single_port_ram_di[57]));
  LUT4 #(
    .INIT(16'hFF80)) 
    serial2mem_opb_valid_i_reg_i_1
       (.I0(\cnt_reg[3]_0 ),
        .I1(Q[1]),
        .I2(serial2mem_opb_valid_i_reg[0]),
        .I3(serial2mem_opb_valid_i_reg[1]),
        .O(\mem_fsm_reg[1]_0 ));
endmodule

module systolicControlUnitTop
   (systolicControlUnit_serial2mem_opa_valid_i,
    systolicControlUnit_serial2mem_opb_valid_i,
    systolicControlUnit_serial2mem_opb_rw,
    systolicControlUnit_syst_rready_i,
    Q,
    systolicControlUnit_uart_valid_tx_in,
    wea,
    serial2mem_opb_clock,
    dina,
    \data_rx_out_reg[3] ,
    D,
    \mem_fsm_reg[1] ,
    \data_rx_out_reg[3]_0 ,
    \data_rx_out_reg[3]_1 ,
    \mem_fsm_reg[0] ,
    \FSM_onehot_fsm_unit_control_reg[3]_0 ,
    systolicControlUnit_mem2serial_rvalid_o,
    \FSM_onehot_fsm_unit_control_reg[2]_0 ,
    \FSM_onehot_fsm_unit_control_reg[2]_1 ,
    clock_IBUF,
    E,
    mem,
    \buf_data_reg[3] ,
    mem_0,
    \mem_fsm_reg[0]_0 ,
    \mem_fsm_reg[0]_1 ,
    \mem_fsm_reg[0]_2 ,
    \mem_fsm_reg[0]_3 ,
    CLK,
    btn_IBUF);
  output systolicControlUnit_serial2mem_opa_valid_i;
  output systolicControlUnit_serial2mem_opb_valid_i;
  output systolicControlUnit_serial2mem_opb_rw;
  output systolicControlUnit_syst_rready_i;
  output [1:0]Q;
  output systolicControlUnit_uart_valid_tx_in;
  output [0:0]wea;
  output serial2mem_opb_clock;
  output [3:0]dina;
  output [3:0]\data_rx_out_reg[3] ;
  output [0:0]D;
  output [0:0]\mem_fsm_reg[1] ;
  output [3:0]\data_rx_out_reg[3]_0 ;
  output [3:0]\data_rx_out_reg[3]_1 ;
  input \mem_fsm_reg[0] ;
  input [1:0]\FSM_onehot_fsm_unit_control_reg[3]_0 ;
  input systolicControlUnit_mem2serial_rvalid_o;
  input \FSM_onehot_fsm_unit_control_reg[2]_0 ;
  input \FSM_onehot_fsm_unit_control_reg[2]_1 ;
  input clock_IBUF;
  input [0:0]E;
  input mem;
  input [3:0]\buf_data_reg[3] ;
  input mem_0;
  input \mem_fsm_reg[0]_0 ;
  input [1:0]\mem_fsm_reg[0]_1 ;
  input [1:0]\mem_fsm_reg[0]_2 ;
  input \mem_fsm_reg[0]_3 ;
  input CLK;
  input [0:0]btn_IBUF;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_fsm_unit_control_reg[2]_0 ;
  wire \FSM_onehot_fsm_unit_control_reg[2]_1 ;
  wire [1:0]\FSM_onehot_fsm_unit_control_reg[3]_0 ;
  wire \FSM_onehot_fsm_unit_control_reg_n_0_[3] ;
  wire [1:0]Q;
  wire [0:0]btn_IBUF;
  wire [3:0]\buf_data_reg[3] ;
  wire clock_IBUF;
  wire [3:0]\data_rx_out_reg[3] ;
  wire [3:0]\data_rx_out_reg[3]_0 ;
  wire [3:0]\data_rx_out_reg[3]_1 ;
  wire [3:0]dina;
  wire [0:0]fsm_unit_control;
  wire [3:0]fsm_unit_control_next;
  wire [3:1]fsm_unit_control_next__0;
  wire mem;
  wire mem_0;
  wire \mem_fsm_reg[0] ;
  wire \mem_fsm_reg[0]_0 ;
  wire [1:0]\mem_fsm_reg[0]_1 ;
  wire [1:0]\mem_fsm_reg[0]_2 ;
  wire \mem_fsm_reg[0]_3 ;
  wire [0:0]\mem_fsm_reg[1] ;
  wire serial2mem_opa_rw_reg_i_1_n_0;
  wire serial2mem_opa_valid_i_reg_i_1_n_0;
  wire serial2mem_opa_valid_i_reg_i_2_n_0;
  wire serial2mem_opb_clock;
  wire systolicControlUnit_mem2serial_rvalid_o;
  wire systolicControlUnit_serial2mem_opa_valid_i;
  wire systolicControlUnit_serial2mem_opb_rw;
  wire systolicControlUnit_serial2mem_opb_valid_i;
  wire systolicControlUnit_syst_rready_i;
  wire systolicControlUnit_uart_valid_tx_in;
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
        .D(fsm_unit_control_next__0[1]),
        .G(serial2mem_opa_valid_i_reg_i_2_n_0),
        .GE(1'b1),
        .Q(fsm_unit_control_next[1]));
  LUT5 #(
    .INIT(32'hFFAABAAA)) 
    \FSM_onehot_fsm_unit_control_next_reg[1]_i_1 
       (.I0(fsm_unit_control),
        .I1(\mem_fsm_reg[0]_2 [0]),
        .I2(\mem_fsm_reg[0]_3 ),
        .I3(Q[0]),
        .I4(\FSM_onehot_fsm_unit_control_reg[2]_0 ),
        .O(fsm_unit_control_next__0[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_unit_control_next_reg[2] 
       (.CLR(1'b0),
        .D(fsm_unit_control_next__0[2]),
        .G(serial2mem_opa_valid_i_reg_i_2_n_0),
        .GE(1'b1),
        .Q(fsm_unit_control_next[2]));
  LUT6 #(
    .INIT(64'h40FFFFFF40404040)) 
    \FSM_onehot_fsm_unit_control_next_reg[2]_i_1 
       (.I0(\FSM_onehot_fsm_unit_control_reg[2]_0 ),
        .I1(\FSM_onehot_fsm_unit_control_reg[2]_1 ),
        .I2(Q[0]),
        .I3(\FSM_onehot_fsm_unit_control_reg[3]_0 [0]),
        .I4(\FSM_onehot_fsm_unit_control_reg[3]_0 [1]),
        .I5(Q[1]),
        .O(fsm_unit_control_next__0[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_unit_control_next_reg[3] 
       (.CLR(1'b0),
        .D(fsm_unit_control_next__0[3]),
        .G(serial2mem_opa_valid_i_reg_i_2_n_0),
        .GE(1'b1),
        .Q(fsm_unit_control_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h80FF8080)) 
    \FSM_onehot_fsm_unit_control_next_reg[3]_i_1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_fsm_unit_control_reg[3]_0 [0]),
        .I2(\FSM_onehot_fsm_unit_control_reg[3]_0 [1]),
        .I3(systolicControlUnit_mem2serial_rvalid_o),
        .I4(\FSM_onehot_fsm_unit_control_reg_n_0_[3] ),
        .O(fsm_unit_control_next__0[3]));
  (* FSM_ENCODED_STATES = "IDLE:00001,WRITE_MEM:00010,SYSTOLIC_READ_MEM:00100,WRITE_MEM_OUT:01000,DONE:10000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_fsm_unit_control_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(fsm_unit_control_next[0]),
        .PRE(btn_IBUF),
        .Q(fsm_unit_control));
  (* FSM_ENCODED_STATES = "IDLE:00001,WRITE_MEM:00010,SYSTOLIC_READ_MEM:00100,WRITE_MEM_OUT:01000,DONE:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_unit_control_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(fsm_unit_control_next[1]),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "IDLE:00001,WRITE_MEM:00010,SYSTOLIC_READ_MEM:00100,WRITE_MEM_OUT:01000,DONE:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_unit_control_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(fsm_unit_control_next[2]),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "IDLE:00001,WRITE_MEM:00010,SYSTOLIC_READ_MEM:00100,WRITE_MEM_OUT:01000,DONE:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_unit_control_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(fsm_unit_control_next[3]),
        .Q(\FSM_onehot_fsm_unit_control_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \buf_data[0]_i_1 
       (.I0(systolicControlUnit_serial2mem_opb_rw),
        .I1(systolicControlUnit_serial2mem_opa_valid_i),
        .I2(\buf_data_reg[3] [0]),
        .O(\data_rx_out_reg[3]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \buf_data[0]_i_1__0 
       (.I0(systolicControlUnit_serial2mem_opb_rw),
        .I1(systolicControlUnit_serial2mem_opb_valid_i),
        .I2(\buf_data_reg[3] [0]),
        .O(\data_rx_out_reg[3]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \buf_data[1]_i_1 
       (.I0(systolicControlUnit_serial2mem_opb_rw),
        .I1(systolicControlUnit_serial2mem_opa_valid_i),
        .I2(\buf_data_reg[3] [1]),
        .O(\data_rx_out_reg[3]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \buf_data[1]_i_1__0 
       (.I0(systolicControlUnit_serial2mem_opb_rw),
        .I1(systolicControlUnit_serial2mem_opb_valid_i),
        .I2(\buf_data_reg[3] [1]),
        .O(\data_rx_out_reg[3]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \buf_data[2]_i_1 
       (.I0(systolicControlUnit_serial2mem_opb_rw),
        .I1(systolicControlUnit_serial2mem_opa_valid_i),
        .I2(\buf_data_reg[3] [2]),
        .O(\data_rx_out_reg[3]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \buf_data[2]_i_1__0 
       (.I0(systolicControlUnit_serial2mem_opb_rw),
        .I1(systolicControlUnit_serial2mem_opb_valid_i),
        .I2(\buf_data_reg[3] [2]),
        .O(\data_rx_out_reg[3]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \buf_data[3]_i_1 
       (.I0(systolicControlUnit_serial2mem_opb_rw),
        .I1(systolicControlUnit_serial2mem_opa_valid_i),
        .I2(\buf_data_reg[3] [3]),
        .O(\data_rx_out_reg[3]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \buf_data[3]_i_1__0 
       (.I0(systolicControlUnit_serial2mem_opb_rw),
        .I1(systolicControlUnit_serial2mem_opb_valid_i),
        .I2(\buf_data_reg[3] [3]),
        .O(\data_rx_out_reg[3]_1 [3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    mem2serial_valid_i_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_fsm_unit_control_reg_n_0_[3] ),
        .G(serial2mem_opa_valid_i_reg_i_2_n_0),
        .GE(1'b1),
        .Q(systolicControlUnit_uart_valid_tx_in));
  LUT6 #(
    .INIT(64'h0F0FFFFF00FF4444)) 
    \mem_fsm[0]_i_1 
       (.I0(systolicControlUnit_serial2mem_opb_rw),
        .I1(systolicControlUnit_serial2mem_opb_valid_i),
        .I2(systolicControlUnit_syst_rready_i),
        .I3(\mem_fsm_reg[0]_0 ),
        .I4(\mem_fsm_reg[0]_1 [1]),
        .I5(\mem_fsm_reg[0]_1 [0]),
        .O(D));
  LUT6 #(
    .INIT(64'h0F0FFFFF00FF4444)) 
    \mem_fsm[0]_i_1__0 
       (.I0(systolicControlUnit_serial2mem_opb_rw),
        .I1(systolicControlUnit_serial2mem_opa_valid_i),
        .I2(systolicControlUnit_syst_rready_i),
        .I3(\mem_fsm_reg[0]_3 ),
        .I4(\mem_fsm_reg[0]_2 [1]),
        .I5(\mem_fsm_reg[0]_2 [0]),
        .O(\mem_fsm_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT1 #(
    .INIT(2'h1)) 
    mem_i_2
       (.I0(systolicControlUnit_serial2mem_opb_rw),
        .O(wea));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    mem_i_62__0
       (.I0(mem_0),
        .I1(systolicControlUnit_serial2mem_opb_valid_i),
        .I2(systolicControlUnit_serial2mem_opb_rw),
        .I3(\buf_data_reg[3] [3]),
        .O(\data_rx_out_reg[3] [3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    mem_i_63
       (.I0(mem),
        .I1(systolicControlUnit_serial2mem_opa_valid_i),
        .I2(systolicControlUnit_serial2mem_opb_rw),
        .I3(\buf_data_reg[3] [3]),
        .O(dina[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    mem_i_63__0
       (.I0(mem_0),
        .I1(systolicControlUnit_serial2mem_opb_valid_i),
        .I2(systolicControlUnit_serial2mem_opb_rw),
        .I3(\buf_data_reg[3] [2]),
        .O(\data_rx_out_reg[3] [2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    mem_i_64
       (.I0(mem),
        .I1(systolicControlUnit_serial2mem_opa_valid_i),
        .I2(systolicControlUnit_serial2mem_opb_rw),
        .I3(\buf_data_reg[3] [2]),
        .O(dina[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    mem_i_64__0
       (.I0(mem_0),
        .I1(systolicControlUnit_serial2mem_opb_valid_i),
        .I2(systolicControlUnit_serial2mem_opb_rw),
        .I3(\buf_data_reg[3] [1]),
        .O(\data_rx_out_reg[3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    mem_i_65
       (.I0(mem),
        .I1(systolicControlUnit_serial2mem_opa_valid_i),
        .I2(systolicControlUnit_serial2mem_opb_rw),
        .I3(\buf_data_reg[3] [1]),
        .O(dina[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    mem_i_65__0
       (.I0(mem_0),
        .I1(systolicControlUnit_serial2mem_opb_valid_i),
        .I2(systolicControlUnit_serial2mem_opb_rw),
        .I3(\buf_data_reg[3] [0]),
        .O(\data_rx_out_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    mem_i_66
       (.I0(mem),
        .I1(systolicControlUnit_serial2mem_opa_valid_i),
        .I2(systolicControlUnit_serial2mem_opb_rw),
        .I3(\buf_data_reg[3] [0]),
        .O(dina[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    serial2mem_opa_rready_i_reg
       (.CLR(1'b0),
        .D(Q[1]),
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
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    serial2mem_opa_rw_reg_i_1
       (.I0(Q[1]),
        .I1(\FSM_onehot_fsm_unit_control_reg_n_0_[3] ),
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
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hE)) 
    serial2mem_opa_valid_i_reg_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(serial2mem_opa_valid_i_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    serial2mem_opa_valid_i_reg_i_2
       (.I0(Q[0]),
        .I1(fsm_unit_control),
        .I2(\FSM_onehot_fsm_unit_control_reg_n_0_[3] ),
        .I3(Q[1]),
        .O(serial2mem_opa_valid_i_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    serial2mem_opb_clock_BUFG_inst_i_1
       (.I0(clock_IBUF),
        .I1(systolicControlUnit_serial2mem_opb_rw),
        .I2(E),
        .O(serial2mem_opb_clock));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    serial2mem_opb_valid_i_reg
       (.CLR(1'b0),
        .D(\mem_fsm_reg[0] ),
        .G(serial2mem_opa_valid_i_reg_i_2_n_0),
        .GE(1'b1),
        .Q(systolicControlUnit_serial2mem_opb_valid_i));
endmodule

module systolicMatrixMultiply
   (Q,
    CLK,
    btn_IBUF,
    systolicControlUnit_syst_rready_i);
  output [1:0]Q;
  input CLK;
  input [0:0]btn_IBUF;
  input systolicControlUnit_syst_rready_i;

  wire CLK;
  wire [1:0]Q;
  wire [0:0]btn_IBUF;
  wire [5:0]counter_mult;
  wire \counter_mult[5]_i_2_n_0 ;
  wire [5:0]counter_transfer_m;
  wire \counter_transfer_m[5]_i_2_n_0 ;
  wire [1:0]nextStateSystolicControlUnit__0;
  wire [5:0]next_counter_mult__0;
  wire [5:0]next_counter_transfer_m__0;
  wire systolicControlUnit_syst_rready_i;

  LUT6 #(
    .INIT(64'h33307777FFFC4444)) 
    \FSM_sequential_currentStateSystolicControlUnit[0]_i_1 
       (.I0(counter_transfer_m[5]),
        .I1(Q[0]),
        .I2(counter_mult[5]),
        .I3(counter_mult[4]),
        .I4(Q[1]),
        .I5(systolicControlUnit_syst_rready_i),
        .O(nextStateSystolicControlUnit__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7C4C)) 
    \FSM_sequential_currentStateSystolicControlUnit[1]_i_1 
       (.I0(systolicControlUnit_syst_rready_i),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(counter_transfer_m[5]),
        .O(nextStateSystolicControlUnit__0[1]));
  (* FSM_ENCODED_STATES = "LOAD_MULTI_MATRIX:01,MULTI_MATRIX:10,DONE:11,IDLE:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_currentStateSystolicControlUnit_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(nextStateSystolicControlUnit__0[0]),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "LOAD_MULTI_MATRIX:01,MULTI_MATRIX:10,DONE:11,IDLE:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_currentStateSystolicControlUnit_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(nextStateSystolicControlUnit__0[1]),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter_mult[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(counter_mult[0]),
        .O(next_counter_mult__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1400)) 
    \counter_mult[1]_i_1 
       (.I0(Q[0]),
        .I1(counter_mult[0]),
        .I2(counter_mult[1]),
        .I3(Q[1]),
        .O(next_counter_mult__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
  LUT4 #(
    .INIT(16'h1400)) 
    \counter_mult[4]_i_1 
       (.I0(Q[0]),
        .I1(\counter_mult[5]_i_2_n_0 ),
        .I2(counter_mult[4]),
        .I3(Q[1]),
        .O(next_counter_mult__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h15400000)) 
    \counter_mult[5]_i_1 
       (.I0(Q[0]),
        .I1(\counter_mult[5]_i_2_n_0 ),
        .I2(counter_mult[4]),
        .I3(counter_mult[5]),
        .I4(Q[1]),
        .O(next_counter_mult__0[5]));
  LUT4 #(
    .INIT(16'h8000)) 
    \counter_mult[5]_i_2 
       (.I0(counter_mult[3]),
        .I1(counter_mult[1]),
        .I2(counter_mult[0]),
        .I3(counter_mult[2]),
        .O(\counter_mult[5]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_mult_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_counter_mult__0[0]),
        .Q(counter_mult[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_mult_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_counter_mult__0[1]),
        .Q(counter_mult[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_mult_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_counter_mult__0[2]),
        .Q(counter_mult[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_mult_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_counter_mult__0[3]),
        .Q(counter_mult[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_mult_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_counter_mult__0[4]),
        .Q(counter_mult[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_mult_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_counter_mult__0[5]),
        .Q(counter_mult[5]));
  LUT3 #(
    .INIT(8'h04)) 
    \counter_transfer_m[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(counter_transfer_m[0]),
        .O(next_counter_transfer_m__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \counter_transfer_m[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(counter_transfer_m[0]),
        .I3(counter_transfer_m[1]),
        .O(next_counter_transfer_m__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \counter_transfer_m[4]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\counter_transfer_m[5]_i_2_n_0 ),
        .I3(counter_transfer_m[4]),
        .O(next_counter_transfer_m__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h04444000)) 
    \counter_transfer_m[5]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\counter_transfer_m[5]_i_2_n_0 ),
        .I3(counter_transfer_m[4]),
        .I4(counter_transfer_m[5]),
        .O(next_counter_transfer_m__0[5]));
  LUT4 #(
    .INIT(16'h8000)) 
    \counter_transfer_m[5]_i_2 
       (.I0(counter_transfer_m[3]),
        .I1(counter_transfer_m[1]),
        .I2(counter_transfer_m[0]),
        .I3(counter_transfer_m[2]),
        .O(\counter_transfer_m[5]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_transfer_m_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_counter_transfer_m__0[0]),
        .Q(counter_transfer_m[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_transfer_m_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_counter_transfer_m__0[1]),
        .Q(counter_transfer_m[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_transfer_m_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_counter_transfer_m__0[2]),
        .Q(counter_transfer_m[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_transfer_m_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_counter_transfer_m__0[3]),
        .Q(counter_transfer_m[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_transfer_m_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_counter_transfer_m__0[4]),
        .Q(counter_transfer_m[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_transfer_m_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(next_counter_transfer_m__0[5]),
        .Q(counter_transfer_m[5]));
endmodule

module uart_rx
   (E,
    Q,
    CLK,
    btn_IBUF,
    uart_txd_in_IBUF);
  output [0:0]E;
  output [3:0]Q;
  input CLK;
  input [0:0]btn_IBUF;
  input uart_txd_in_IBUF;

  wire CLK;
  wire [0:0]E;
  wire \FSM_sequential_current_fsm[0]_i_2_n_0 ;
  wire [3:0]Q;
  wire bit_start;
  wire bit_start0;
  wire [0:0]btn_IBUF;
  wire clock_out;
  wire [1:0]current_fsm;
  wire ena;
  wire ena_next;
  wire [1:0]next_fsm;
  wire [3:0]next_px_bit;
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
  wire \pdata_rx_out[7]_i_3_n_0 ;
  wire \pdata_rx_out[7]_i_4_n_0 ;
  wire \pdata_rx_out[7]_i_5_n_0 ;
  wire [3:0]px_bit;
  wire ready_rx_out_i_1_n_0;
  wire tmp_sdata_rx_in;
  wire uart_txd_in_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_current_fsm[0]_i_2 
       (.I0(px_bit[0]),
        .I1(px_bit[1]),
        .I2(px_bit[2]),
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
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    bit_start_i_1
       (.I0(uart_txd_in_IBUF),
        .I1(tmp_sdata_rx_in),
        .I2(current_fsm[1]),
        .I3(current_fsm[0]),
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
       (.CLK(CLK),
        .D(next_fsm),
        .E(next_px_bit_0),
        .\FSM_sequential_current_fsm_reg[0] (\FSM_sequential_current_fsm[0]_i_2_n_0 ),
        .Q(px_bit[3:2]),
        .bit_start(bit_start),
        .btn_IBUF(btn_IBUF),
        .clock_out_reg_0(clock_out),
        .ena(ena),
        .pdata_rx_out1(pdata_rx_out1),
        .\pdata_rx_out_reg[0] (\pdata_rx_out[7]_i_3_n_0 ),
        .\pdata_rx_out_reg[0]_0 (\pdata_rx_out[7]_i_4_n_0 ),
        .\pdata_rx_out_reg[0]_1 (\pdata_rx_out[7]_i_5_n_0 ),
        .\px_bit_reg[0] (current_fsm),
        .tmp_sdata_rx_in(tmp_sdata_rx_in));
  FDCE #(
    .INIT(1'b0)) 
    \data_rx_out_reg[0] 
       (.C(clock_out),
        .CE(E),
        .CLR(btn_IBUF),
        .D(pdata_rx_out[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_rx_out_reg[1] 
       (.C(clock_out),
        .CE(E),
        .CLR(btn_IBUF),
        .D(pdata_rx_out[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_rx_out_reg[2] 
       (.C(clock_out),
        .CE(E),
        .CLR(btn_IBUF),
        .D(pdata_rx_out[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_rx_out_reg[3] 
       (.C(clock_out),
        .CE(E),
        .CLR(btn_IBUF),
        .D(pdata_rx_out[3]),
        .Q(Q[3]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
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
        .I1(px_bit[2]),
        .I2(px_bit[3]),
        .I3(px_bit[0]),
        .I4(px_bit[1]),
        .I5(pdata_rx_out[0]),
        .O(\pdata_rx_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \pdata_rx_out[1]_i_1 
       (.I0(pdata_rx_out1),
        .I1(px_bit[2]),
        .I2(px_bit[3]),
        .I3(px_bit[1]),
        .I4(px_bit[0]),
        .I5(pdata_rx_out[1]),
        .O(\pdata_rx_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \pdata_rx_out[2]_i_1 
       (.I0(pdata_rx_out1),
        .I1(px_bit[2]),
        .I2(px_bit[3]),
        .I3(px_bit[0]),
        .I4(px_bit[1]),
        .I5(pdata_rx_out[2]),
        .O(\pdata_rx_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \pdata_rx_out[3]_i_1 
       (.I0(pdata_rx_out1),
        .I1(px_bit[2]),
        .I2(px_bit[3]),
        .I3(px_bit[0]),
        .I4(px_bit[1]),
        .I5(pdata_rx_out[3]),
        .O(\pdata_rx_out[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \pdata_rx_out[4]_i_1 
       (.I0(pdata_rx_out1),
        .I1(px_bit[2]),
        .I2(px_bit[1]),
        .I3(px_bit[0]),
        .I4(px_bit[3]),
        .I5(pdata_rx_out[4]),
        .O(\pdata_rx_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \pdata_rx_out[5]_i_1 
       (.I0(pdata_rx_out1),
        .I1(px_bit[2]),
        .I2(px_bit[0]),
        .I3(px_bit[1]),
        .I4(px_bit[3]),
        .I5(pdata_rx_out[5]),
        .O(\pdata_rx_out[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \pdata_rx_out[6]_i_1 
       (.I0(pdata_rx_out1),
        .I1(px_bit[2]),
        .I2(px_bit[1]),
        .I3(px_bit[0]),
        .I4(px_bit[3]),
        .I5(pdata_rx_out[6]),
        .O(\pdata_rx_out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \pdata_rx_out[7]_i_1 
       (.I0(pdata_rx_out1),
        .I1(px_bit[2]),
        .I2(px_bit[1]),
        .I3(px_bit[0]),
        .I4(px_bit[3]),
        .I5(pdata_rx_out[7]),
        .O(\pdata_rx_out[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \pdata_rx_out[7]_i_3 
       (.I0(pdata_rx_out[1]),
        .I1(pdata_rx_out[3]),
        .I2(px_bit[0]),
        .I3(px_bit[1]),
        .I4(pdata_rx_out[0]),
        .I5(pdata_rx_out[2]),
        .O(\pdata_rx_out[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \pdata_rx_out[7]_i_4 
       (.I0(pdata_rx_out[5]),
        .I1(pdata_rx_out[7]),
        .I2(px_bit[0]),
        .I3(px_bit[1]),
        .I4(pdata_rx_out[4]),
        .I5(pdata_rx_out[6]),
        .O(\pdata_rx_out[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \pdata_rx_out[7]_i_5 
       (.I0(current_fsm[0]),
        .I1(current_fsm[1]),
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
  LUT2 #(
    .INIT(4'h2)) 
    \px_bit[0]_i_1__0 
       (.I0(current_fsm[1]),
        .I1(px_bit[0]),
        .O(next_px_bit[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \px_bit[1]_i_1__0 
       (.I0(current_fsm[1]),
        .I1(px_bit[0]),
        .I2(px_bit[1]),
        .O(next_px_bit[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \px_bit[2]_i_1__0 
       (.I0(px_bit[1]),
        .I1(px_bit[0]),
        .I2(current_fsm[1]),
        .I3(px_bit[2]),
        .O(next_px_bit[2]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \px_bit[3]_i_2__0 
       (.I0(px_bit[0]),
        .I1(px_bit[1]),
        .I2(px_bit[2]),
        .I3(current_fsm[1]),
        .I4(px_bit[3]),
        .O(next_px_bit[3]));
  FDCE #(
    .INIT(1'b0)) 
    \px_bit_reg[0] 
       (.C(clock_out),
        .CE(next_px_bit_0),
        .CLR(btn_IBUF),
        .D(next_px_bit[0]),
        .Q(px_bit[0]));
  FDCE #(
    .INIT(1'b0)) 
    \px_bit_reg[1] 
       (.C(clock_out),
        .CE(next_px_bit_0),
        .CLR(btn_IBUF),
        .D(next_px_bit[1]),
        .Q(px_bit[1]));
  FDCE #(
    .INIT(1'b0)) 
    \px_bit_reg[2] 
       (.C(clock_out),
        .CE(next_px_bit_0),
        .CLR(btn_IBUF),
        .D(next_px_bit[2]),
        .Q(px_bit[2]));
  FDCE #(
    .INIT(1'b0)) 
    \px_bit_reg[3] 
       (.C(clock_out),
        .CE(next_px_bit_0),
        .CLR(btn_IBUF),
        .D(next_px_bit[3]),
        .Q(px_bit[3]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ready_rx_out_i_1
       (.I0(current_fsm[0]),
        .I1(current_fsm[1]),
        .O(ready_rx_out_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ready_rx_out_reg
       (.C(CLK),
        .CE(1'b1),
        .D(ready_rx_out_i_1_n_0),
        .Q(E),
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
    E,
    Q,
    CLK,
    btn_IBUF,
    uart_txd_in_IBUF,
    systolicControlUnit_uart_valid_tx_in);
  output uart_rxd_out_OBUF;
  output [0:0]E;
  output [3:0]Q;
  input CLK;
  input [0:0]btn_IBUF;
  input uart_txd_in_IBUF;
  input systolicControlUnit_uart_valid_tx_in;

  wire CLK;
  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]btn_IBUF;
  wire systolicControlUnit_uart_valid_tx_in;
  wire uart_rxd_out_OBUF;
  wire uart_txd_in_IBUF;

  uart_rx uart_receiver
       (.CLK(CLK),
        .E(E),
        .Q(Q),
        .btn_IBUF(btn_IBUF),
        .uart_txd_in_IBUF(uart_txd_in_IBUF));
  uart_tx uart_transmitter
       (.CLK(CLK),
        .btn_IBUF(btn_IBUF),
        .systolicControlUnit_uart_valid_tx_in(systolicControlUnit_uart_valid_tx_in),
        .uart_rxd_out_OBUF(uart_rxd_out_OBUF));
endmodule

module uart_tx
   (uart_rxd_out_OBUF,
    CLK,
    btn_IBUF,
    systolicControlUnit_uart_valid_tx_in);
  output uart_rxd_out_OBUF;
  input CLK;
  input [0:0]btn_IBUF;
  input systolicControlUnit_uart_valid_tx_in;

  wire CLK;
  wire [0:0]btn_IBUF;
  wire clock_out;
  wire [7:0]p_0_in__1;
  wire \px_bit[3]_i_2_n_0 ;
  wire \px_bit[5]_i_2_n_0 ;
  wire \px_bit[7]_i_2_n_0 ;
  wire [7:0]px_bit_reg;
  wire sdata_tx_out_i_1_n_0;
  wire systolicControlUnit_uart_valid_tx_in;
  wire uart_rxd_out_OBUF;

  baudRateGenerator__parameterized0 boudrategenerator_inst
       (.CLK(CLK),
        .btn_IBUF(btn_IBUF),
        .clock_out_reg_0(clock_out));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h00F00070)) 
    \px_bit[0]_i_1 
       (.I0(px_bit_reg[1]),
        .I1(px_bit_reg[3]),
        .I2(systolicControlUnit_uart_valid_tx_in),
        .I3(px_bit_reg[0]),
        .I4(\px_bit[3]_i_2_n_0 ),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h0B00F000)) 
    \px_bit[1]_i_1 
       (.I0(\px_bit[3]_i_2_n_0 ),
        .I1(px_bit_reg[3]),
        .I2(px_bit_reg[0]),
        .I3(systolicControlUnit_uart_valid_tx_in),
        .I4(px_bit_reg[1]),
        .O(p_0_in__1[1]));
  LUT4 #(
    .INIT(16'h60C0)) 
    \px_bit[2]_i_1 
       (.I0(px_bit_reg[1]),
        .I1(px_bit_reg[2]),
        .I2(systolicControlUnit_uart_valid_tx_in),
        .I3(px_bit_reg[0]),
        .O(p_0_in__1[2]));
  LUT6 #(
    .INIT(64'h4840888888808888)) 
    \px_bit[3]_i_1 
       (.I0(px_bit_reg[3]),
        .I1(systolicControlUnit_uart_valid_tx_in),
        .I2(px_bit_reg[0]),
        .I3(\px_bit[3]_i_2_n_0 ),
        .I4(px_bit_reg[1]),
        .I5(px_bit_reg[2]),
        .O(p_0_in__1[3]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \px_bit[3]_i_2 
       (.I0(px_bit_reg[2]),
        .I1(px_bit_reg[6]),
        .I2(px_bit_reg[7]),
        .I3(px_bit_reg[5]),
        .I4(px_bit_reg[4]),
        .O(\px_bit[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F800000FF000000)) 
    \px_bit[4]_i_1 
       (.I0(px_bit_reg[2]),
        .I1(px_bit_reg[1]),
        .I2(px_bit_reg[3]),
        .I3(px_bit_reg[4]),
        .I4(systolicControlUnit_uart_valid_tx_in),
        .I5(px_bit_reg[0]),
        .O(p_0_in__1[4]));
  LUT4 #(
    .INIT(16'h90C0)) 
    \px_bit[5]_i_1 
       (.I0(\px_bit[5]_i_2_n_0 ),
        .I1(px_bit_reg[5]),
        .I2(systolicControlUnit_uart_valid_tx_in),
        .I3(px_bit_reg[0]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \px_bit[5]_i_2 
       (.I0(px_bit_reg[2]),
        .I1(px_bit_reg[1]),
        .I2(px_bit_reg[3]),
        .I3(px_bit_reg[4]),
        .O(\px_bit[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hB040)) 
    \px_bit[6]_i_1 
       (.I0(\px_bit[7]_i_2_n_0 ),
        .I1(px_bit_reg[0]),
        .I2(systolicControlUnit_uart_valid_tx_in),
        .I3(px_bit_reg[6]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hC6CC0000)) 
    \px_bit[7]_i_1 
       (.I0(px_bit_reg[6]),
        .I1(px_bit_reg[7]),
        .I2(\px_bit[7]_i_2_n_0 ),
        .I3(px_bit_reg[0]),
        .I4(systolicControlUnit_uart_valid_tx_in),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \px_bit[7]_i_2 
       (.I0(px_bit_reg[4]),
        .I1(px_bit_reg[3]),
        .I2(px_bit_reg[1]),
        .I3(px_bit_reg[2]),
        .I4(px_bit_reg[5]),
        .O(\px_bit[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \px_bit_reg[0] 
       (.C(clock_out),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(p_0_in__1[0]),
        .Q(px_bit_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \px_bit_reg[1] 
       (.C(clock_out),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(p_0_in__1[1]),
        .Q(px_bit_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \px_bit_reg[2] 
       (.C(clock_out),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(p_0_in__1[2]),
        .Q(px_bit_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \px_bit_reg[3] 
       (.C(clock_out),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(p_0_in__1[3]),
        .Q(px_bit_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \px_bit_reg[4] 
       (.C(clock_out),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(p_0_in__1[4]),
        .Q(px_bit_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \px_bit_reg[5] 
       (.C(clock_out),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(p_0_in__1[5]),
        .Q(px_bit_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \px_bit_reg[6] 
       (.C(clock_out),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(p_0_in__1[6]),
        .Q(px_bit_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \px_bit_reg[7] 
       (.C(clock_out),
        .CE(1'b1),
        .CLR(btn_IBUF),
        .D(p_0_in__1[7]),
        .Q(px_bit_reg[7]));
  LUT4 #(
    .INIT(16'h0004)) 
    sdata_tx_out_i_1
       (.I0(px_bit_reg[1]),
        .I1(systolicControlUnit_uart_valid_tx_in),
        .I2(px_bit_reg[3]),
        .I3(px_bit_reg[2]),
        .O(sdata_tx_out_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    sdata_tx_out_reg
       (.C(clock_out),
        .CE(1'b1),
        .D(sdata_tx_out_i_1_n_0),
        .PRE(btn_IBUF),
        .Q(uart_rxd_out_OBUF));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 116464)
`pragma protect data_block
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
rTFT/rpTTjBXk3zANXK3gzC1l2UjqP4J8D4HhAMbagMW5wYkkryrrOwo/+3s6PMbtRRepXAfdBdg
4TgFINEKZGqfu+CJAa6Q2RQI8RWHAzJmxRhvdwA0lyLzihmQgg+jb9xKlXDolgi4O+PIQDM+OPlQ
3A+EyT8KX6BD/aZ+qUN3jJg3A/T0I9nUGJh4u2VBI2LvYKzdB1G6pIj/HIUcFgGjq9rQWkLlMOwD
5znJ/a/WTTUuzkR/etiFf0a3jtrFo6Hf/j6fjw35qHMmA/ddCfJdhVuOiK6+FSXIxJV968wheHwK
4HPYEcTYOrM18xNg2cUH8uYUGjEeGBWM908QwhWWLT23v6sAbA3d9goTXhDgoR02axdGlGk71Ve4
1sjxk0GHuc+u8hentSHBea6iN0r7T9Vv4NIShJU3+XcktzvXyM1Z7j1Lt7/uyy46nkMpQq/ttS9x
eCF0dG5KXZzeh4WFNTSGuOzE1zJcvsKXxdy1OWmEwKIp2KeSctu3tYX46FUg6pezlL8wU+JxhmGN
Bmx9WOGhqyUjo1h8K1uwI5vDytZq4RI/o5Ldi/nKcW+Zy7svzmJrp+PjSXJA3L/dhEzyzu/co5pp
CJaJ6alWFn7tHX1pI6oOeG2rcRzsuysu1ZntyiTjUm6fdkoXcZDU55DiZLiUEtF9zlKOKwnRfF7h
MihXz8Hn1Zw/GxIt9v/R8zVZiuJgdORBYbARVVsDgw+5w4KxQSH34DnZLvzIIO3sB0ent1spFqIt
Epxx0R0L0ehrwhLWphQrr5FX06RbHe0X+LVrLsEPTA97Z2UKn/gGSr/uNDTltr4r0HWCIHDOBToZ
PvvEGPC+dpc8RYeOTuYThLXUbM32h/MMlnPlhat0B9pHqHGb/fLbdppXFHJon/wC4yPWovzhaMx5
vxjbREIxlcVPLL3OxHR1xddhYiTOhsL4M3PU+tLaGwtMY7RoLi69HYV3aCndHxXiwJUNvB+yURuS
RAAMsflSz8prKZXq4FkuMok2FY00xC4rYcKwF70CvLNOzQQ/vRTeRLNachXxjIvAQxvMpLJPd7Uv
UEcZiPAmdVNCSOwkeio1SdTL+mZ+qaDeINYtIql3jphWwJXD067fUSjH7MqSl5G65gWUVscDgQRf
CtujTFN0fnh1vyTUyrmQTzZy11Po3pCGhdDw2+IE5XF345RwURC2WG/6hzLVItK9lkicveSK2QY1
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
m+V97hjuKw7QgJYWQQ==
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
