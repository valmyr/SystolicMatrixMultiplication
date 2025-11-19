module mem2seriala#(parameter SIZE=128,WIDTH=8)(
    input  logic             clock                           ,
    input  logic             nreset                          ,
    input  logic [WIDTH-1:0] pmatrix_in  [SIZE:0][SIZE:0]    ,
    input  logic valid_i                                     , //Dado válido na entrada
    input  logic rready_i                                    , //Pronto para receber uma resposta
    output logic rvalid_o                                    , //Resposta Válida(Operação concluida)
    output logic ready_o                                     , //Pronto para receber um dado valido na entrada
    (*dont_touch = "true"*) 
    output logic [WIDTH-1:0]      smatrix_out                     
);
(*dont_touch = "true"*) 
logic [WIDTH-1:0] pmatrix  [SIZE:0][SIZE:0]    ;

enum {IDLE_INDEX,COUNTER_INDEX,DONE_INDEX} mem2seriala_fsm,next_mem2seriala_fsm;
logic [$clog2(SIZE)-1:0] i_counter, j_counter;
logic [$clog2(SIZE)-1:0] next_i_counter, next_j_counter;
always_ff@(posedge clock, negedge nreset)begin
    if(!nreset)begin
        i_counter        <=0; 
        j_counter        <=0;

    end else begin
        i_counter        <=next_i_counter; 
        j_counter        <=next_j_counter;
        mem2seriala_fsm  <= next_mem2seriala_fsm;
        pmatrix  <= pmatrix_in;

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
            smatrix_out     = pmatrix_in[i_counter][j_counter];
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
//assign    smatrix_out     = pmatrix_in[i_counter][j_counter];
endmodule