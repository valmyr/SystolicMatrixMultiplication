module serial2mem#(
    parameter WIDTH = 4,
    parameter SIZE = 128
)(
    input  logic                  clock                                      ,
    input  logic                  uart_ready_rx_out                          ,  
    input  logic                  nreset                                     ,// r=1,w=0
    input  logic                  rw                                         , //Dado válido na entrada
    input  logic                  valid_i                                    , //Dado válido na entrada
    input  logic                  rready_i                                   , //Pronto para receber uma resposta
    output logic                  rvalid_o                                   , //Resposta Válida(Operação concluida)
    output logic                  ready_o                                    , //Pronto para receber um dado valido na entrada
    input  logic [WIDTH-1:0]      in_data                                    ,
    output logic [SIZE*WIDTH-1:0] out_data                                   ,
    output logic [WIDTH*SIZE-1:0] single_port_ram_di                        
   // output logic [(2*WIDTH-1)*SIZE*SIZE-1:0]    fifo_d                          
);

logic [$clog2(2*SIZE)-1:0]      cnt, next_cnt                                   ;
logic [$clog2(SIZE)-1:0]  cnt_shift, next_cnt_shift                       ;
enum {IDLE, WRITE, READ,DONE}   mem_fsm,next_mem_fsm                            ;
logic                           single_port_ram_clock                           ;
logic                           single_port_ram_clockb                           ;
logic                           single_port_ram_nreset                          ;
logic                           single_port_ram_en                              ;
logic                           single_port_ram_we                              ;
logic [$clog2(2*SIZE)-1:0]    single_port_ram_addr                            ;
//logic [WIDTH*SIZE-1:0]          single_port_ram_di                              ;
logic [WIDTH*SIZE-1:0]          single_port_ram_dout                            ;
//logic [WIDTH*SIZE-1:0]          single_port_ram_doutb                            ;
(*dont_touch = "true"*)
logic [WIDTH*SIZE-1:0] buf_data                    ;
logic [WIDTH*SIZE-1:0]          next_buf_data                                   ;


/*

dual_porte_ram ram (
  .clka         (   single_port_ram_clock       ),            // input wire clka
  .ena          (   single_port_ram_en          ),              // input wire ena
  .wea          (   ~single_port_ram_we         ),              // input wire [0 : 0] wea
  .web          (   ~single_port_ram_we         ),              // input wire [0 : 0] wea
  .addra        (   single_port_ram_addr        ),          // input wire [2 : 0] addra
  .dina         (   single_port_ram_di          ),            // input wire [15 : 0] dina
  .douta        (                               ),
  .clkb         (   single_port_ram_clockb      ),            // input wire clkb
  .rsta         (  ~single_port_ram_nreset      ),            // input wire rstb
  .rstb         (  ~single_port_ram_nreset      ),            // input wire rstb
  .enb          (   single_port_ram_en          ),              // input wire enb
  .addrb        (   single_port_ram_addr        ),          // input wire [2 : 0] addrb
  .doutb        (   single_port_ram_doutb       ),          // output wire [15 : 0] doutb
  .dinb         (   single_port_ram_di          ),
  .rsta_busy    (                               ),  // output wire rsta_busy
  .rstb_busy    (                               )  // output wire rstb_busy
);

*/
ram_dual_port ram (
  .clka       (     single_port_ram_clock          ),  // input wire clka
  .ena        (     single_port_ram_en             ),  // input wire ena
  .wea        (     ~single_port_ram_we            ),  // input wire [0 : 0] wea
  .addra      (     single_port_ram_addr           ),  // input wire [2 : 0] addra
  .dina       (     single_port_ram_di             ),  // input wire [15 : 0] dina
  .clkb       (     single_port_ram_clockb         ),  // input wire clkb
  .rstb       (     ~single_port_ram_nreset        ),  // input wire rstb
  .enb        (     single_port_ram_we             ),  // input wire enb
  .addrb      (     single_port_ram_addr           ),  // input wire [2 : 0] addrb
  .doutb      (     single_port_ram_dout           ),  // output wire [15 : 0] doutb
  .rsta_busy  (                                    ), // output wire rsta_busy
  .rstb_busy  (                                    )  // output wire rstb_busy
);




