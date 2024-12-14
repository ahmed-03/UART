`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2024 04:39:01 PM
// Design Name: 
// Module Name: tb_Top_Rx
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


module tb_Top_Rx();

parameter  pairity_type = 1'b0;  // shift-right
parameter data_width = 8;

logic clk;
logic rst_n;
logic Tx;
logic [data_width - 1 : 0] data;

Top_Rx # (
    .pairity_type(pairity_type),
    .data_width(data_width)
    ) DUT (
    .clk(clk),  // Rx clk
    .rst_n(rst_n),
    .Tx(Tx),   // serial bits
    .data(data)
    );
    
    always #5 clk = ~clk;
    
    initial begin
        Tx = 1;
        clk = 0;
        rst_n = 1;
        #1 rst_n = 0;
        #1 rst_n = 1;
        
        repeat(20) @ (negedge clk);
        Tx = 0;
        @(negedge clk)
        @(negedge clk)
        Tx = 1;

        repeat(40) @ (negedge clk);
        

        $finish;
    end


endmodule
