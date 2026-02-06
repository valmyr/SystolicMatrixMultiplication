/// Lembre-se altere o clock da uart
`timescale 1ns / 100ps
module tb;    
  logic clock   , nreset;
  logic clock_tb;
  logic  nreset_arty;
  parameter SIZE_M = 16;
  parameter FRAME_START = 4;
  parameter SIZE_INPUT_SERIAL = (2*SIZE_M-1)*SIZE_M + FRAME_START;
  logic [7:0]INPUT_A [SIZE_INPUT_SERIAL-1:0];
  logic [7:0]INPUT_B [SIZE_INPUT_SERIAL-1:0];

  logic [7:0]INPUT_A1 [SIZE_INPUT_SERIAL-1:0];
  logic [7:0]INPUT_B1 [SIZE_INPUT_SERIAL-1:0];
  logic [$clog2(SIZE_INPUT_SERIAL):0]cnt1 ;
  logic [$clog2(SIZE_INPUT_SERIAL):0]cnt2 ;
  parameter  BYTESIZES = 8, OVERSAMPLING = 32, BAUDRATE = 115200,	COUNTER_CLOCK_INPUT = 100_000_000,CLOCK_REF=10_000_000;
  logic     inv_r;
  //--------------------------------------------------------------------------------------------------
  //Pinout UART
  logic                   tb_uart_clock                                      ;
  logic                   tb_uart_nreset                                     ;
 //pinout RX              tb_                                         ;
  logic                   tb_uart_sdata_rx_in                                ;
  logic                   tb_uart_valid_rx_in                                ;
  logic                   tb_uart_ready_rx_out                               ;
  logic [BYTESIZES-1:0]   tb_uart_data_rx_out                                ;
 //pinout TX              tb_                                         ;
  logic                   tb_uart_valid_tx_in                                ;
  logic [BYTESIZES-1:0]   tb_uart_data_tx_in                                 ;
  logic                   tb_uart_ready_tx_out                               ;
  logic                   tb_uart_sdata_tx_out                               ;


initial begin

end

  assign tb_uart_clock = clock;
  assign tb_uart_nreset = nreset;
  assign serial2mem_nreset =nreset;
  assign serial2mem_clock =clock;
  assign serial2mem_valid_i = 1;

  initial begin
    clock = 0;
    nreset = 1;
    nreset_arty = 1;
  inv_r = 0;

    $readmemh("testeINPUT_A1.mem",INPUT_A);
    $readmemh("testeINPUT_B1.mem",INPUT_B);
    $readmemh("testeINPUT_A.mem",INPUT_A1);
    $readmemh("testeINPUT_B.mem",INPUT_B1);
    #1 nreset =0;
       nreset_arty = 0;
    #1 nreset = 1;
       nreset_arty = 1;
  end

  always #(1501ps)clock=~clock;
  
  /*
  always #(1.5)clock=~clock;/*

  /*
  
  
  array([[159, 145, 116, 119],
       [124, 120, 103, 105],
       [174, 168, 123, 123],
       [ 78,  96,  41,  52]])

       
  */
  enum {SEND_OP,WAIT_CALC,WAIT_REQUEST,WAIT_NEW_OP} fsm_next_tb, fsm_tb;
  logic [31:0] cnt3,cnt4;
  logic [31:0] cnt3_next,cnt4_next;
  logic [31:0] cnt1_next,cnt2_next;
  logic inv;

  assign clock_tb = (fsm_tb != WAIT_REQUEST) ? tb_uart_ready_tx_out : tb_uart_ready_rx_out;
 // assign clock_tb = tb_uart_ready_tx_out ;
//
  //   █████████  █████ ██████   ██████ █████  █████ █████         █████████      ███████       ██████████      ███████       ███████████     ███████    ██████   █████ ███████████    ███████       ██████████   ██████████    █████   █████ █████  █████████  ███████████   █████████      ██████████      ███████       ███████████    █████████              ███ █████   █████    ███████     █████████  ███████████
  //  ███░░░░░███░░███ ░░██████ ██████ ░░███  ░░███ ░░███         ███░░░░░███   ███░░░░░███    ░░███░░░░███   ███░░░░░███    ░░███░░░░░███  ███░░░░░███ ░░██████ ░░███ ░█░░░███░░░█  ███░░░░░███    ░░███░░░░███ ░░███░░░░░█   ░░███   ░░███ ░░███  ███░░░░░███░█░░░███░░░█  ███░░░░░███    ░░███░░░░███   ███░░░░░███    ░░███░░░░░███  ███░░░░░███           ███░ ░░███   ░░███   ███░░░░░███  ███░░░░░███░█░░░███░░░█
  // ░███    ░░░  ░███  ░███░█████░███  ░███   ░███  ░███        ░███    ░███  ███     ░░███    ░███   ░░███ ███     ░░███    ░███    ░███ ███     ░░███ ░███░███ ░███ ░   ░███  ░  ███     ░░███    ░███   ░░███ ░███  █ ░     ░███    ░███  ░███ ░███    ░░░ ░   ░███  ░  ░███    ░███     ░███   ░░███ ███     ░░███    ░███    ░███ ███     ░░░          ███░    ░███    ░███  ███     ░░███░███    ░░░ ░   ░███  ░ 
  // ░░█████████  ░███  ░███░░███ ░███  ░███   ░███  ░███        ░███████████ ░███      ░███    ░███    ░███░███      ░███    ░██████████ ░███      ░███ ░███░░███░███     ░███    ░███      ░███    ░███    ░███ ░██████       ░███    ░███  ░███ ░░█████████     ░███     ░███████████     ░███    ░███░███      ░███    ░██████████ ░███                ███░      ░███████████ ░███      ░███░░█████████     ░███    
  //  ░░░░░░░░███ ░███  ░███ ░░░  ░███  ░███   ░███  ░███        ░███░░░░░███ ░███      ░███    ░███    ░███░███      ░███    ░███░░░░░░  ░███      ░███ ░███ ░░██████     ░███    ░███      ░███    ░███    ░███ ░███░░█       ░░███   ███   ░███  ░░░░░░░░███    ░███     ░███░░░░░███     ░███    ░███░███      ░███    ░███░░░░░░  ░███              ███░        ░███░░░░░███ ░███      ░███ ░░░░░░░░███    ░███    
  //  ███    ░███ ░███  ░███      ░███  ░███   ░███  ░███      █ ░███    ░███ ░░███     ███     ░███    ███ ░░███     ███     ░███        ░░███     ███  ░███  ░░█████     ░███    ░░███     ███     ░███    ███  ░███ ░   █     ░░░█████░    ░███  ███    ░███    ░███     ░███    ░███     ░███    ███ ░░███     ███     ░███        ░░███     ███   ███░          ░███    ░███ ░░███     ███  ███    ░███    ░███    
  // ░░█████████  █████ █████     █████ ░░████████   ███████████ █████   █████ ░░░███████░      ██████████   ░░░███████░      █████        ░░░███████░   █████  ░░█████    █████    ░░░███████░      ██████████   ██████████       ░░███      █████░░█████████     █████    █████   █████    ██████████   ░░░███████░      █████        ░░█████████  ███░            █████   █████ ░░░███████░  ░░█████████     █████   
  //  ░░░░░░░░░  ░░░░░ ░░░░░     ░░░░░   ░░░░░░░░   ░░░░░░░░░░░ ░░░░░   ░░░░░    ░░░░░░░       ░░░░░░░░░░      ░░░░░░░       ░░░░░           ░░░░░░░    ░░░░░    ░░░░░    ░░░░░       ░░░░░░░       ░░░░░░░░░░   ░░░░░░░░░░         ░░░      ░░░░░  ░░░░░░░░░     ░░░░░    ░░░░░   ░░░░░    ░░░░░░░░░░      ░░░░░░░       ░░░░░          ░░░░░░░░░  ░░░             ░░░░░   ░░░░░    ░░░░░░░     ░░░░░░░░░     ░░░░░    
                                                                                                                                                                                                                                                                                                                                                                                                                      
                                                                                                                                                                                                                                                                                                                                                                                                                      
                                                                                                                                                                                                                                                                                                                                                                                                                      
  //-------------------------------------------------------------------------------------------------------------------------------
   initial 
     forever begin
      @(posedge clock, negedge nreset)
      begin
        if(!nreset)begin
          cnt1               <= 0     ;
          cnt2               <= 0     ;
          cnt3               <= 0     ;
          cnt4               <= 0     ;
          cnt5               <= 0     ;
          tb_uart_data_tx_in <= 0     ;
          fsm_tb             <= SEND_OP;
          inv                <= 0;
        end else begin
          fsm_tb <= fsm_next_tb ;
          cnt1   <= cnt1_next   ;
          cnt2   <= cnt2_next   ;
          cnt3   <= cnt3_next   ;
          cnt4   <= cnt4_next   ;
          inv    <= cnt4 == SIZE_M*SIZE_M -1?   ~inv: inv;
           cnt5               <= cnt5 == 1312 ? 0 : cnt5+1     ;
          
        end
      end
     end

  always_comb
    case(fsm_tb)
        SEND_OP:begin
            cnt1_next               = (cnt1 == SIZE_INPUT_SERIAL) ?                             cnt1    : cnt1 +1   ;
            cnt2_next               = (cnt1 == SIZE_INPUT_SERIAL) && cnt2 != SIZE_INPUT_SERIAL-1? cnt2 +1 : cnt2      ;
            cnt3_next               = 0                                                                             ;
            cnt4_next               = 0                                                                             ;
            fsm_next_tb        = (cnt1 == SIZE_INPUT_SERIAL && cnt2 == SIZE_INPUT_SERIAL-1) ? WAIT_CALC: SEND_OP ;
            tb_uart_data_tx_in = inv ? ((cnt1!=SIZE_INPUT_SERIAL) ? INPUT_A[cnt1] : INPUT_B[cnt2]):((cnt1!=SIZE_INPUT_SERIAL) ? INPUT_A1[cnt1] : INPUT_B1[cnt2])                      ;
            /*
            case(inv)
              2'b1:begin
                tb_uart_data_tx_in = (cnt1!=SIZE_INPUT_SERIAL) ? INPUT_A[cnt1] : INPUT_B[cnt2]                     ;
              end
              2'b1:begin
                tb_uart_data_tx_in = (cnt1!=SIZE_INPUT_SERIAL) ? INPUT_A1[cnt1] : INPUT_B1[cnt2]                     ;
              end
            endcase
            */

        end
        WAIT_CALC:begin
            tb_uart_data_tx_in  =8'hea;
          //  case(cnt3)
          //      100:tb_uart_data_tx_in = 8'hea;
          //      101:tb_uart_data_tx_in = 8'hea;//adda_eaea
          //      102:tb_uart_data_tx_in = 8'had;//adda_eaea
          //      103:tb_uart_data_tx_in = 8'hda;//adda_eaea
          //      default:tb_uart_data_tx_in = 8'h00;//adda_eaea
          //  endcase
            
            fsm_next_tb         =cnt3 == 64 ? WAIT_REQUEST : WAIT_CALC;
            cnt3_next                =cnt3 + 1;
            cnt1_next                =0;
            cnt2_next                =0;
            cnt4_next                =0;
        end
        WAIT_REQUEST:begin
            tb_uart_data_tx_in =8'h00;
            cnt1_next               = 0      ;
            cnt2_next               = 0      ;
            cnt3_next               = 0      ;
            cnt4_next               = cnt4 +1;
            //fsm_next_tb        = WAIT_REQUEST;
            fsm_next_tb        = cnt4 == SIZE_M*SIZE_M -1? WAIT_NEW_OP :WAIT_REQUEST;
        end
        WAIT_NEW_OP:begin
            cnt3_next                =cnt3 + 1;
            cnt1_next                =0;
            cnt2_next                =0;
            cnt4_next                =0;
            fsm_next_tb        = cnt3 == 256 ? SEND_OP :WAIT_NEW_OP ;
        end
    endcase
  //-------------------------------------------------------------------------------------------------------------------------------
logic s_axis_tvalid;

assign s_axis_tvalid =1;

logic [63:0] cnt5,dout_mem;

always_ff@(posedge clock, negedge nreset)begin
    if(!nreset) cnt5 <= 0;
    else cnt5<= cnt5 ==111 ? 0:cnt5+1;
end 
matrix_in_memeory your_instance_name (
  .clka(clock),    // input wire clka
  .ena(1),      // input wire ena
  .wea(0),      // input wire [0 : 0] wea
  .addra(cnt5),  // input wire [9 : 0] addra
  .dina(0),    // input wire [7 : 0] dina
  .douta(dout_mem)  // output wire [7 : 0] douta
);

AXI_Stream_Systolic_Core Core0 (
        // Sinais de sistema
        .clock(clock),
        .resetn(nreset),

        // Interface Slave AXI Stream (Entrada)
        .s_axis_tvalid(1),
        .s_axis_tready(),
        .s_axis_tdata(dout_mem),
        .s_axis_tlast(1),
        // ... outros sinais opcionais como TUSER

        // Interface Master AXI Stream (Saída) 
        .m_axis_tvalid(),
        .m_axis_tready(1),
        .m_axis_tdata(),
        .m_axis_tlast()
        // ... outros sinais opcionais
);



endmodule