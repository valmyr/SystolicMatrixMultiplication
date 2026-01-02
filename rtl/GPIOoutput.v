module GPIOoutput(
            input clk,
            input wire nreset,
            input wire uart_valid_tx_in,          
            output reg [15:0] GPIO_0_tri_i,
            input wire [7:0] uart_data_tx_in
);



reg  last_uart_valid_tx_in;
always@(posedge clk, negedge nreset)begin
    if(!nreset)begin
        GPIO_0_tri_i <=0;
        last_uart_valid_tx_in <= 0;
    end else begin
        last_uart_valid_tx_in <= uart_valid_tx_in;
        GPIO_0_tri_i <= {uart_data_tx_in, uart_valid_tx_in};
    end
 end
endmodule 
