module tb;    
    logic clock   , nreset;
    parameter WIDTHx =5,SIZE = 3;
    parameter WIDTH =8;
    logic [WIDTHx-1:0] A1[SIZE-1:0][SIZE-1:0];
    logic [WIDTHx-1:0] A2[SIZE-1:0][SIZE-1:0];
    logic [WIDTH-1:0] Cout[SIZE-1:0][SIZE-1:0];
    logic [WIDTH-1:0] Cout_ref[SIZE-1:0][SIZE-1:0];
    logic [WIDTH-1:0] counterPassTest;
    integer k;
    integer sumC;
    systolicMatrixMultiply  #(.WIDTH(WIDTH),.WIDTHx(WIDTHx),.SIZE(SIZE)) m1(
    .clock  (clock)                                ,
    .nreset (nreset)                               ,
    .a_input(A1)                                   ,
    .b_input(A2)                                   ,
    .output_produc_a_b(Cout)
);

    task MatrixMultiplySoftware;
        input logic [WIDTHx-1:0] A1[SIZE-1:0][SIZE-1:0];
        input logic [WIDTHx-1:0] A2[SIZE-1:0][SIZE-1:0];
        output logic [WIDTH-1:0] Out_ref[SIZE-1:0][SIZE-1:0];  
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

    task MatrixComparatorHardwareSoftware;
        input logic [WIDTH-1:0] A1[SIZE-1:0][SIZE-1:0];
        input logic [WIDTH-1:0] A2[SIZE-1:0][SIZE-1:0];
        output logic [WIDTH-1:0]counterPassTest;
        begin
            counterPassTest = 0;
            for(integer i = 0; i < SIZE; i++)begin
                for(integer j = 0; j < SIZE; j++)begin
                    if(A1[i][j] == A2[i][j])
                        counterPassTest+=1;
                end
            end

        end
    endtask  


    task MatrixPrint;
        input logic [WIDTHx-1:0] A1[SIZE-1:0][SIZE-1:0];
        begin
            for(integer i = 0; i < SIZE; i++)begin
                for(integer j = 0; j < SIZE; j++)begin
                    $write("%d  ",A1[i][j]);
                end
                $display("\n");
            end

        end
    endtask  

    task MatrixPrint1;
        input logic [WIDTH-1:0] A1[SIZE-1:0][SIZE-1:0];
        begin
            for(integer i = 0; i < SIZE; i++)begin
                for(integer j = 0; j < SIZE; j++)begin
                    $write("%d  ",A1[i][j]);
                end
                $display("\n");
            end

        end
    endtask  
/*
  initial begin
        for(integer i= 0; i <SIZE; i++)
            for(integer j= 0; j <SIZE; j++)begin
                A[i][j] = $urandom_range(1,9);
            end
*/  
  initial begin
        k = 1;
        for(integer i = 0; i < SIZE; i++)begin
            for(integer j = 0; j < SIZE; j++)begin
                // A1[i][j] = $urandom_range(1,32);
                // A2[i][j] = $urandom_range(1,32);
                A1[i][j] = k;
                A2[i][j] = k;
                k++;
            end
        end
        #10;
        MatrixMultiplySoftware(.A1(A1),.A2(A2),.Out_ref(Cout_ref));

         clock = 0;
         nreset =1;
         #1
         nreset = 0;
         #1
         nreset = 1;
        #1000
        MatrixComparatorHardwareSoftware(.A1(Cout_ref),.A2(Cout),.counterPassTest(counterPassTest));
        $display();
        MatrixPrint(.A1(A1));
        $display();
        MatrixPrint(.A1(A2));
        $display();
        MatrixPrint1(.A1(Cout));
        $display();
        MatrixPrint1(.A1(Cout_ref));
        $display("Test Pass:%d",counterPassTest);
        $display("Test Fail: %d",SIZE*SIZE-counterPassTest);
          $shm_open("waves.shm");
        //   $shm_probe("AS");
        //   $shm_probe("S",tb.m1,"AC");
        //   $shm_close(0);
         $shm_probe(Cout);
         $shm_probe(Cout_ref);

        #1$finish;
    end
    always #1clock=~clock;
endmodule