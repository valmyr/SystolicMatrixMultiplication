module mem2seriala#(parameter SIZE=128,WIDTH=8)(
    input  logic             clock                           ,
    input  logic             nreset                          ,
    (*dont_touch = "true"*) 
    input  logic [WIDTH-1:0] pmatrix_in  [SIZE-1:0][SIZE-1:0]    ,
    input  logic valid_i                                     , //Dado válido na entrada
    input  logic rready_i                                    , //Pronto para receber uma resposta
    output logic rvalid_o                                    , //Resposta Válida(Operação concluida)
    output logic ready_o                                     , //Pronto para receber um dado valido na entrada
    (*dont_touch = "true"*) 
    output logic [WIDTH-1:0]      smatrix_out                ,
    output logic event_send_data         
);



enum {IDLE_INDEX,COUNTER_INDEX,DONE_INDEX} mem2seriala_fsm,next_mem2seriala_fsm;
logic [$clog2(SIZE)-1:0] i_counter, j_counter;
logic [$clog2(SIZE*SIZE)-1:0] k_counter_clock_base;
logic [$clog2(SIZE*SIZE)-1:0] next_k_counter_clock_base;


logic [$clog2(SIZE*SIZE)-1:0] k_counter_clock_slow;
logic [$clog2(SIZE*SIZE)-1:0] next_k_counter_clock_slow;
logic [$clog2(SIZE)-1:0] next_i_counter, next_j_counter;

logic last_event_send_data;
logic [16:0]pseudo_clock;
logic clockk;
always_ff@(posedge clock, negedge nreset)begin
    if(!nreset)begin
        pseudo_clock <=0;
    end else begin
        pseudo_clock<= pseudo_clock+1;
    end
end
assign clockk = pseudo_clock[16];
always_ff@(posedge clockk, negedge nreset)begin
    if(!nreset)begin
        i_counter        <=0; 
        j_counter        <=0;
        k_counter_clock_slow <= 0;
        last_event_send_data <= 0;
    end else begin
        i_counter        <=next_i_counter; 
        j_counter        <=next_j_counter;
        k_counter_clock_slow <= next_k_counter_clock_slow;
        mem2seriala_fsm  <= next_mem2seriala_fsm;

 //       (*dont_touch = "true"*) 
//        pmatrix  <= pmatrix_in;
        if(mem2seriala_fsm == COUNTER_INDEX)begin
            
            last_event_send_data <= ~last_event_send_data;
        end else begin
            last_event_send_data <= 0;
        end

    end
end


always_comb begin
    case(mem2seriala_fsm)
        IDLE_INDEX:begin
            ready_o = 1;
            rvalid_o = 0;
            next_mem2seriala_fsm = valid_i  ? COUNTER_INDEX: IDLE_INDEX;
            next_i_counter =0;
            next_j_counter =0;
            smatrix_out  = 8'hfe;
        end
        COUNTER_INDEX:begin
            ready_o = 0;
            rvalid_o = 0;
            next_j_counter = j_counter < SIZE  ? j_counter +1 : 0;
            next_i_counter = j_counter < SIZE -1? i_counter:i_counter+1  ;
            next_mem2seriala_fsm = i_counter >= SIZE -1 & j_counter >= SIZE-1 ? DONE_INDEX: COUNTER_INDEX;
            (*dont_touch = "true"*) 
            smatrix_out     = pmatrix_in[i_counter][j_counter];
            next_k_counter_clock_slow <= k_counter_clock_slow + 1;
        end
        DONE_INDEX:begin
            smatrix_out  = 8'h00;
            ready_o = 0;
            rvalid_o = 1;
            next_mem2seriala_fsm = rready_i ? IDLE_INDEX : DONE_INDEX; 
            next_i_counter = 0;
            next_j_counter = 0;
        end
        default:begin
            smatrix_out  = 8'hef;
            next_mem2seriala_fsm = IDLE_INDEX;
            ready_o = 1;
            rvalid_o = 0;
            next_i_counter =0;
            next_j_counter =0;
        end
    endcase
end
assign event_send_data = last_event_send_data;
ila_3 your_instance_name (
	.clk(clock), // input wire clk


	.probe0(smatrix_out), // input wire [7:0]  probe0  
	.probe1(i_counter), // input wire [7:0]  probe1 
	.probe2(j_counter), // input wire [7:0]  probe2 
	.probe3(mem2seriala_fsm), // input wire [7:0]  probe3 
	.probe4(valid_i), // input wire [0:0]  probe4 
	.probe5(rvalid_o), // input wire [0:0]  probe5 
	.probe6(event_send_data), // input wire [0:0]  probe6 
	.probe7(clockk) // input wire [0:0]  probe7
);
//assign    smatrix_out     = pmatrix_in[i_counter][j_counter];
endmodule