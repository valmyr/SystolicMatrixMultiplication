module mem#(
    parameter WIDTH = 8,
    parameter SIZE = 16
)(
    input  logic clock                           ,  
    input  logic nreset                          ,// r=1,w=0
    input  logic rw                              , //Dado válido na entrada
    input  logic valid_i                         , //Dado válido na entrada
    input  logic rready_i                        , //Pronto para receber uma resposta
    output logic rvalid_o                        , //Resposta Válida(Operação concluida)
    output logic ready_o                         , //Pronto para receber um dado valido na entrada
    input  logic [WIDTH-1:0] in_data             ,
    output logic [WIDTH-1:0] out_data  
);

    logic [WIDTH-1:0] mem [SIZE-1:0];
    logic [$clog2(SIZE)-1:0] cnt, next_cnt;
    enum {IDLE, WRITE, READ,DONE} mem_fsm,next_mem_fsm;
    always_ff@(posedge clock, negedge nreset)begin
        if(!nreset)begin
            cnt <= 0;
            for(integer i_rst = 0; i_rst < SIZE; i_rst++)
                mem[i_rst] <= '{default:0};
        end else begin
            cnt <= next_cnt;
            if(rw) out_data <= mem[cnt];
            else   mem[cnt] <= in_data;
            mem_fsm <= next_mem_fsm;
        end
    end

    always_comb case(mem_fsm)
        IDLE:begin
            ready_o         = 1;
            rvalid_o        = 0;
            next_cnt        = 0;
            if(valid_i)begin
                next_mem_fsm = rw ? READ : WRITE;
            end else begin
                next_mem_fsm  = IDLE;
            end
        end
        WRITE:begin
            ready_o        = 0;
            rvalid_o       = 0;
            next_cnt       = cnt + 1;
            next_mem_fsm   = next_cnt ? WRITE: DONE; 
        end
        READ:begin
            ready_o        = 0;
            rvalid_o       = 0;
            next_cnt       = cnt + 1;
            next_mem_fsm   = next_cnt ? READ: DONE; 
        end
        DONE:begin  
            ready_o        = 0;
            rvalid_o       = 1;
            next_cnt       = 0;
            next_mem_fsm   = rready_i ? IDLE : DONE;
        end
            
    endcase
endmodule