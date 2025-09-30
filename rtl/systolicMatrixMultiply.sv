//============================================================
// Nome do Bloco    : SystolicMatrixMultiply
// Versão           : 1.0
// Autor(a)         : Valmir Ferreira
// Data de Criação  : --/--/--
// Última Modificação: 20/09/2025
//
// Descrição:
//   Dada duas matrizes de ordem N, M1 e M2 cálcula a multplicação matricial delas
//============================================================

module systolicMatrixMultiply#(
    parameter WIDTH = 16, SIZE=3, WIDTHx = 4
)(
    input  logic                  clock                                  ,
    input  logic                  nreset                                 ,
    input  logic                  valid_i                                ,
    input  logic [WIDTHx-1:0]     a_input [SIZE-1:0][SIZE-1:0]           ,
    input  logic [WIDTHx-1:0]     b_input [SIZE-1:0][SIZE-1:0]           ,
    output logic                  ready_o                                ,
    output logic [WIDTH-1:0]      output_produc_a_b [SIZE-1:0][SIZE-1:0]
);
logic [WIDTHx-1:0]      a_load[SIZE-1:0][SIZE-1:0];
logic [WIDTHx-1:0]      b_load[SIZE-1:0][SIZE-1:0];
logic [WIDTHx-1:0]      a_load_next[SIZE-1:0][SIZE-1:0];
logic [WIDTHx-1:0]      b_load_next[SIZE-1:0][SIZE-1:0];
logic [SIZE*WIDTHx-1:0] a,b;
logic [WIDTH-1:0]       a_vec[SIZE:0][SIZE:0];
logic [WIDTH-1:0]       b_vec[SIZE:0][SIZE:0];
logic [WIDTH-1:0]       counter, next_counter;
logic [WIDTHx-1:0]      b_input_transpost [SIZE-1:0][SIZE-1:0];
logic                   valid, next_valid, ena_cells, next_ena_cells, ena_load, next_ena_load, ena_shift, next_ena_shift;
logic [WIDTH-1:0]       produc_a_b [SIZE-1:0][SIZE-1:0];
generate 
    genvar i_trs, j_trs;
    for(i_trs =0; i_trs < SIZE; i_trs++)
        for(j_trs =0; j_trs < SIZE; j_trs++)
            assign b_input_transpost[i_trs][j_trs] = b_load[j_trs][i_trs];
endgenerate


    shiftMatrix #(.WIDTH(WIDTHx),.SIZE(SIZE))aa_shiftM(
                                                .nreset(nreset)                     ,
                                                .clock(clock)                       ,
                                                .ena(ena_shift & ena_cells)         ,
                                                .Min(a_load)                        ,
                                                .shiftMatrixOut(a)  
    );  

    shiftMatrix #(.WIDTH(WIDTHx),.SIZE(SIZE))bb_shiftM(
                                                .nreset(nreset)                    ,
                                                .clock(clock)                      ,
                                                .ena(ena_shift& ena_cells)         , 
                                                .Min(b_input_transpost)            ,
                                                .shiftMatrixOut(b)      
    );  
// Ajustar o módulo de deslocamento de matrizes adicionando um habilitador


//Assigment initials
//assign a_vec[0][0] = {{WIDTH{1'b0}},a[3    :0]};
//assign a_vec[0][1] = {{WIDTH{1'b0}},a[7    :4]};
//assign a_vec[0][2] = {{WIDTH{1'b0}},a[11   :8]};
//assign b_vec[0][0] = {{WIDTH{1'b0}},b[3    :0]};
//assign b_vec[0][1] = {{WIDTH{1'b0}},b[7    :4]};
//assign b_vec[0][2] = {{WIDTH{1'b0}},b[11   :8]};

