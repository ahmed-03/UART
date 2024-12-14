`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.12.2024 11:43:59
// Design Name: 
// Module Name: tb_top_UART
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_top_UART();

typedef enum logic [2:0] {
    Baud_9600,
    Baud_14200,
    Baud_38400,
    Baud_57600,
    Baud_115200
    } BaudRate_t;  // Tx_clk_speed

parameter BaudRate_t baud_used = Baud_9600;
parameter pairity_type = 0;   // even parity
parameter data_width = 8;
logic clk;
logic rst_n;
logic [data_width - 1 : 0] data_in;
logic load;
logic  [data_width-1 : 0] data_out;

logic baud;
assign baud = top_UART.Tx_clk;

top_UART #(
    .baud_used(baud_used),
    .pairity_type(pairity_type ),   // even parity
    .data_width(data_width)
    ) DUT (
    .clk(clk),
    .rst_n(rst_n),
    .data_in( data_in ),
    .load(load),
    .data_out(data_out)
    );
    
    
always #5 clk = ~clk;


initial begin
    data_in = 8'b1101_0001;
    load = 0;
    clk = 0;
    rst_n = 1;
    #1 rst_n = 0;
    #1 rst_n = 1;
    
    @(negedge baud);
//    @(negedge clk);
    load = 1;

    @(negedge baud);
//    @(negedge clk);
    load = 0;
    
    repeat(200) @(negedge baud);
end
    
    
endmodule
