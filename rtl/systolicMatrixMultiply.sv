//============================================================
// Nome do Bloco    : SystolicMatrixMultiply + Serial + Handshake
// Versão           : 2.5
// Autor(a)         : Valmir Ferreira
// Data de Criação  : --/--/--
// Última Modificação: 03/10/2025
//
// Descrição:
//   Dada duas matrizes de ordem N, M1 e M2 cálcula a multplicação matricial. Serializando às matrizes de entrada;
//============================================================

module systolicMatrixMultiply#(
    parameter WIDTH = 8 , SIZE=64, WIDTHx = 4
)(
    input  logic                    clock                                  ,
    input  logic                    nreset                                 ,
    input  logic                    valid_i                                , //Dado válido na entrada
    input  logic                    rready_i                               , //Pronto para receber uma resposta                                                
    input  logic [WIDTHx*SIZE-1:0]  a_input                         	   ,
    input  logic [WIDTHx*SIZE-1:0]  b_input                         	   ,
    output logic                    rvalid_o                               , //Resposta Válida(Operação concluida)
    output logic                    ready_o                                , //Pronto para receber um dado valido na entrada
    output logic [WIDTH-1:0]        output_produc_a_b [SIZE-1:0][SIZE-1:0]
);


logic [$clog2(2*SIZE) :0]       counter_mult        , next_counter_mult                 ;
logic [$clog2(2*SIZE) :0]       counter_transfer_m  , next_counter_transfer_m           ;
logic [WIDTH-1:0]                       produc_a_b      [SIZE-1:0][SIZE-1:0]            ;
logic [WIDTHx-1:0]                      a_vec           [SIZE-1:0][SIZE-1:0]            ;
logic [WIDTHx-1:0]                      b_vec           [SIZE-1:0][SIZE-1:0]            ;
logic [SIZE*WIDTHx-1:0]                 a_load                                          ;
logic [SIZE*WIDTHx-1:0]                 b_load                                          ;
logic                                   ena_mac, next_ena_mac                           ;

enum {IDLE, LOAD_MULTI_MATRIX ,MULTI_MATRIX, DONE} currentStateSystolicControlUnit, nextStateSystolicControlUnit;
generate 
    genvar i,j;
        for(i =0; i < SIZE;i++)begin:CELULA_ROWS
            assign a_vec[0][i] = a_load[(i+1)*WIDTHx-1:(i+1)*WIDTHx-WIDTHx];
            assign b_vec[0][i] = b_load[(i+1)*WIDTHx-1:(i+1)*WIDTHx-WIDTHx];
            for(j =0; j < SIZE;j++)begin:CELULA_COLUMNS
                accumulator_cells #(.WIDTH(WIDTH),.WIDTHx(WIDTHx)) MAC(    
                    .clock    (     clock                                              ),
                    .nreset   (     nreset                                             ),
                    .ena      (     ena_mac                                            ),
                    .a        (     a_vec[i][j]                                        ),
                    .b        (     b_vec[j][i]                                        ),
                    .x        (     a_vec[i+1][j]                                      ), //Ajuda de Ewerton
                    .y        (     b_vec[j+1][i]                                      ), //Ajuda de Ewerton
                    .z        (   produc_a_b[SIZE-j-1][SIZE-i-1]                       )
                );
            end
        end

endgenerate
always_ff@(posedge clock, negedge nreset)begin
    if(!nreset)begin
        currentStateSystolicControlUnit <= IDLE;
        counter_mult                    <=    0;
        counter_transfer_m              <=    0;
        ena_mac                         <=    0;
        a_load                          <=    0;
        b_load                          <=    0;
        for(integer i_rst = 0; i_rst < SIZE; i_rst++)
            output_produc_a_b[i_rst] <= '{default:0};

    end else begin
        counter_transfer_m              <= next_counter_transfer_m;
        output_produc_a_b               <= rvalid_o ? produc_a_b : output_produc_a_b                           ;
        currentStateSystolicControlUnit <= nextStateSystolicControlUnit                                        ;
        counter_mult                    <= next_counter_mult                                                   ; 
        ena_mac                         <= next_ena_mac                                                        ;
        a_load                          <= currentStateSystolicControlUnit == LOAD_MULTI_MATRIX ? a_input: 0   ;
        b_load                          <= currentStateSystolicControlUnit == LOAD_MULTI_MATRIX ? b_input: 0   ;
    end
end
always_comb begin
    case(currentStateSystolicControlUnit)
        IDLE:begin
            ready_o                      = 1                                                                    ;
            rvalid_o                     = 0                                                                    ;
            nextStateSystolicControlUnit = valid_i ? LOAD_MULTI_MATRIX : IDLE                                   ;
            next_counter_mult            = 0                                                                    ;
            next_ena_mac                 = 0                                                                    ;
            next_counter_transfer_m      = 0                                                                    ;
        end
       LOAD_MULTI_MATRIX:begin
            ready_o                      = 0;
            rvalid_o                     = 0;
            nextStateSystolicControlUnit = (counter_transfer_m < 2*SIZE) ? LOAD_MULTI_MATRIX :MULTI_MATRIX    ;
            next_counter_transfer_m      = counter_transfer_m  +    1                                           ;                  
            next_counter_mult            = 0                                                                    ;
            next_ena_mac                 = 1                                                                    ;                                                                 
        end
        MULTI_MATRIX:begin
            ready_o                      = 0                                                                   ;
            rvalid_o                     = 0                                                                   ;
            nextStateSystolicControlUnit = (counter_mult < SIZE) ? MULTI_MATRIX : DONE                       ;
            next_counter_transfer_m      = 0                                                                   ;                  
            next_counter_mult            = counter_mult + 1'b1                                                 ;
            next_ena_mac                 = (counter_mult < SIZE) ? 1:0                                       ;
            
        end
        DONE:begin
            ready_o  = 0                                                                                       ;
            rvalid_o = 1                                                                                       ;
            nextStateSystolicControlUnit = rready_i ?  IDLE:DONE                                               ;
            next_counter_mult            = 0                                                                   ;
            next_counter_transfer_m      = 0                                                                   ;                  
            next_ena_mac                 = 0                                                                   ;
        end
        
    endcase
end
endmodule