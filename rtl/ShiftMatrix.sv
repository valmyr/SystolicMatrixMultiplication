//============================================================
// Nome do Bloco    : ShiftMatrix
// Versão           : 1.0
// Autor(a)         : Valmir Ferreira
// Data de Criação  : --/--/--
// Última Modificação: 20/09/2025
//
// Descrição:
//   Deslocador e expansor de Matrizes.
    /*
       Dada a Matriz:
                123
          Min = 765
                894
       1) Obter o desempacotamento da Matriz na forma:

            UnpackVec1 = 178
            UnpackVec2 = 269
            UnpackVec3 = 354

       2)Deslocando WIDTHx, Para WIDTH = 4

           shiftVec1 = 178 << WIDTH*0 =    00178
           shiftVec2 = 269 << WIDTH*1 =    02690
           shiftVec3 = 354 << WIDTH*2 =    35400

       3) Empacotando novamente a nova Matriz:
                 003  
                 025
         Mout =  164
                 780
                 800            
       4) Preparando a saída
   */
//============================================================

module shiftMatrix#(parameter WIDTH = 4, SIZE = 3)(
    input  logic nreset                                 ,
    input  logic clock                                  ,
    input  logic [WIDTH-1:0] Min[SIZE-1:0][SIZE-1:0]    ,
    output logic [SIZE*WIDTH-1:0] shiftMatrixOut 
);
    logic [(SIZE*WIDTH)-1      :0]               UnpackVec        [SIZE-1:0]              ;
    logic [(SIZE*WIDTH)-1      :0]               UnpackVec2       [SIZE-1:0]              ;
    logic [(2*SIZE-1)*WIDTH-1  :0]               shiftVec         [SIZE-1:0]              ;
    logic [(2*SIZE-1)*WIDTH-1  :0]               shiftVec2        [SIZE-1:0]              ;
    logic [WIDTH-1             :0]               Mout             [2*(SIZE-1):0][SIZE-1:0];  
    logic [WIDTH*SIZE-1:0]                       UnpackVecMout    [2*(SIZE-1):0]          ;
    logic [WIDTH*SIZE-1:0]                       UnpackVecMout2   [2*(SIZE-1):0]          ;
   // logic [SIZE-1:0][((2*SIZE-1)*WIDTH)-1:0] shiftVec2;
    logic [2*(SIZE-1):0]               next_counter, current_counter;
    logic [SIZE-1:0][(2*SIZE-1)*WIDTH-1:0] A26 ;

  //  assign shiftVec2 ={>>{shiftVec}};

    generate
        genvar idvec;
        for(idvec =0; idvec < SIZE; idvec++)begin
           assign {>>{UnpackVec[idvec]}} =Min[SIZE-idvec-1'b1] ;//{>>{unpacked_array}} = packed_array;
          // assign {>>{UnpackVec[idvec]}} =Min[SIZE-idvec-1] ;//{>>{unpacked_array}} = packed_array;
        end
    endgenerate
   // assign UnpackVectTTT = {<<{shiftVec}};//{>>{unpacked_array}} = packed_array;
    generate
        genvar idvec1;
        for(idvec1 =0; idvec1 < SIZE; idvec1++)begin
           assign shiftVec[idvec1] = UnpackVec[idvec1] << WIDTH*idvec1 ;//{>>{unpacked_array}} = packed_array;
        end
    endgenerate
    generate
        genvar t,m;
        for(t =0; t < SIZE; t++)
            for(m = 0; m < 2*SIZE-1; m++)
                assign Mout[m][t]= A26[t][(m+1'b1)*WIDTH-1:(m+1'b1)*WIDTH-WIDTH];
    endgenerate
    generate
        genvar idvec3;
        for(idvec3 =0; idvec3 < 2*SIZE-1; idvec3++)
           assign {>>{UnpackVecMout[idvec3]}} =Mout[idvec3] ;//{>>{unpacked_array}} = packed_array;
    endgenerate
    always_ff@(posedge clock, negedge nreset ) begin
        if(!nreset) current_counter <=0;
        else begin
            current_counter  <= next_counter;
        end
    end
    assign next_counter = current_counter +1'b1;
    assign shiftMatrixOut =  current_counter < 2*SIZE -1? UnpackVecMout[current_counter] : 0; 
    // assign shiftMatrixOut =  rvs ? UnpackVecMout[SIZE-current_counter]: {UnpackVecMout[SIZE-current_counter][3:0],UnpackVecMout[SIZE - current_counter][7:4]};
    assign A26 = {>>{shiftVec}};

endmodule 