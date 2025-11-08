module ram_single_port#(
    parameter WIDTH = 4*128,
    parameter SIZE = 128
)(
    input  logic clock                           ,  
    input  logic nreset                          ,  
    input  logic en                              ,
    input  logic we                              ,
    input  logic [$clog2(SIZE)-1:0]addr          ,
    input  logic [WIDTH-1:0]       di            ,
    output logic [WIDTH-1:0]       dout          
);

    logic [WIDTH-1:0] ram [SIZE-1:0];
    logic [WIDTH-1:0] bufferout      ;
    always_ff@(posedge clock, negedge nreset)begin
        if(!nreset)begin
            dout <= 0;
            bufferout <=0;
        end else begin
          if(en)begin
            if(we)begin
                ram[addr] <= di;
                dout    <= 0;
                bufferout <=0;
            end else begin
                ram[addr] <= ram[addr];
                bufferout <= ram[addr];
                dout <= bufferout;
            end
           end else begin
            ram[addr] <=ram[addr];
            dout <= 0;
            bufferout <=0;
           end
        end
    end
endmodule