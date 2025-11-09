# File saved with Nlview 7.8.0 2024-04-26 e1825d835c VDI=44 GEI=38 GUI=JA:21.0 TLS
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new Arty7_top_sim work:Arty7_top_sim:NOFILE -nosplit
load symbol SystolicCoreTop work:SystolicCoreTop:NOFILE HIERBOX pin clka input.left pin clock_IBUF input.left pin clock_IBUF_BUFG input.left pin mem2serial_clock input.left pin out_clock_ref_reg output.right pin ready_rx_out_reg output.right pin uart_rxd_out_OBUF output.right pin uart_txd_in_IBUF input.left pinBus btn_IBUF input.left [0:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol IBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol BUFG hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol LUT1 hdi_primitives BOX pin O output.right pin I0 input.left fillcolor 1
load symbol OBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol systolicMatrixMultiply work:systolicMatrixMultiply:NOFILE HIERBOX pin FSM_onehot_fsm_unit_control_reg[2] input.left pin FSM_onehot_fsm_unit_control_reg[2]_0 input.left pin clock_IBUF_BUFG input.left pin sdata_tx_out_i_123_0 input.left pin sdata_tx_out_i_155_0 input.left pin sdata_tx_out_i_171_0 input.left pin sdata_tx_out_i_187_0 input.left pin sdata_tx_out_i_203_0 input.left pin sdata_tx_out_i_219_0 input.left pin sdata_tx_out_i_235_0 input.left pin sdata_tx_out_reg_i_1029_0 input.left pin sdata_tx_out_reg_i_1082_0 input.left pin sdata_tx_out_reg_i_1185_0 input.left pin sdata_tx_out_reg_i_1254_0 input.left pin sdata_tx_out_reg_i_1278_0 input.left pin sdata_tx_out_reg_i_1327_0 input.left pin sdata_tx_out_reg_i_1392_0 input.left pin sdata_tx_out_reg_i_1396_0 input.left pin sdata_tx_out_reg_i_1460_0 input.left pin sdata_tx_out_reg_i_1517_0 input.left pin sdata_tx_out_reg_i_1562_0 input.left pin sdata_tx_out_reg_i_1627_0 input.left pin sdata_tx_out_reg_i_1679_0 input.left pin sdata_tx_out_reg_i_1748_0 input.left pin sdata_tx_out_reg_i_281_0 input.left pin sdata_tx_out_reg_i_401_0 input.left pin sdata_tx_out_reg_i_433_0 input.left pin sdata_tx_out_reg_i_553_0 input.left pin sdata_tx_out_reg_i_569_0 input.left pin sdata_tx_out_reg_i_609_0 input.left pin sdata_tx_out_reg_i_609_1 input.left pin sdata_tx_out_reg_i_649_0 input.left pin sdata_tx_out_reg_i_705_0 input.left pin sdata_tx_out_reg_i_776_0 input.left pin sdata_tx_out_reg_i_833_0 input.left pin sdata_tx_out_reg_i_884_0 input.left pin sdata_tx_out_reg_i_916_0 input.left pin sdata_tx_out_reg_i_948_0 input.left pin systolicControlUnit_mem2serial_rvalid_o input.left pin systolicControlUnit_syst_valid_i input.left pinBus D output.right [1:0] pinBus FSM_onehot_fsm_unit_control_reg[3] input.left [2:0] pinBus Q output.right [1:0] pinBus a_load_reg[31]_0 input.left [31:0] pinBus b_load_reg[31]_0 input.left [31:0] pinBus btn_IBUF input.left [0:0] pinBus sdata_tx_out_i_2 input.left [4:0] pinBus sdata_tx_out_reg_i_61_0 input.left [4:0] pinBus uart_data_tx_in output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol ref_clock__parameterized0 work:ref_clock__parameterized0:NOFILE HIERBOX pin clock_IBUF_BUFG input.left pin out_clock_ref_reg_0 output.right pinBus btn_IBUF input.left [0:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol mem2seriala work:mem2seriala:NOFILE HIERBOX pin i_counter_reg[1]_rep_0 output.right pin i_counter_reg[1]_rep__0_0 output.right pin i_counter_reg[1]_rep__10_0 output.right pin i_counter_reg[1]_rep__11_0 output.right pin i_counter_reg[1]_rep__12_0 output.right pin i_counter_reg[1]_rep__13_0 output.right pin i_counter_reg[1]_rep__14_0 output.right pin i_counter_reg[1]_rep__15_0 output.right pin i_counter_reg[1]_rep__16_0 output.right pin i_counter_reg[1]_rep__17_0 output.right pin i_counter_reg[1]_rep__1_0 output.right pin i_counter_reg[1]_rep__2_0 output.right pin i_counter_reg[1]_rep__3_0 output.right pin i_counter_reg[1]_rep__4_0 output.right pin i_counter_reg[1]_rep__5_0 output.right pin i_counter_reg[1]_rep__6_0 output.right pin i_counter_reg[1]_rep__7_0 output.right pin i_counter_reg[1]_rep__8_0 output.right pin i_counter_reg[1]_rep__9_0 output.right pin i_counter_reg[2]_rep_0 output.right pin i_counter_reg[2]_rep__0_0 output.right pin i_counter_reg[2]_rep__1_0 output.right pin i_counter_reg[2]_rep__2_0 output.right pin i_counter_reg[2]_rep__3_0 output.right pin i_counter_reg[2]_rep__4_0 output.right pin i_counter_reg[2]_rep__5_0 output.right pin i_counter_reg[2]_rep__6_0 output.right pin i_counter_reg[2]_rep__7_0 output.right pin i_counter_reg[3]_rep_0 output.right pin i_counter_reg[3]_rep__0_0 output.right pin i_counter_reg[3]_rep__1_0 output.right pin i_counter_reg[3]_rep__2_0 output.right pin i_counter_reg[3]_rep__3_0 output.right pin i_counter_reg[3]_rep__4_0 output.right pin i_counter_reg[3]_rep__5_0 output.right pin mem2serial_clock input.left pin systolicControlUnit_mem2serial_rvalid_o output.right pin systolicControlUnit_uart_valid_tx_in input.left pinBus Q output.right [4:0] pinBus btn_IBUF input.left [0:0] pinBus i_counter_reg[4]_0 output.right [4:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol serial2mem__xdcDup__1 work:serial2mem__xdcDup__1:NOFILE HIERBOX pin clka input.left pin cnt_reg[3]_0 output.right pin cnt_reg[4]_0 output.right pin cnt_shift_reg[3]_0 output.right pin mem_fsm_reg[1]_1 output.right pin systolicControlUnit_serial2mem_opa_valid_i input.left pin systolicControlUnit_serial2mem_opb_rw input.left pin systolicControlUnit_syst_valid_i input.left pinBus D input.left [0:0] pinBus E input.left [0:0] pinBus FSM_sequential_currentStateSystolicControlUnit_reg[0] output.right [31:0] pinBus Q input.left [1:0] pinBus btn_IBUF input.left [0:0] pinBus dina input.left [0:0] pinBus mem_fsm_reg[1]_0 output.right [1:0] pinBus serial2mem_opb_valid_i_reg input.left [1:0] pinBus wea input.left [0:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol serial2mem work:serial2mem:NOFILE HIERBOX pin clka input.left pin cnt_shift_reg[3]_0 output.right pin mem_fsm_reg[1]_0 output.right pin systolicControlUnit_serial2mem_opb_rw input.left pin systolicControlUnit_serial2mem_opb_valid_i input.left pin systolicControlUnit_syst_valid_i input.left pinBus D input.left [0:0] pinBus E output.right [0:0] pinBus FSM_onehot_fsm_unit_control_next_reg[2]_i_1 input.left [0:0] pinBus FSM_sequential_currentStateSystolicControlUnit_reg[0] output.right [31:0] pinBus Q input.left [1:0] pinBus btn_IBUF input.left [0:0] pinBus dina input.left [0:0] pinBus wea input.left [0:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol systolicControlUnitTop work:systolicControlUnitTop:NOFILE HIERBOX pin FSM_onehot_fsm_unit_control_reg[1]_1 input.left pin FSM_onehot_fsm_unit_control_reg[1]_2 input.left pin buf_data_reg[0] input.left pin clock_IBUF input.left pin clock_IBUF_BUFG input.left pin mem input.left pin mem_0 input.left pin ready_rx_out_reg output.right pin systolicControlUnit_serial2mem_opa_valid_i output.right pin systolicControlUnit_serial2mem_opb_rw output.right pin systolicControlUnit_serial2mem_opb_valid_i output.right pin systolicControlUnit_syst_valid_i output.right pin systolicControlUnit_uart_valid_tx_in output.right pin uart_data_rx_out input.left pin uart_ready_rx_out input.left pinBus D input.left [1:0] pinBus FSM_onehot_fsm_unit_control_reg[1]_0 input.left [0:0] pinBus Q output.right [2:0] pinBus btn_IBUF input.left [0:0] pinBus data_rx_out_reg[0] output.right [0:0] pinBus data_rx_out_reg[0]_0 output.right [0:0] pinBus data_rx_out_reg[0]_1 output.right [0:0] pinBus dina output.right [0:0] pinBus wea output.right [0:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol uart_top work:uart_top:NOFILE HIERBOX pin clock_IBUF_BUFG input.left pin systolicControlUnit_uart_valid_tx_in input.left pin uart_data_rx_out output.right pin uart_ready_rx_out output.right pin uart_rxd_out_OBUF output.right pin uart_txd_in_IBUF input.left pinBus btn_IBUF input.left [0:0] pinBus uart_data_tx_in input.left [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load port clock input -pg 1 -lvl 0 -x 0 -y 190
load port uart_rxd_out output -pg 1 -lvl 5 -x 5920 -y 210
load port uart_txd_in input -pg 1 -lvl 0 -x 0 -y 370
load portBus btn input [3:0] -attr @name btn[3:0] -pg 1 -lvl 0 -x 0 -y 80
load inst SystolicCore0 SystolicCoreTop work:SystolicCoreTop:NOFILE -attr @cell(#000000) SystolicCoreTop -attr @fillcolor #fafafa -pinBusAttr btn_IBUF @name btn_IBUF -pg 1 -lvl 3 -x 770 -y 148
load inst btn_IBUF[0]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 270 -y 80
load inst clock_IBUF_BUFG_inst BUFG hdi_primitives -attr @cell(#000000) BUFG -pg 1 -lvl 2 -x 270 -y 230
load inst clock_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 40 -y 190
load inst i_0 LUT1 hdi_primitives -attr @cell(#000000) LUT1 -pinAttr O @attr n/c -pg 1 -lvl 3 -x 770 -y 40
load inst mem2seriala_fsm_reg[1]_i_2 BUFG hdi_primitives -attr @cell(#000000) BUFG -pg 1 -lvl 2 -x 270 -y 300
load inst mem_i_1__0 BUFG hdi_primitives -attr @cell(#000000) BUFG -pg 1 -lvl 2 -x 270 -y 150
load inst uart_rxd_out_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 4 -x 5710 -y 210
load inst uart_txd_in_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 270 -y 370
load inst SystolicCore0|DUT_MatrixMultiplyM0 systolicMatrixMultiply work:systolicMatrixMultiply:NOFILE -hier SystolicCore0 -autohide -attr @cell(#000000) systolicMatrixMultiply -attr @name DUT_MatrixMultiplyM0 -pinBusAttr D @name D[1:0] -pinBusAttr FSM_onehot_fsm_unit_control_reg[3] @name FSM_onehot_fsm_unit_control_reg[3][2:0] -pinBusAttr Q @name Q[1:0] -pinBusAttr a_load_reg[31]_0 @name a_load_reg[31]_0[31:0] -pinBusAttr b_load_reg[31]_0 @name b_load_reg[31]_0[31:0] -pinBusAttr btn_IBUF @name btn_IBUF -pinBusAttr sdata_tx_out_i_2 @name sdata_tx_out_i_2[4:0] -pinBusAttr sdata_tx_out_reg_i_61_0 @name sdata_tx_out_reg_i_61_0[4:0] -pinBusAttr uart_data_tx_in @name uart_data_tx_in[7:0] -pg 1 -lvl 2 -x 2490 -y 668
load inst SystolicCore0|clock_hate_pc ref_clock__parameterized0 work:ref_clock__parameterized0:NOFILE -hier SystolicCore0 -autohide -attr @cell(#000000) ref_clock__parameterized0 -attr @name clock_hate_pc -pinBusAttr btn_IBUF @name btn_IBUF -pg 1 -lvl 5 -x 4970 -y 908
load inst SystolicCore0|mem2serial_transfer_pc mem2seriala work:mem2seriala:NOFILE -hier SystolicCore0 -autohide -attr @cell(#000000) mem2seriala -attr @name mem2serial_transfer_pc -pinBusAttr Q @name Q[4:0] -pinBusAttr btn_IBUF @name btn_IBUF -pinBusAttr i_counter_reg[4]_0 @name i_counter_reg[4]_0[4:0] -pg 1 -lvl 1 -x 1050 -y 808
load inst SystolicCore0|serial2mem_opA serial2mem__xdcDup__1 work:serial2mem__xdcDup__1:NOFILE -hier SystolicCore0 -autohide -attr @cell(#000000) serial2mem__xdcDup__1 -attr @name serial2mem_opA -pinBusAttr D @name D -pinBusAttr E @name E -pinBusAttr FSM_sequential_currentStateSystolicControlUnit_reg[0] @name FSM_sequential_currentStateSystolicControlUnit_reg[0][31:0] -pinBusAttr Q @name Q[1:0] -pinBusAttr btn_IBUF @name btn_IBUF -pinBusAttr dina @name dina -pinBusAttr mem_fsm_reg[1]_0 @name mem_fsm_reg[1]_0[1:0] -pinBusAttr serial2mem_opb_valid_i_reg @name serial2mem_opb_valid_i_reg[1:0] -pinBusAttr wea @name wea -pg 1 -lvl 4 -x 4110 -y 468
load inst SystolicCore0|serial2mem_opB serial2mem work:serial2mem:NOFILE -hier SystolicCore0 -autohide -attr @cell(#000000) serial2mem -attr @name serial2mem_opB -pinBusAttr D @name D -pinBusAttr E @name E -pinBusAttr FSM_onehot_fsm_unit_control_next_reg[2]_i_1 @name FSM_onehot_fsm_unit_control_next_reg[2]_i_1 -pinBusAttr FSM_sequential_currentStateSystolicControlUnit_reg[0] @name FSM_sequential_currentStateSystolicControlUnit_reg[0][31:0] -pinBusAttr Q @name Q[1:0] -pinBusAttr btn_IBUF @name btn_IBUF -pinBusAttr dina @name dina -pinBusAttr wea @name wea -pg 1 -lvl 3 -x 3300 -y 168
load inst SystolicCore0|systolicControlUnit_Global systolicControlUnitTop work:systolicControlUnitTop:NOFILE -hier SystolicCore0 -autohide -attr @cell(#000000) systolicControlUnitTop -attr @name systolicControlUnit_Global -pinBusAttr D @name D[1:0] -pinBusAttr FSM_onehot_fsm_unit_control_reg[1]_0 @name FSM_onehot_fsm_unit_control_reg[1]_0 -pinBusAttr Q @name Q[2:0] -pinBusAttr btn_IBUF @name btn_IBUF -pinBusAttr data_rx_out_reg[0] @name data_rx_out_reg[0] -pinBusAttr data_rx_out_reg[0]_0 @name data_rx_out_reg[0]_0 -pinBusAttr data_rx_out_reg[0]_1 @name data_rx_out_reg[0]_1 -pinBusAttr dina @name dina -pinBusAttr wea @name wea -pg 1 -lvl 5 -x 4970 -y 468
load inst SystolicCore0|uart_systolic_core uart_top work:uart_top:NOFILE -hier SystolicCore0 -autohide -attr @cell(#000000) uart_top -attr @name uart_systolic_core -pinBusAttr btn_IBUF @name btn_IBUF -pinBusAttr uart_data_tx_in @name uart_data_tx_in[7:0] -pg 1 -lvl 4 -x 4110 -y 988
load net SystolicCore0_n_1 -pin SystolicCore0 out_clock_ref_reg -pin mem2seriala_fsm_reg[1]_i_2 I
netloc SystolicCore0_n_1 1 1 3 210 10 NJ 10 5650
load net SystolicCore0_n_2 -pin SystolicCore0 ready_rx_out_reg -pin mem_i_1__0 I
netloc SystolicCore0_n_2 1 1 3 230 40 540J 90 5630
load net btn[0] -attr @rip(#000000) btn[0] -port btn[0] -pin btn_IBUF[0]_inst I
netloc btn[0] 1 0 2 NJ 80 NJ
load net btn_IBUF[0] -attr @rip(#000000) 0 -pin SystolicCore0 btn_IBUF[0] -pin btn_IBUF[0]_inst O
netloc btn_IBUF[0] 1 2 1 520J 80n
load net clock -port clock -pin clock_IBUF_inst I
netloc clock 1 0 1 NJ 190
load net clock_IBUF -pin SystolicCore0 clock_IBUF -pin clock_IBUF_BUFG_inst I -pin clock_IBUF_inst O
netloc clock_IBUF 1 1 2 190 190 580J
load net clock_IBUF_BUFG -pin SystolicCore0 clock_IBUF_BUFG -pin clock_IBUF_BUFG_inst O
netloc clock_IBUF_BUFG 1 2 1 560J 230n
load net mem2serial_clock -pin SystolicCore0 mem2serial_clock -pin i_0 I0 -pin mem2seriala_fsm_reg[1]_i_2 O
netloc mem2serial_clock 1 2 1 620 50n
load net serial2mem_opa_clock -pin SystolicCore0 clka -pin mem_i_1__0 O
netloc serial2mem_opa_clock 1 2 1 600J 150n
load net uart_rxd_out -port uart_rxd_out -pin uart_rxd_out_OBUF_inst O
netloc uart_rxd_out 1 4 1 NJ 210
load net uart_rxd_out_OBUF -pin SystolicCore0 uart_rxd_out_OBUF -pin uart_rxd_out_OBUF_inst I
netloc uart_rxd_out_OBUF 1 3 1 5670J 210n
load net uart_txd_in -port uart_txd_in -pin uart_txd_in_IBUF_inst I
netloc uart_txd_in 1 0 2 NJ 370 NJ
load net uart_txd_in_IBUF -pin SystolicCore0 uart_txd_in_IBUF -pin uart_txd_in_IBUF_inst O
netloc uart_txd_in_IBUF 1 2 1 540J 370n
load net SystolicCore0|DUT_MatrixMultiplyM0_n_2 -attr @rip Q[1] -attr @name DUT_MatrixMultiplyM0_n_2 -pin SystolicCore0|DUT_MatrixMultiplyM0 Q[1] -pin SystolicCore0|serial2mem_opA Q[1] -pin SystolicCore0|serial2mem_opB Q[1]
load net SystolicCore0|DUT_MatrixMultiplyM0_n_3 -attr @rip Q[0] -attr @name DUT_MatrixMultiplyM0_n_3 -pin SystolicCore0|DUT_MatrixMultiplyM0 Q[0] -pin SystolicCore0|serial2mem_opA Q[0] -pin SystolicCore0|serial2mem_opB Q[0]
load net SystolicCore0|a_load0[0] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][0] -attr @name a_load0[0] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[0] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][0]
load net SystolicCore0|a_load0[10] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][10] -attr @name a_load0[10] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[10] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][10]
load net SystolicCore0|a_load0[11] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][11] -attr @name a_load0[11] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[11] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][11]
load net SystolicCore0|a_load0[12] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][12] -attr @name a_load0[12] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[12] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][12]
load net SystolicCore0|a_load0[13] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][13] -attr @name a_load0[13] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[13] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][13]
load net SystolicCore0|a_load0[14] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][14] -attr @name a_load0[14] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[14] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][14]
load net SystolicCore0|a_load0[15] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][15] -attr @name a_load0[15] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[15] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][15]
load net SystolicCore0|a_load0[16] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][16] -attr @name a_load0[16] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[16] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][16]
load net SystolicCore0|a_load0[17] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][17] -attr @name a_load0[17] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[17] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][17]
load net SystolicCore0|a_load0[18] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][18] -attr @name a_load0[18] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[18] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][18]
load net SystolicCore0|a_load0[19] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][19] -attr @name a_load0[19] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[19] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][19]
load net SystolicCore0|a_load0[1] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][1] -attr @name a_load0[1] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[1] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][1]
load net SystolicCore0|a_load0[20] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][20] -attr @name a_load0[20] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[20] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][20]
load net SystolicCore0|a_load0[21] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][21] -attr @name a_load0[21] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[21] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][21]
load net SystolicCore0|a_load0[22] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][22] -attr @name a_load0[22] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[22] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][22]
load net SystolicCore0|a_load0[23] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][23] -attr @name a_load0[23] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[23] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][23]
load net SystolicCore0|a_load0[24] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][24] -attr @name a_load0[24] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[24] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][24]
load net SystolicCore0|a_load0[25] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][25] -attr @name a_load0[25] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[25] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][25]
load net SystolicCore0|a_load0[26] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][26] -attr @name a_load0[26] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[26] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][26]
load net SystolicCore0|a_load0[27] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][27] -attr @name a_load0[27] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[27] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][27]
load net SystolicCore0|a_load0[28] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][28] -attr @name a_load0[28] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[28] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][28]
load net SystolicCore0|a_load0[29] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][29] -attr @name a_load0[29] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[29] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][29]
load net SystolicCore0|a_load0[2] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][2] -attr @name a_load0[2] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[2] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][2]
load net SystolicCore0|a_load0[30] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][30] -attr @name a_load0[30] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[30] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][30]
load net SystolicCore0|a_load0[31] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][31] -attr @name a_load0[31] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[31] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][31]
load net SystolicCore0|a_load0[3] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][3] -attr @name a_load0[3] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[3] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][3]
load net SystolicCore0|a_load0[4] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][4] -attr @name a_load0[4] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[4] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][4]
load net SystolicCore0|a_load0[5] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][5] -attr @name a_load0[5] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[5] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][5]
load net SystolicCore0|a_load0[6] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][6] -attr @name a_load0[6] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[6] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][6]
load net SystolicCore0|a_load0[7] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][7] -attr @name a_load0[7] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[7] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][7]
load net SystolicCore0|a_load0[8] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][8] -attr @name a_load0[8] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[8] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][8]
load net SystolicCore0|a_load0[9] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][9] -attr @name a_load0[9] -pin SystolicCore0|DUT_MatrixMultiplyM0 a_load_reg[31]_0[9] -pin SystolicCore0|serial2mem_opA FSM_sequential_currentStateSystolicControlUnit_reg[0][9]
load net SystolicCore0|b_load0[0] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][0] -attr @name b_load0[0] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[0] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][0]
load net SystolicCore0|b_load0[10] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][10] -attr @name b_load0[10] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[10] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][10]
load net SystolicCore0|b_load0[11] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][11] -attr @name b_load0[11] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[11] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][11]
load net SystolicCore0|b_load0[12] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][12] -attr @name b_load0[12] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[12] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][12]
load net SystolicCore0|b_load0[13] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][13] -attr @name b_load0[13] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[13] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][13]
load net SystolicCore0|b_load0[14] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][14] -attr @name b_load0[14] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[14] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][14]
load net SystolicCore0|b_load0[15] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][15] -attr @name b_load0[15] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[15] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][15]
load net SystolicCore0|b_load0[16] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][16] -attr @name b_load0[16] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[16] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][16]
load net SystolicCore0|b_load0[17] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][17] -attr @name b_load0[17] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[17] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][17]
load net SystolicCore0|b_load0[18] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][18] -attr @name b_load0[18] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[18] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][18]
load net SystolicCore0|b_load0[19] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][19] -attr @name b_load0[19] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[19] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][19]
load net SystolicCore0|b_load0[1] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][1] -attr @name b_load0[1] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[1] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][1]
load net SystolicCore0|b_load0[20] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][20] -attr @name b_load0[20] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[20] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][20]
load net SystolicCore0|b_load0[21] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][21] -attr @name b_load0[21] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[21] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][21]
load net SystolicCore0|b_load0[22] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][22] -attr @name b_load0[22] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[22] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][22]
load net SystolicCore0|b_load0[23] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][23] -attr @name b_load0[23] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[23] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][23]
load net SystolicCore0|b_load0[24] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][24] -attr @name b_load0[24] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[24] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][24]
load net SystolicCore0|b_load0[25] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][25] -attr @name b_load0[25] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[25] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][25]
load net SystolicCore0|b_load0[26] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][26] -attr @name b_load0[26] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[26] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][26]
load net SystolicCore0|b_load0[27] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][27] -attr @name b_load0[27] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[27] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][27]
load net SystolicCore0|b_load0[28] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][28] -attr @name b_load0[28] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[28] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][28]
load net SystolicCore0|b_load0[29] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][29] -attr @name b_load0[29] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[29] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][29]
load net SystolicCore0|b_load0[2] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][2] -attr @name b_load0[2] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[2] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][2]
load net SystolicCore0|b_load0[30] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][30] -attr @name b_load0[30] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[30] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][30]
load net SystolicCore0|b_load0[31] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][31] -attr @name b_load0[31] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[31] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][31]
load net SystolicCore0|b_load0[3] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][3] -attr @name b_load0[3] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[3] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][3]
load net SystolicCore0|b_load0[4] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][4] -attr @name b_load0[4] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[4] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][4]
load net SystolicCore0|b_load0[5] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][5] -attr @name b_load0[5] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[5] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][5]
load net SystolicCore0|b_load0[6] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][6] -attr @name b_load0[6] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[6] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][6]
load net SystolicCore0|b_load0[7] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][7] -attr @name b_load0[7] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[7] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][7]
load net SystolicCore0|b_load0[8] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][8] -attr @name b_load0[8] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[8] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][8]
load net SystolicCore0|b_load0[9] -attr @rip FSM_sequential_currentStateSystolicControlUnit_reg[0][9] -attr @name b_load0[9] -pin SystolicCore0|DUT_MatrixMultiplyM0 b_load_reg[31]_0[9] -pin SystolicCore0|serial2mem_opB FSM_sequential_currentStateSystolicControlUnit_reg[0][9]
load net SystolicCore0|btn_IBUF[0] -attr @rip btn_IBUF[0] -attr @name btn_IBUF[0] -hierPin SystolicCore0 btn_IBUF[0] -pin SystolicCore0|DUT_MatrixMultiplyM0 btn_IBUF[0] -pin SystolicCore0|clock_hate_pc btn_IBUF[0] -pin SystolicCore0|mem2serial_transfer_pc btn_IBUF[0] -pin SystolicCore0|serial2mem_opA btn_IBUF[0] -pin SystolicCore0|serial2mem_opB btn_IBUF[0] -pin SystolicCore0|systolicControlUnit_Global btn_IBUF[0] -pin SystolicCore0|uart_systolic_core btn_IBUF[0]
netloc SystolicCore0|btn_IBUF[0] 1 0 5 800 538 1660 398 2900 538 3750 898 4640
load net SystolicCore0|clka -attr @name clka -hierPin SystolicCore0 clka -pin SystolicCore0|serial2mem_opA clka -pin SystolicCore0|serial2mem_opB clka
netloc SystolicCore0|clka 1 0 4 NJ 558 NJ 558 2860 558 NJ
load net SystolicCore0|clock_IBUF -attr @name clock_IBUF -hierPin SystolicCore0 clock_IBUF -pin SystolicCore0|systolicControlUnit_Global clock_IBUF
netloc SystolicCore0|clock_IBUF 1 0 5 NJ 578 NJ 578 2780J 698 3670J 858 4580
load net SystolicCore0|clock_IBUF_BUFG -attr @name clock_IBUF_BUFG -hierPin SystolicCore0 clock_IBUF_BUFG -pin SystolicCore0|DUT_MatrixMultiplyM0 clock_IBUF_BUFG -pin SystolicCore0|clock_hate_pc clock_IBUF_BUFG -pin SystolicCore0|systolicControlUnit_Global clock_IBUF_BUFG -pin SystolicCore0|uart_systolic_core clock_IBUF_BUFG
netloc SystolicCore0|clock_IBUF_BUFG 1 0 5 NJ 598 1440 598 2800J 718 3630 918 4600
load net SystolicCore0|fsm_unit_control[1] -attr @rip Q[0] -attr @name fsm_unit_control[1] -pin SystolicCore0|DUT_MatrixMultiplyM0 FSM_onehot_fsm_unit_control_reg[3][0] -pin SystolicCore0|serial2mem_opA serial2mem_opb_valid_i_reg[0] -pin SystolicCore0|systolicControlUnit_Global Q[0]
load net SystolicCore0|fsm_unit_control_next__0[2] -attr @rip D[0] -attr @name fsm_unit_control_next__0[2] -pin SystolicCore0|DUT_MatrixMultiplyM0 D[0] -pin SystolicCore0|systolicControlUnit_Global D[0]
load net SystolicCore0|fsm_unit_control_next__0[3] -attr @rip D[1] -attr @name fsm_unit_control_next__0[3] -pin SystolicCore0|DUT_MatrixMultiplyM0 D[1] -pin SystolicCore0|systolicControlUnit_Global D[1]
load net SystolicCore0|i_counter[0] -attr @rip i_counter_reg[4]_0[0] -attr @name i_counter[0] -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_61_0[0] -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[4]_0[0]
load net SystolicCore0|i_counter[1] -attr @rip i_counter_reg[4]_0[1] -attr @name i_counter[1] -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_61_0[1] -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[4]_0[1]
load net SystolicCore0|i_counter[2] -attr @rip i_counter_reg[4]_0[2] -attr @name i_counter[2] -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_61_0[2] -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[4]_0[2]
load net SystolicCore0|i_counter[3] -attr @rip i_counter_reg[4]_0[3] -attr @name i_counter[3] -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_61_0[3] -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[4]_0[3]
load net SystolicCore0|i_counter[4] -attr @rip i_counter_reg[4]_0[4] -attr @name i_counter[4] -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_61_0[4] -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[4]_0[4]
load net SystolicCore0|j_counter[0] -attr @rip Q[0] -attr @name j_counter[0] -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_i_2[0] -pin SystolicCore0|mem2serial_transfer_pc Q[0]
load net SystolicCore0|j_counter[1] -attr @rip Q[1] -attr @name j_counter[1] -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_i_2[1] -pin SystolicCore0|mem2serial_transfer_pc Q[1]
load net SystolicCore0|j_counter[2] -attr @rip Q[2] -attr @name j_counter[2] -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_i_2[2] -pin SystolicCore0|mem2serial_transfer_pc Q[2]
load net SystolicCore0|j_counter[3] -attr @rip Q[3] -attr @name j_counter[3] -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_i_2[3] -pin SystolicCore0|mem2serial_transfer_pc Q[3]
load net SystolicCore0|j_counter[4] -attr @rip Q[4] -attr @name j_counter[4] -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_i_2[4] -pin SystolicCore0|mem2serial_transfer_pc Q[4]
load net SystolicCore0|mem2serial_clock -attr @name mem2serial_clock -hierPin SystolicCore0 mem2serial_clock -pin SystolicCore0|mem2serial_transfer_pc mem2serial_clock
netloc SystolicCore0|mem2serial_clock 1 0 1 N 1178
load net SystolicCore0|mem2serial_transfer_pc_n_11 -attr @name mem2serial_transfer_pc_n_11 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_1396_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[1]_rep__17_0
netloc SystolicCore0|mem2serial_transfer_pc_n_11 1 1 1 1860 1178n
load net SystolicCore0|mem2serial_transfer_pc_n_12 -attr @name mem2serial_transfer_pc_n_12 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_609_1 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[2]_rep_0
netloc SystolicCore0|mem2serial_transfer_pc_n_12 1 1 1 1720 1118n
load net SystolicCore0|mem2serial_transfer_pc_n_13 -attr @name mem2serial_transfer_pc_n_13 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_1327_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[1]_rep__2_0
netloc SystolicCore0|mem2serial_transfer_pc_n_13 1 1 1 1740 878n
load net SystolicCore0|mem2serial_transfer_pc_n_14 -attr @name mem2serial_transfer_pc_n_14 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_553_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[2]_rep__0_0
netloc SystolicCore0|mem2serial_transfer_pc_n_14 1 1 1 1940 1058n
load net SystolicCore0|mem2serial_transfer_pc_n_15 -attr @name mem2serial_transfer_pc_n_15 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_i_203_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[3]_rep_0
netloc SystolicCore0|mem2serial_transfer_pc_n_15 1 1 1 1600 918n
load net SystolicCore0|mem2serial_transfer_pc_n_16 -attr @name mem2serial_transfer_pc_n_16 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_i_171_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[3]_rep__0_0
netloc SystolicCore0|mem2serial_transfer_pc_n_16 1 1 1 1760 878n
load net SystolicCore0|mem2serial_transfer_pc_n_17 -attr @name mem2serial_transfer_pc_n_17 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_i_219_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[3]_rep__1_0
netloc SystolicCore0|mem2serial_transfer_pc_n_17 1 1 1 1840 938n
load net SystolicCore0|mem2serial_transfer_pc_n_18 -attr @name mem2serial_transfer_pc_n_18 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_i_235_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[3]_rep__2_0
netloc SystolicCore0|mem2serial_transfer_pc_n_18 1 1 1 1520 958n
load net SystolicCore0|mem2serial_transfer_pc_n_19 -attr @name mem2serial_transfer_pc_n_19 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_i_123_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[3]_rep__3_0
netloc SystolicCore0|mem2serial_transfer_pc_n_19 1 1 1 1680 838n
load net SystolicCore0|mem2serial_transfer_pc_n_20 -attr @name mem2serial_transfer_pc_n_20 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_i_155_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[3]_rep__4_0
netloc SystolicCore0|mem2serial_transfer_pc_n_20 1 1 1 2080 858n
load net SystolicCore0|mem2serial_transfer_pc_n_21 -attr @name mem2serial_transfer_pc_n_21 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_i_187_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[3]_rep__5_0
netloc SystolicCore0|mem2serial_transfer_pc_n_21 1 1 1 2100 898n
load net SystolicCore0|mem2serial_transfer_pc_n_22 -attr @name mem2serial_transfer_pc_n_22 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_401_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[2]_rep__1_0
netloc SystolicCore0|mem2serial_transfer_pc_n_22 1 1 1 1640 1018n
load net SystolicCore0|mem2serial_transfer_pc_n_23 -attr @name mem2serial_transfer_pc_n_23 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_281_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[2]_rep__2_0
netloc SystolicCore0|mem2serial_transfer_pc_n_23 1 1 1 1460 998n
load net SystolicCore0|mem2serial_transfer_pc_n_24 -attr @name mem2serial_transfer_pc_n_24 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_705_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[2]_rep__3_0
netloc SystolicCore0|mem2serial_transfer_pc_n_24 1 1 1 1800 1158n
load net SystolicCore0|mem2serial_transfer_pc_n_25 -attr @name mem2serial_transfer_pc_n_25 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_649_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[2]_rep__4_0
netloc SystolicCore0|mem2serial_transfer_pc_n_25 1 1 1 1560 1138n
load net SystolicCore0|mem2serial_transfer_pc_n_26 -attr @name mem2serial_transfer_pc_n_26 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_433_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[2]_rep__5_0
netloc SystolicCore0|mem2serial_transfer_pc_n_26 1 1 1 1960 1038n
load net SystolicCore0|mem2serial_transfer_pc_n_27 -attr @name mem2serial_transfer_pc_n_27 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_569_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[2]_rep__6_0
netloc SystolicCore0|mem2serial_transfer_pc_n_27 1 1 1 2120 1078n
load net SystolicCore0|mem2serial_transfer_pc_n_28 -attr @name mem2serial_transfer_pc_n_28 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_609_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[2]_rep__7_0
netloc SystolicCore0|mem2serial_transfer_pc_n_28 1 1 1 2020 1098n
load net SystolicCore0|mem2serial_transfer_pc_n_29 -attr @name mem2serial_transfer_pc_n_29 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_948_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[1]_rep_0
netloc SystolicCore0|mem2serial_transfer_pc_n_29 1 1 1 1480 1198n
load net SystolicCore0|mem2serial_transfer_pc_n_30 -attr @name mem2serial_transfer_pc_n_30 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_916_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[1]_rep__0_0
netloc SystolicCore0|mem2serial_transfer_pc_n_30 1 1 1 1660 838n
load net SystolicCore0|mem2serial_transfer_pc_n_31 -attr @name mem2serial_transfer_pc_n_31 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_884_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[1]_rep__1_0
netloc SystolicCore0|mem2serial_transfer_pc_n_31 1 1 1 2060 858n
load net SystolicCore0|mem2serial_transfer_pc_n_32 -attr @name mem2serial_transfer_pc_n_32 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_1278_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[1]_rep__3_0
netloc SystolicCore0|mem2serial_transfer_pc_n_32 1 1 1 2040 898n
load net SystolicCore0|mem2serial_transfer_pc_n_33 -attr @name mem2serial_transfer_pc_n_33 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_1082_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[1]_rep__4_0
netloc SystolicCore0|mem2serial_transfer_pc_n_33 1 1 1 1580 918n
load net SystolicCore0|mem2serial_transfer_pc_n_34 -attr @name mem2serial_transfer_pc_n_34 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_1029_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[1]_rep__5_0
netloc SystolicCore0|mem2serial_transfer_pc_n_34 1 1 1 1820 938n
load net SystolicCore0|mem2serial_transfer_pc_n_35 -attr @name mem2serial_transfer_pc_n_35 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_833_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[1]_rep__6_0
netloc SystolicCore0|mem2serial_transfer_pc_n_35 1 1 1 1500 958n
load net SystolicCore0|mem2serial_transfer_pc_n_36 -attr @name mem2serial_transfer_pc_n_36 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_776_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[1]_rep__7_0
netloc SystolicCore0|mem2serial_transfer_pc_n_36 1 1 1 1900 978n
load net SystolicCore0|mem2serial_transfer_pc_n_37 -attr @name mem2serial_transfer_pc_n_37 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_1748_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[1]_rep__8_0
netloc SystolicCore0|mem2serial_transfer_pc_n_37 1 1 1 1440 998n
load net SystolicCore0|mem2serial_transfer_pc_n_38 -attr @name mem2serial_transfer_pc_n_38 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_1679_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[1]_rep__9_0
netloc SystolicCore0|mem2serial_transfer_pc_n_38 1 1 1 1620 1018n
load net SystolicCore0|mem2serial_transfer_pc_n_39 -attr @name mem2serial_transfer_pc_n_39 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_1627_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[1]_rep__10_0
netloc SystolicCore0|mem2serial_transfer_pc_n_39 1 1 1 1920 1038n
load net SystolicCore0|mem2serial_transfer_pc_n_40 -attr @name mem2serial_transfer_pc_n_40 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_1562_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[1]_rep__11_0
netloc SystolicCore0|mem2serial_transfer_pc_n_40 1 1 1 1880 1058n
load net SystolicCore0|mem2serial_transfer_pc_n_41 -attr @name mem2serial_transfer_pc_n_41 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_1254_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[1]_rep__12_0
netloc SystolicCore0|mem2serial_transfer_pc_n_41 1 1 1 2000 1078n
load net SystolicCore0|mem2serial_transfer_pc_n_42 -attr @name mem2serial_transfer_pc_n_42 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_1185_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[1]_rep__13_0
netloc SystolicCore0|mem2serial_transfer_pc_n_42 1 1 1 1980 1098n
load net SystolicCore0|mem2serial_transfer_pc_n_43 -attr @name mem2serial_transfer_pc_n_43 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_1517_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[1]_rep__14_0
netloc SystolicCore0|mem2serial_transfer_pc_n_43 1 1 1 1700 1118n
load net SystolicCore0|mem2serial_transfer_pc_n_44 -attr @name mem2serial_transfer_pc_n_44 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_1460_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[1]_rep__15_0
netloc SystolicCore0|mem2serial_transfer_pc_n_44 1 1 1 1540 1138n
load net SystolicCore0|mem2serial_transfer_pc_n_45 -attr @name mem2serial_transfer_pc_n_45 -pin SystolicCore0|DUT_MatrixMultiplyM0 sdata_tx_out_reg_i_1392_0 -pin SystolicCore0|mem2serial_transfer_pc i_counter_reg[1]_rep__16_0
netloc SystolicCore0|mem2serial_transfer_pc_n_45 1 1 1 1780 1158n
load net SystolicCore0|mem_fsm[0] -attr @rip mem_fsm_reg[1]_0[0] -attr @name mem_fsm[0] -pin SystolicCore0|serial2mem_opA mem_fsm_reg[1]_0[0] -pin SystolicCore0|systolicControlUnit_Global FSM_onehot_fsm_unit_control_reg[1]_0[0]
load net SystolicCore0|mem_fsm[1] -attr @rip mem_fsm_reg[1]_0[1] -attr @name mem_fsm[1] -pin SystolicCore0|serial2mem_opA mem_fsm_reg[1]_0[1] -pin SystolicCore0|serial2mem_opB FSM_onehot_fsm_unit_control_next_reg[2]_i_1[0]
load net SystolicCore0|out_clock_ref_reg -attr @name out_clock_ref_reg -hierPin SystolicCore0 out_clock_ref_reg -pin SystolicCore0|clock_hate_pc out_clock_ref_reg_0
netloc SystolicCore0|out_clock_ref_reg 1 5 1 5450 558n
load net SystolicCore0|ready_rx_out_reg -attr @name ready_rx_out_reg -hierPin SystolicCore0 ready_rx_out_reg -pin SystolicCore0|systolicControlUnit_Global ready_rx_out_reg
netloc SystolicCore0|ready_rx_out_reg 1 5 1 N 578
load net SystolicCore0|serial2mem_opA_n_34 -attr @name serial2mem_opA_n_34 -pin SystolicCore0|serial2mem_opA cnt_reg[4]_0 -pin SystolicCore0|systolicControlUnit_Global FSM_onehot_fsm_unit_control_reg[1]_1
netloc SystolicCore0|serial2mem_opA_n_34 1 4 1 4500 518n
load net SystolicCore0|serial2mem_opA_n_35 -attr @name serial2mem_opA_n_35 -pin SystolicCore0|serial2mem_opA cnt_shift_reg[3]_0 -pin SystolicCore0|systolicControlUnit_Global mem
netloc SystolicCore0|serial2mem_opA_n_35 1 4 1 4540 578n
load net SystolicCore0|serial2mem_opA_n_36 -attr @name serial2mem_opA_n_36 -pin SystolicCore0|serial2mem_opA mem_fsm_reg[1]_1 -pin SystolicCore0|systolicControlUnit_Global buf_data_reg[0]
netloc SystolicCore0|serial2mem_opA_n_36 1 4 1 4560 578n
load net SystolicCore0|serial2mem_opA_n_37 -attr @name serial2mem_opA_n_37 -pin SystolicCore0|DUT_MatrixMultiplyM0 FSM_onehot_fsm_unit_control_reg[2]_0 -pin SystolicCore0|serial2mem_opA cnt_reg[3]_0
netloc SystolicCore0|serial2mem_opA_n_37 1 1 4 2120 498 NJ 498 3770J 418 4460
load net SystolicCore0|serial2mem_opB_n_0 -attr @rip E[0] -attr @name serial2mem_opB_n_0 -pin SystolicCore0|serial2mem_opA E[0] -pin SystolicCore0|serial2mem_opB E[0]
netloc SystolicCore0|serial2mem_opB_n_0 1 3 1 3790 238n
load net SystolicCore0|serial2mem_opB_n_33 -attr @name serial2mem_opB_n_33 -pin SystolicCore0|serial2mem_opB cnt_shift_reg[3]_0 -pin SystolicCore0|systolicControlUnit_Global mem_0
netloc SystolicCore0|serial2mem_opB_n_33 1 3 2 NJ 278 4620
load net SystolicCore0|serial2mem_opB_n_34 -attr @name serial2mem_opB_n_34 -pin SystolicCore0|DUT_MatrixMultiplyM0 FSM_onehot_fsm_unit_control_reg[2] -pin SystolicCore0|serial2mem_opB mem_fsm_reg[1]_0 -pin SystolicCore0|systolicControlUnit_Global FSM_onehot_fsm_unit_control_reg[1]_2
netloc SystolicCore0|serial2mem_opB_n_34 1 1 4 2160 438 NJ 438 3670 298 4640
load net SystolicCore0|serial2mem_opa_in_data -attr @rip data_rx_out_reg[0]_1[0] -attr @name serial2mem_opa_in_data -pin SystolicCore0|serial2mem_opA D[0] -pin SystolicCore0|systolicControlUnit_Global data_rx_out_reg[0]_1[0]
netloc SystolicCore0|serial2mem_opa_in_data 1 3 3 3810 378 NJ 378 5330
load net SystolicCore0|serial2mem_opb_in_data -attr @rip data_rx_out_reg[0]_0[0] -attr @name serial2mem_opb_in_data -pin SystolicCore0|serial2mem_opB D[0] -pin SystolicCore0|systolicControlUnit_Global data_rx_out_reg[0]_0[0]
netloc SystolicCore0|serial2mem_opb_in_data 1 2 4 2920 478 3750J 358 NJ 358 5410
load net SystolicCore0|single_port_ram_di[0] -attr @rip data_rx_out_reg[0][0] -attr @name single_port_ram_di[0] -pin SystolicCore0|serial2mem_opB dina[0] -pin SystolicCore0|systolicControlUnit_Global data_rx_out_reg[0][0]
netloc SystolicCore0|single_port_ram_di[0] 1 2 4 2940 458 3730J 338 NJ 338 5450
load net SystolicCore0|single_port_ram_di_0[0] -attr @rip dina[0] -attr @name single_port_ram_di_0[0] -pin SystolicCore0|serial2mem_opA dina[0] -pin SystolicCore0|systolicControlUnit_Global dina[0]
netloc SystolicCore0|single_port_ram_di_0[0] 1 3 3 3830 398 NJ 398 5310
load net SystolicCore0|single_port_ram_we -attr @rip wea[0] -attr @name single_port_ram_we -pin SystolicCore0|serial2mem_opA wea[0] -pin SystolicCore0|serial2mem_opB wea[0] -pin SystolicCore0|systolicControlUnit_Global wea[0]
netloc SystolicCore0|single_port_ram_we 1 2 4 3020 638 3710 838 NJ 838 5310
load net SystolicCore0|systolicControlUnit_Global_n_4 -attr @rip Q[2] -attr @name systolicControlUnit_Global_n_4 -pin SystolicCore0|DUT_MatrixMultiplyM0 FSM_onehot_fsm_unit_control_reg[3][2] -pin SystolicCore0|systolicControlUnit_Global Q[2]
load net SystolicCore0|systolicControlUnit_Global_n_5 -attr @rip Q[1] -attr @name systolicControlUnit_Global_n_5 -pin SystolicCore0|DUT_MatrixMultiplyM0 FSM_onehot_fsm_unit_control_reg[3][1] -pin SystolicCore0|serial2mem_opA serial2mem_opb_valid_i_reg[1] -pin SystolicCore0|systolicControlUnit_Global Q[1]
load net SystolicCore0|systolicControlUnit_mem2serial_rvalid_o -attr @name systolicControlUnit_mem2serial_rvalid_o -pin SystolicCore0|DUT_MatrixMultiplyM0 systolicControlUnit_mem2serial_rvalid_o -pin SystolicCore0|mem2serial_transfer_pc systolicControlUnit_mem2serial_rvalid_o
netloc SystolicCore0|systolicControlUnit_mem2serial_rvalid_o 1 1 1 N 1558
load net SystolicCore0|systolicControlUnit_serial2mem_opa_valid_i -attr @name systolicControlUnit_serial2mem_opa_valid_i -pin SystolicCore0|serial2mem_opA systolicControlUnit_serial2mem_opa_valid_i -pin SystolicCore0|systolicControlUnit_Global systolicControlUnit_serial2mem_opa_valid_i
netloc SystolicCore0|systolicControlUnit_serial2mem_opa_valid_i 1 3 3 3830 778 NJ 778 5410
load net SystolicCore0|systolicControlUnit_serial2mem_opb_rw -attr @name systolicControlUnit_serial2mem_opb_rw -pin SystolicCore0|serial2mem_opA systolicControlUnit_serial2mem_opb_rw -pin SystolicCore0|serial2mem_opB systolicControlUnit_serial2mem_opb_rw -pin SystolicCore0|systolicControlUnit_Global systolicControlUnit_serial2mem_opb_rw
netloc SystolicCore0|systolicControlUnit_serial2mem_opb_rw 1 2 4 2980 598 3790 798 NJ 798 5390
load net SystolicCore0|systolicControlUnit_serial2mem_opb_valid_i -attr @name systolicControlUnit_serial2mem_opb_valid_i -pin SystolicCore0|serial2mem_opB systolicControlUnit_serial2mem_opb_valid_i -pin SystolicCore0|systolicControlUnit_Global systolicControlUnit_serial2mem_opb_valid_i
netloc SystolicCore0|systolicControlUnit_serial2mem_opb_valid_i 1 2 4 3000 678 3650J 738 NJ 738 5370
load net SystolicCore0|systolicControlUnit_syst_valid_i -attr @name systolicControlUnit_syst_valid_i -pin SystolicCore0|DUT_MatrixMultiplyM0 systolicControlUnit_syst_valid_i -pin SystolicCore0|serial2mem_opA systolicControlUnit_syst_valid_i -pin SystolicCore0|serial2mem_opB systolicControlUnit_syst_valid_i -pin SystolicCore0|systolicControlUnit_Global systolicControlUnit_syst_valid_i
netloc SystolicCore0|systolicControlUnit_syst_valid_i 1 1 5 2200 618 2880 618 3730 818 NJ 818 5350
load net SystolicCore0|systolicControlUnit_uart_valid_tx_in -attr @name systolicControlUnit_uart_valid_tx_in -pin SystolicCore0|mem2serial_transfer_pc systolicControlUnit_uart_valid_tx_in -pin SystolicCore0|systolicControlUnit_Global systolicControlUnit_uart_valid_tx_in -pin SystolicCore0|uart_systolic_core systolicControlUnit_uart_valid_tx_in
netloc SystolicCore0|systolicControlUnit_uart_valid_tx_in 1 0 6 800 1618 NJ 1618 NJ 1618 3790 878 4680J 858 5330
load net SystolicCore0|uart_data_rx_out -attr @name uart_data_rx_out -pin SystolicCore0|systolicControlUnit_Global uart_data_rx_out -pin SystolicCore0|uart_systolic_core uart_data_rx_out
netloc SystolicCore0|uart_data_rx_out 1 4 1 4660 678n
load net SystolicCore0|uart_data_tx_in[0] -attr @rip uart_data_tx_in[0] -attr @name uart_data_tx_in[0] -pin SystolicCore0|DUT_MatrixMultiplyM0 uart_data_tx_in[0] -pin SystolicCore0|uart_systolic_core uart_data_tx_in[0]
load net SystolicCore0|uart_data_tx_in[1] -attr @rip uart_data_tx_in[1] -attr @name uart_data_tx_in[1] -pin SystolicCore0|DUT_MatrixMultiplyM0 uart_data_tx_in[1] -pin SystolicCore0|uart_systolic_core uart_data_tx_in[1]
load net SystolicCore0|uart_data_tx_in[2] -attr @rip uart_data_tx_in[2] -attr @name uart_data_tx_in[2] -pin SystolicCore0|DUT_MatrixMultiplyM0 uart_data_tx_in[2] -pin SystolicCore0|uart_systolic_core uart_data_tx_in[2]
load net SystolicCore0|uart_data_tx_in[3] -attr @rip uart_data_tx_in[3] -attr @name uart_data_tx_in[3] -pin SystolicCore0|DUT_MatrixMultiplyM0 uart_data_tx_in[3] -pin SystolicCore0|uart_systolic_core uart_data_tx_in[3]
load net SystolicCore0|uart_data_tx_in[4] -attr @rip uart_data_tx_in[4] -attr @name uart_data_tx_in[4] -pin SystolicCore0|DUT_MatrixMultiplyM0 uart_data_tx_in[4] -pin SystolicCore0|uart_systolic_core uart_data_tx_in[4]
load net SystolicCore0|uart_data_tx_in[5] -attr @rip uart_data_tx_in[5] -attr @name uart_data_tx_in[5] -pin SystolicCore0|DUT_MatrixMultiplyM0 uart_data_tx_in[5] -pin SystolicCore0|uart_systolic_core uart_data_tx_in[5]
load net SystolicCore0|uart_data_tx_in[6] -attr @rip uart_data_tx_in[6] -attr @name uart_data_tx_in[6] -pin SystolicCore0|DUT_MatrixMultiplyM0 uart_data_tx_in[6] -pin SystolicCore0|uart_systolic_core uart_data_tx_in[6]
load net SystolicCore0|uart_data_tx_in[7] -attr @rip uart_data_tx_in[7] -attr @name uart_data_tx_in[7] -pin SystolicCore0|DUT_MatrixMultiplyM0 uart_data_tx_in[7] -pin SystolicCore0|uart_systolic_core uart_data_tx_in[7]
load net SystolicCore0|uart_ready_rx_out -attr @name uart_ready_rx_out -pin SystolicCore0|systolicControlUnit_Global uart_ready_rx_out -pin SystolicCore0|uart_systolic_core uart_ready_rx_out
netloc SystolicCore0|uart_ready_rx_out 1 4 1 4700 698n
load net SystolicCore0|uart_rxd_out_OBUF -attr @name uart_rxd_out_OBUF -hierPin SystolicCore0 uart_rxd_out_OBUF -pin SystolicCore0|uart_systolic_core uart_rxd_out_OBUF
netloc SystolicCore0|uart_rxd_out_OBUF 1 4 2 N 1058 NJ
load net SystolicCore0|uart_txd_in_IBUF -attr @name uart_txd_in_IBUF -hierPin SystolicCore0 uart_txd_in_IBUF -pin SystolicCore0|uart_systolic_core uart_txd_in_IBUF
netloc SystolicCore0|uart_txd_in_IBUF 1 0 4 NJ 1638 NJ 1638 NJ 1638 3830
load netBundle @SystolicCore0|fsm_unit_control 2 SystolicCore0|fsm_unit_control_next__0[3] SystolicCore0|fsm_unit_control_next__0[2] -autobundled
netbloc @SystolicCore0|fsm_unit_control 1 2 3 NJ 1098 3770J 938 4520
load netBundle @SystolicCore0|DUT_MatrixMultip 2 SystolicCore0|DUT_MatrixMultiplyM0_n_2 SystolicCore0|DUT_MatrixMultiplyM0_n_3 -autobundled
netbloc @SystolicCore0|DUT_MatrixMultip 1 2 2 2820 518 NJ
load netBundle @SystolicCore0|uart_data_tx_in 8 SystolicCore0|uart_data_tx_in[7] SystolicCore0|uart_data_tx_in[6] SystolicCore0|uart_data_tx_in[5] SystolicCore0|uart_data_tx_in[4] SystolicCore0|uart_data_tx_in[3] SystolicCore0|uart_data_tx_in[2] SystolicCore0|uart_data_tx_in[1] SystolicCore0|uart_data_tx_in[0] -autobundled
netbloc @SystolicCore0|uart_data_tx_in 1 2 2 NJ 1138 3810
load netBundle @SystolicCore0|j_counter 5 SystolicCore0|j_counter[4] SystolicCore0|j_counter[3] SystolicCore0|j_counter[2] SystolicCore0|j_counter[1] SystolicCore0|j_counter[0] -autobundled
netbloc @SystolicCore0|j_counter 1 1 1 N 818
load netBundle @SystolicCore0|i_counter 5 SystolicCore0|i_counter[4] SystolicCore0|i_counter[3] SystolicCore0|i_counter[2] SystolicCore0|i_counter[1] SystolicCore0|i_counter[0] -autobundled
netbloc @SystolicCore0|i_counter 1 1 1 2140 978n
load netBundle @SystolicCore0|a_load0 32 SystolicCore0|a_load0[31] SystolicCore0|a_load0[30] SystolicCore0|a_load0[29] SystolicCore0|a_load0[28] SystolicCore0|a_load0[27] SystolicCore0|a_load0[26] SystolicCore0|a_load0[25] SystolicCore0|a_load0[24] SystolicCore0|a_load0[23] SystolicCore0|a_load0[22] SystolicCore0|a_load0[21] SystolicCore0|a_load0[20] SystolicCore0|a_load0[19] SystolicCore0|a_load0[18] SystolicCore0|a_load0[17] SystolicCore0|a_load0[16] SystolicCore0|a_load0[15] SystolicCore0|a_load0[14] SystolicCore0|a_load0[13] SystolicCore0|a_load0[12] SystolicCore0|a_load0[11] SystolicCore0|a_load0[10] SystolicCore0|a_load0[9] SystolicCore0|a_load0[8] SystolicCore0|a_load0[7] SystolicCore0|a_load0[6] SystolicCore0|a_load0[5] SystolicCore0|a_load0[4] SystolicCore0|a_load0[3] SystolicCore0|a_load0[2] SystolicCore0|a_load0[1] SystolicCore0|a_load0[0] -autobundled
netbloc @SystolicCore0|a_load0 1 1 4 2180 538 2840J 658 3690J 718 4440
load netBundle @SystolicCore0|mem_fsm 2 SystolicCore0|mem_fsm[1] SystolicCore0|mem_fsm[0] -autobundled
netbloc @SystolicCore0|mem_fsm 1 2 3 2960 398 3710J 318 4480
load netBundle @SystolicCore0|b_load0 32 SystolicCore0|b_load0[31] SystolicCore0|b_load0[30] SystolicCore0|b_load0[29] SystolicCore0|b_load0[28] SystolicCore0|b_load0[27] SystolicCore0|b_load0[26] SystolicCore0|b_load0[25] SystolicCore0|b_load0[24] SystolicCore0|b_load0[23] SystolicCore0|b_load0[22] SystolicCore0|b_load0[21] SystolicCore0|b_load0[20] SystolicCore0|b_load0[19] SystolicCore0|b_load0[18] SystolicCore0|b_load0[17] SystolicCore0|b_load0[16] SystolicCore0|b_load0[15] SystolicCore0|b_load0[14] SystolicCore0|b_load0[13] SystolicCore0|b_load0[12] SystolicCore0|b_load0[11] SystolicCore0|b_load0[10] SystolicCore0|b_load0[9] SystolicCore0|b_load0[8] SystolicCore0|b_load0[7] SystolicCore0|b_load0[6] SystolicCore0|b_load0[5] SystolicCore0|b_load0[4] SystolicCore0|b_load0[3] SystolicCore0|b_load0[2] SystolicCore0|b_load0[1] SystolicCore0|b_load0[0] -autobundled
netbloc @SystolicCore0|b_load0 1 1 3 2100 418 NJ 418 3630
load netBundle @SystolicCore0|systolicControlU 3 SystolicCore0|systolicControlUnit_Global_n_4 SystolicCore0|systolicControlUnit_Global_n_5 SystolicCore0|fsm_unit_control[1] -autobundled
netbloc @SystolicCore0|systolicControlU 1 1 5 2140 518 2800J 578 3810 758 NJ 758 5430
levelinfo -pg 1 0 40 270 770 5710 5920
levelinfo -hier SystolicCore0 * 1050 2490 3300 4110 4970 *
pagesize -pg 1 -db -bbox -sgen -130 0 6060 1680
pagesize -hier SystolicCore0 -db -bbox -sgen 770 118 5480 1648
show
zoom 0.257997
scrollpos -34 -193
#
# initialize ictrl to current module Arty7_top_sim work:Arty7_top_sim:NOFILE
ictrl init topinfo |