/*
ram_single_port #(.WIDTH(WIDTH*SIZE),.SIZE(2*(SIZE)-1))mem(
    .clock (single_port_ram_clock   )                        ,  
    .nreset(single_port_ram_nreset  )                        ,  
    .en    (single_port_ram_en      )                        ,
    .we    (single_port_ram_we      )                        ,
    .addr  (single_port_ram_addr    )                        ,
    .di    (single_port_ram_di      )                        ,
    .dout  (single_port_ram_dout    )                        
);*/
/*
ram_single_port mem (
   .clka     (single_port_ram_clock     ),              // input wire clka
   .rsta     (~single_port_ram_nreset   ),              // input wire rsta
   .ena      (single_port_ram_en        ),              // input wire ena
   .wea      (single_port_ram_we        ),              // input wire [0 : 0] wea
   .addra    (single_port_ram_addr      ),              // input wire [6 : 0] addra
   .dina     (single_port_ram_di        ),              // input wire [31 : 0] dina
   .douta    (single_port_ram_dout      ),              // output wire [31 : 0] douta
   .rsta_busy(                          )  // output wire rsta_busy
);*/
    logic clock_inter;
    assign single_port_ram_nreset   = nreset                                    ;
    assign single_port_ram_clock    = uart_ready_rx_out                         ;
    //assign single_port_ram_en       = cnt_shift == SIZE-1 | mem_fsm == READ     ;
    assign single_port_ram_we       = rw                                       ;
    assign single_port_ram_addr     = cnt                                       ;
    assign single_port_ram_clockb   = clock                                     ;
  ///  assign single_port_ram_di       = cnt_shift == SIZE-1 ? buf_data : single_port_ram_di   ;
    //assign out_data                 = mem_fsm == READ && cnt != 0 ? single_port_ram_dout : out_data;
    assign clock_inter = rw ? clock : single_port_ram_clock    ;

    //always_ff@(posedge single_port_ram_clock, negedge nreset)begin
    //    if(!nreset)
    //        fifo_d <=0;
    //    else fifo_d <=cnt_shift == SIZE-1 ? {fifo_d[(2*WIDTH-1)*SIZE*SIZE-(WIDTH)*SIZE:0],single_port_ram_di}:fifo_d;
    //end
    always_ff@(posedge clock_inter, negedge nreset)begin
        if(!nreset)begin
            cnt             <= 0;
            cnt_shift       <= 0;
            buf_data        <= 0;
        end else begin                                                    
            buf_data        <= mem_fsm != DONE ? next_buf_data    :    0                                                                  ;  
            mem_fsm         <= next_mem_fsm                                                                ;
            cnt             <= mem_fsm != DONE ? next_cnt         :    0                                                                 ;
            cnt_shift       <= mem_fsm != DONE ? next_cnt_shift   :    0                                                                 ;

        end
    end

    //assign next_buf_data[WIDTH*(cnt_shift+1):WIDTH*cnt_shift] = in_data << WIDTH*cnt_shift;
   // assign next_buf_data = {buf_data,in_data<<WIDTH*cnt_shift};// | in_data << (WIDTH * cnt_shift);
    assign next_buf_data =(mem_fsm == WRITE)?  {buf_data[WIDTH*SIZE-WIDTH:0],in_data} : 0;
 //   assign next_buf_data = (mem_fsm == WRITE)&& !(cnt_shift == SIZE-1) ? buf_data | in_data << (WIDTH * (SIZE -1-cnt_shift)): buf_data | in_data  ;
    always_comb case(mem_fsm)
        IDLE:begin
            ready_o         = 1                                ;
            rvalid_o        = 0                                ;

            if(valid_i)begin                        
                if(rw)begin
                        next_mem_fsm = READ;
                        next_cnt        = 0                     ;
                        next_cnt_shift =  0                     ;
                        single_port_ram_en       = 1;


                end else  begin
                        next_mem_fsm = WRITE;
                        next_cnt        = 0                     ;
                        next_cnt_shift =  0                     ;
                        single_port_ram_en       = 1;

                end
            end else begin                          
                        next_mem_fsm   = IDLE                    ;
                        next_cnt       = 0                       ;
                        next_cnt_shift = 0                       ;
                        single_port_ram_en       = 0;

            end
            out_data                 =  0                        ;
            single_port_ram_di       =  0                        ;
        end
        WRITE:begin
            ready_o                  = 0                                                         ;
            rvalid_o                 = 0                                                         ;
            next_cnt                 = cnt_shift == SIZE-1 ? cnt + 1: cnt                        ;
            next_cnt_shift           = cnt_shift + 1                                             ;
            next_mem_fsm             = cnt!=2*SIZE-1 ? WRITE: DONE                               ;    
            out_data                 =  0                                                        ;
            single_port_ram_di       =  (cnt_shift == SIZE-1 ? buf_data : single_port_ram_di)    ;
            single_port_ram_en       = 1;

        end
        READ:begin
            ready_o        = 0                                                                   ;
            rvalid_o       = cnt!=2*SIZE-1 ? 0 : 1                                               ;
            next_cnt       = cnt + 1                                                             ;
            next_mem_fsm   = cnt!=2*SIZE-1 ? READ: DONE                                          ;
            next_cnt_shift = 0                                                                   ; 
            out_data       = cnt !=0  ?  single_port_ram_dout: 0                                 ;
            single_port_ram_en       = 1;

        end
        DONE:begin  
            ready_o                  = 0                                                         ;
            rvalid_o                 = 1                                                         ;
            next_cnt                 = 0                                                         ;
            next_mem_fsm             = rready_i ? IDLE : DONE                                    ;
            next_cnt_shift           = 0                                                         ;
            out_data                 = 0                                                         ;
            single_port_ram_di       = 0                                                         ;
            single_port_ram_en       =0 ;


        end
        default:begin
            next_mem_fsm = IDLE;
            ready_o         = 1                     ;
            rvalid_o        = 0                     ;
            next_cnt        = 0                     ;
            next_cnt_shift =  0                     ;
            out_data       =  0                     ;
            single_port_ram_di       = 0  ;
            single_port_ram_en       = 0;


        end
    endcase
endmodule