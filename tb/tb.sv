module tb;    
    logic clock   , nreset;
    parameter WIDTHx =5,SIZE = 4;
    logic [WIDTHx-1:0] A1[SIZE-1:0][SIZE-1:0];
    logic [WIDTHx-1:0] A2[SIZE-1:0][SIZE-1:0];

    top_mult_celula  #(.WIDTH(16),.WIDTHx(WIDTHx),.SIZE(SIZE)) m1(
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
*/  A1[0][0]=1;
    A1[0][1]=2;
    A1[0][2]=3;
    A1[0][3]=4;
    A1[1][0]=5;
    A1[1][1]=6;
    A1[1][2]=7;
    A1[1][3]=8;
    A1[2][0]=9;
    A1[2][1]=10;
    A1[2][2]=11;
    A1[2][3]=12;
    A1[3][0]=13;
    A1[3][1]=14;
    A1[3][2]=15;
    A1[3][3]=16;

    A2[0][0]=1;
    A2[0][1]=2;
    A2[0][2]=3;
    A2[0][3]=4;
    A2[1][0]=5;
    A2[1][1]=6;
    A2[1][2]=7;
    A2[1][3]=8;
    A2[2][0]=9;
    A2[2][1]=10;
    A2[2][2]=11;
    A2[2][3]=12;
    A2[3][0]=13;
    A2[3][1]=14;
    A2[3][2]=15;
    A2[3][3]=16;

         clock = 0;
         nreset =1;
         #1
         nreset = 0;
         #1
         nreset = 1;
         #100 $finish;
    end
    always #1clock=~clock;
endmodule