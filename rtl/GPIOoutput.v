module GPIOoutput(
            input clk,
            input wire nreset,
            input wire uart_valid_tx_in,          
            output wire [15:0] GPIO_0_tri_i,
            input wire [7:0] uart_data_tx_in
);
assign GPIO_0_tri_i = {uart_data_tx_in, uart_data_tx_in};
endmodule 