enum {IDLE, LOAD_MATRIX, SHIFT_AND_TRANSPOSED_MATRIX, MUILTIPLICATION_CALC, READY} currentStateSystolicControlUnit, nextStateSystolicControlUnit;
generate 
    genvar i,j;
        for(i =0; i < SIZE;i++)begin:CELULA_ROWS
            assign a_vec[0][i] = {{(WIDTH-WIDTHx){1'b0}},a[(i+1)*WIDTHx-1:(i+1)*WIDTHx-WIDTHx]};
            assign b_vec[0][i] = {{(WIDTH-WIDTHx){1'b0}},b[(i+1)*WIDTHx-1:(i+1)*WIDTHx-WIDTHx]};
            for(j =0; j < SIZE;j++)begin:CELULA_COLUMNS
                accumulator_cells #(.WIDTH(WIDTH)) cells_accs(    
                    .clock    (     clock                                          ),
                    .nreset   (     nreset                                         ),
                    .ena      (     ena_shift                                      ),
                    .a        (     a_vec[i][j]                                    ),
                    .b        (     b_vec[j][i]                                    ),
                    .x        (     a_vec[i+1][j]                                  ), //Ajuda de Ewerton
                    .y        (     b_vec[j+1][i]                                  ), //Ajuda de Ewerton
                    .z        (     produc_a_b[SIZE-j-1][SIZE-i-1]          )
                );
            end
        end

endgenerate
always_ff@(posedge clock, negedge nreset)begin
    if(!nreset)begin
        currentStateSystolicControlUnit <= IDLE;
        counter                         <=    0;
        valid                           <=    0;
        ena_cells                       <=    0;
        ena_load                        <=    0;
        ena_shift                       <=    0;
    end else begin
        output_produc_a_b               <= ready_o ? produc_a_b : output_produc_a_b  ;
        valid                           <= next_valid;
        currentStateSystolicControlUnit <= nextStateSystolicControlUnit                      ;
        counter                         <= next_counter                                      ; 
        a_load                          <= a_load_next                                       ;
        b_load                          <= b_load_next                                       ;
        ena_load                        <= next_ena_load                                     ;
        ena_shift                       <= next_ena_shift                                    ;
        ena_cells                       <= next_ena_cells                                    ;
    end
end
always_comb begin
    case(currentStateSystolicControlUnit)
        IDLE:begin
            nextStateSystolicControlUnit = valid ? LOAD_MATRIX : IDLE                           ;
            next_counter                 = 0                                                    ;
            next_ena_load                = valid ? 1 :0                                         ;
            next_ena_cells               = 0                                                    ;
            next_ena_shift               = 0                                                    ; 
        end
       LOAD_MATRIX:begin
            nextStateSystolicControlUnit = SHIFT_AND_TRANSPOSED_MATRIX                          ;
            next_counter                 = 0                                                    ;
            next_ena_load                = 0                                                    ;
            next_ena_cells               = 0                                                    ;
            next_ena_shift               = 1                                                    ;             

        end
        SHIFT_AND_TRANSPOSED_MATRIX:begin
            nextStateSystolicControlUnit = MUILTIPLICATION_CALC                                 ;
            next_counter                 = 0                                                    ;
            next_ena_load                = 0                                                    ;
            next_ena_cells               = 1                                                    ;
            next_ena_shift               = 1                                                    ;         
        end
        MUILTIPLICATION_CALC:begin
            nextStateSystolicControlUnit = counter < 3*(SIZE+1) ? MUILTIPLICATION_CALC : READY  ;
            next_counter                 = counter + 1'b1                                       ;
            next_ena_load                = 0                                                    ;
            next_ena_cells               = counter < 3*(SIZE+1)                                 ;
            next_ena_shift               = 1                                                    ;     
        end
        READY:begin
            nextStateSystolicControlUnit = valid ? LOAD_MATRIX :  IDLE                          ;
            next_counter                 = 0                                                    ;
            next_ena_load                = valid ? 1 : 0                                        ;
            next_ena_cells               = 0                                                    ;
            next_ena_shift               = 0                                                    ;                                                  
        end
        
    endcase
end
assign next_valid  = (valid_i) ? valid_i : valid;
assign ready_o     = currentStateSystolicControlUnit == READY;
assign a_load_next = (ena_load) ? a_input : a_load                     ;
assign b_load_next = (ena_load) ? b_input : b_load                     ;
endmodule