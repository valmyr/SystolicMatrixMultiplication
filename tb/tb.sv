
module tb;    
    logic clock   , nreset;
    parameter WIDTHx =4,SIZE = 2**3;
    parameter WIDTH =8;
    parameter TsClock = 1;
    parameter sim_size = 3;
    parameter delay = 11*TsClock + 2*SIZE-1;
    
    logic [WIDTHx-1:0] A1[SIZE-1:0][SIZE-1:0];
    logic [WIDTHx-1:0] A2[SIZE-1:0][SIZE-1:0];
    logic [WIDTH-1:0] Cout_DUT[SIZE-1:0][SIZE-1:0];
    logic [WIDTH-1:0] Cout_ref[SIZE-1:0][SIZE-1:0];

    logic [WIDTHx-1:0]a_load[SIZE-1:0][SIZE-1:0];
    logic [WIDTHx-1:0]b_load[SIZE-1:0][SIZE-1:0];
    logic [WIDTHx-1:0]b_input_transpost[SIZE-1:0][SIZE-1:0];

    logic [SIZE*WIDTHx-1:0] a; 
    logic [SIZE*WIDTHx-1:0] b; 


    real counterPassTest;
    logic valid_i, ready;
    integer k;
    integer sumC;
    integer sim_iterac;
    enum {LOAD,CALC,PRINT} current_state, next_state;
    systolicMatrixMultiply  #(.WIDTH(WIDTH),.WIDTHx(WIDTHx),.SIZE(SIZE)) DUT_MatrixMultiplyM0(
        .clock          (clock      )                              ,
        .nreset         (nreset     )                              ,
        .valid_i        (1    )                              ,
        .a_input        (a         )                              ,
        .b_input        (b         )                              ,
        .ready_o          (),
        .output_produc_a_b(Cout_DUT )
    );

    generate 
        genvar i_trs, j_trs;
        for(i_trs =0; i_trs < SIZE; i_trs++)
            for(j_trs =0; j_trs < SIZE; j_trs++)
            assign b_input_transpost[i_trs][j_trs] = b_load[j_trs][i_trs];
    endgenerate


    shiftMatrix #(.WIDTH(WIDTHx),.SIZE(SIZE))aa_shiftM(
                                                .nreset(nreset)                     ,
                                                .clock(clock)                       ,
                                                .ena(DUT_MatrixMultiplyM0.currentStateSystolicControlUnit ==DUT_MatrixMultiplyM0.LOAD_MULTI_MATRIX | DUT_MatrixMultiplyM0.currentStateSystolicControlUnit ==DUT_MatrixMultiplyM0.MULTI_MATRIX)                          ,
                                                .ready(ready),
                                                .Min(a_load)                        ,
                                                .shiftMatrixOut(a)  
    );  

    shiftMatrix #(.WIDTH(WIDTHx),.SIZE(SIZE))bb_shiftM(
                                                .nreset(nreset)                    ,
                                                .clock(clock)                      ,
                                                .ena(DUT_MatrixMultiplyM0.currentStateSystolicControlUnit ==1 | DUT_MatrixMultiplyM0.currentStateSystolicControlUnit ==2)         , 
                                                .ready(),
                                                .Min(b_input_transpost)            ,
                                                .shiftMatrixOut(b)      
    );  

    task MatrixCreate(
            input logic ena,
            output logic [WIDTHx-1:0] A1[SIZE-1:0][SIZE-1:0],
            output logic [WIDTHx-1:0] A2[SIZE-1:0][SIZE-1:0]
        );
        begin
            for(integer i = 0; i < SIZE; i++)begin
                for(integer j = 0; j < SIZE; j++)begin
                    A1[i][j] = ena ? $urandom_range(1,(1'b1 << WIDTHx -1)-1):0;                    
                    A2[i][j] = ena ? $urandom_range(1,(1'b1 << WIDTHx-1)-1) :0;
                end
        end

        end
    endtask 

    task MatrixMultiplySoftware(
        input  logic [WIDTHx-1:0] A1[SIZE-1:0][SIZE-1:0],
        input  logic [WIDTHx-1:0] A2[SIZE-1:0][SIZE-1:0],
        output logic [WIDTH-1:0] Out_ref[SIZE-1:0][SIZE-1:0]  
    );
    begin
            for(integer i = 0; i < SIZE; i++)begin
                for(integer j = 0; j < SIZE; j++)begin
                    sumC = 0;
                    for(integer k = 0; k<SIZE; k++)begin 
                        sumC+= A1[i][k]*A2[k][j];
                    end
                    Out_ref[i][j] = sumC;
                end
            end
    end

    endtask   

    task MatrixComparatorHardware_VS_Software(
        input  logic [WIDTH-1:0] A1[SIZE-1:0][SIZE-1:0],
        input  logic [WIDTH-1:0] A2[SIZE-1:0][SIZE-1:0],
       output  real counterPassTest
    );
        begin
        counterPassTest = 0;
            for(integer i = 0; i < SIZE; i++)begin
                for(integer j = 0; j < SIZE; j++)begin
                    if(A1[i][j]== A2[i][j])
                        counterPassTest+=1;
                end
            end

        end
    endtask  


    task MatrixPrint(
        input logic [WIDTHx-1:0] A1[SIZE-1:0][SIZE-1:0]
    );

            for(integer i = 0; i < SIZE; i++)begin
                for(integer j = 0; j < SIZE; j++)begin
                    $write("%d  ",A1[i][j]);
                end
                $display("\n");
            end


    endtask  

    task MatrixPrint1(
        input logic [WIDTH-1:0] A1[SIZE-1:0][SIZE-1:0]);
        begin
            for(integer i = 0; i < SIZE; i++)begin
                for(integer j = 0; j < SIZE; j++)begin
                    $write("%d  ",A1[i][j]);
                end
                $display("\n");
            end

        end
    endtask  
 
  initial begin
     $shm_open("waves.shm");
     $shm_probe(Cout_DUT);
     $shm_probe(Cout_ref);
     $shm_probe("AS");
    
    
    clock = 0;
    nreset =1;
    #1 
    nreset =0;
    #1
    nreset =1;
    #1
    sim_iterac =0;
    repeat(sim_size)begin
        MatrixCreate(.A1(A1),.A2(A2), .ena(sim_iterac!=0));
        a_load = A1;
        b_load = A2;
        MatrixMultiplySoftware(.A1(a_load),.A2(b_load),.Out_ref(Cout_ref));
        @(negedge DUT_MatrixMultiplyM0.currentStateSystolicControlUnit ==DUT_MatrixMultiplyM0.MULTI_MATRIX)begin
            MatrixComparatorHardware_VS_Software(.A1(Cout_ref),.A2(Cout_DUT),.counterPassTest(counterPassTest));    
            $writememh("../sim/a_input.txt",a_load);
            $writememh("../sim/b_input.txt",b_load);
            $writememh("../sim/Cout_ref.txt",Cout_ref);
            $writememh("../sim/Cout_Dut.txt",Cout_DUT);
            $display("Operando  1");
            $display("");
            MatrixPrint(.A1(a_load));
            $display("Operando  2");
            $display("");
            MatrixPrint(.A1(b_load));
            $display("Resultado DUT");
            $display("");
            MatrixPrint1(.A1(Cout_DUT));
            $display("Resultado REFMOD");
            $display("");
            MatrixPrint1(.A1(Cout_ref));
            $display("Test(%%) %f %f ",counterPassTest, SIZE*SIZE - counterPassTest);
            $display("");
            $display("Sucess: %f  %%",(counterPassTest/(SIZE*SIZE))*100.0);
            $display("Fail  : %f  %%",((SIZE*SIZE-counterPassTest)/(SIZE*SIZE))*100.0);
            sim_iterac +=1;
            if(sim_size == sim_iterac)     $finish;
        end
    end
  end
  
  always #(TsClock)clock=~clock;
endmodule