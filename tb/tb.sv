module tb;    
    logic clock   , nreset;
    parameter WIDTHx =5,SIZE = 30;
    logic [WIDTHx-1:0] A1[SIZE-1:0][SIZE-1:0];
    logic [WIDTHx-1:0] A2[SIZE-1:0][SIZE-1:0];

    systolicMatrixMultiply  #(.WIDTH(16),.WIDTHx(WIDTHx),.SIZE(SIZE)) m1(
    .clock  (clock)                                ,
    .nreset (nreset)                               ,
    .a_input(A1),
    .b_input(A2),
    .output_produc_a_b()
);

  initial begin
/*
        for(integer i= 0; i <SIZE; i++)
            for(integer j= 0; j <SIZE; j++)begin
                A[i][j] = $urandom_range(1,9);
            end
*/  
        integer k = 1;
        for(integer i = 0; i < SIZE; i++)
            for(integer j = 0; j < SIZE; j++)begin
                A1[i][j] = $urandom_range(0,32);
                A2[i][j] = $urandom_range(0,32);
                k++;
            end

         clock = 0;
         nreset =1;
         #1
         nreset = 0;
         #1
         nreset = 1;
          $shm_open("waves.shm");
          $shm_probe("AS");

         $dumpfile("waves.vcd");
         $dumpvars(0,m1);
        #10000 $finish;
    end
    always #1clock=~clock;
endmodule