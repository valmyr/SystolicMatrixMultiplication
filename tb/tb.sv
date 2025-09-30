
module tb;    
    logic clock   , nreset;
    parameter WIDTHx =4,SIZE = 32;
    parameter WIDTH =16;
    parameter TsClock = 1;
    parameter delay = 11*TsClock + 2*SIZE-1;
    
    logic [WIDTHx-1:0] A1[SIZE-1:0][SIZE-1:0];
    logic [WIDTHx-1:0] A2[SIZE-1:0][SIZE-1:0];
    logic [WIDTH-1:0] Cout_DUT[SIZE-1:0][SIZE-1:0];
    logic [WIDTH-1:0] Cout_ref[SIZE-1:0][SIZE-1:0];
    logic [WIDTH-1:0] counterPassTest;
    logic valid_i, ready;
    integer k;
    integer sumC;
    enum {LOAD,CALC,PRINT} current_state, next_state;
    systolicMatrixMultiply  #(.WIDTH(WIDTH),.WIDTHx(WIDTHx),.SIZE(SIZE)) DUT_MatrixMultiplyM0(
        .clock  (clock)                                ,
        .nreset (nreset)                               ,
        .valid_i(valid_i)                              ,
        .ready_o  (ready)                                ,
        .a_input(A1)                                   ,
        .b_input(A2)                                   ,
        .output_produc_a_b(Cout_DUT)
    );
    task MatrixCreate(
            output logic [WIDTHx-1:0] A1[SIZE-1:0][SIZE-1:0],
            output logic [WIDTHx-1:0] A2[SIZE-1:0][SIZE-1:0]
        );
        begin
            for(integer i = 0; i < SIZE; i++)begin
                for(integer j = 0; j < SIZE; j++)begin
                    A1[i][j] = $urandom_range(1,(1'b1 << WIDTHx)-1);                    
                    A2[i][j] = $urandom_range(1,(1'b1 << WIDTHx)-1);
                    // A1[i][j] = $urandom_range(1,(1'b1 << 4)-1);                    
                    // A2[i][j] = $urandom_range(1,(1'b1 << 4)-1);
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
        output logic [WIDTH-1:0]counterPassTest
    );
        begin
        counterPassTest = 0;
            for(integer i = 0; i < SIZE; i++)begin
                for(integer j = 1; j < SIZE; j++)begin
                    if(A1== A2)
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
    #(1000*TsClock)$finish;
  end
  always #(TsClock)clock=~clock;

    always_ff@(posedge clock, negedge nreset)begin
        if(!nreset) $display("Resetando...");
        else begin
            current_state <= next_state;
            case(current_state)
                LOAD:
                    MatrixCreate(.A1(A1),.A2(A2));
                CALC:begin
                    if(ready)begin
                        $writememh("../sim/a_input.txt",A1);
                        $writememh("../sim/b_input.txt",A2);
                        $writememh("../sim/Cout_ref.txt",Cout_ref);
                        $writememh("../sim/Cout_Dut.txt",Cout_DUT);
                        $display("Operadorando 1");
                        $display("");
                        MatrixPrint(.A1(DUT_MatrixMultiplyM0.a_input));
                        $display("Operadorando 2");
                        $display("");
                        MatrixPrint(.A1(DUT_MatrixMultiplyM0.b_input));
                        $display("Resultado DUT");
                        $display("");
                        MatrixPrint1(.A1(Cout_DUT));
                        $display("Resultado REFMOD");
                        $display("");
                        MatrixPrint1(.A1(Cout_ref));
                        $display("Test(%%)");
                        $display("");

                        MatrixMultiplySoftware(.A1(DUT_MatrixMultiplyM0.a_input),.A2(DUT_MatrixMultiplyM0.b_input),.Out_ref(Cout_ref));

                        //MatrixComparatorHardware_VS_Software(.A1(Cout_ref),.A2(Cout_DUT),.counterPassTest(counterPassTest));

                       // $display("Sucess:   %d  %%",(counterPassTest/(SIZE*SIZE))*100);
                       // $display("Fail  : %d  %%",((SIZE*SIZE-counterPassTest)/(SIZE*SIZE))*100);
                    end
                end
        endcase
        end
    end
    always_comb begin
        case(current_state)    
            LOAD:begin
                next_state = CALC;
                valid_i= 0;
            end
            CALC:begin
                next_state = ready ? LOAD :CALC;
                valid_i =1;
            end
            default:begin
                next_state = LOAD;
                valid_i = 0;
            end
        endcase
        
    end
endmodule