module GPIOinput(
            input clk,
            input wire nreset,
            input wire [15:0] GPIO_0_tri_o,
            output reg reg_valid_data,
            output reg [7:0] data
);

    wire [7:0] data_input;
    wire enable_write;
    reg last_enable_write;
    assign data_input = GPIO_0_tri_o[15:1];
    assign enable_write =GPIO_0_tri_o[0];
    always@(posedge clk, negedge nreset)begin
        if(!nreset)begin
            last_enable_write <= 0;
            reg_valid_data <= 0;
        end else begin
            last_enable_write <= enable_write;
            reg_valid_data <= enable_write && !last_enable_write;
            data <= enable_write && !last_enable_write ? data_input :data;
        end
    end
endmodule