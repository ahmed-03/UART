`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.12.2024 16:13:49
// Design Name: 
// Module Name: tb_clk_divider
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


module tb_clk_divider();

// testbench signals
logic clk;
logic reset_n;
integer counts_desired;   // it was fixed in previous labs
logic new_clk;

clk_divider DUT(
    .clk( clk ),
    .reset_n( reset_n ),
    .counts_desired( counts_desired ),   // it was fixed in previous labs
    .new_clk( new_clk )
    );
    
// clk generation for the testbench
always #5 clk = ~clk;

initial begin
    clk = 0;
    reset_n = 1;
    reset_n = 0;
    counts_desired = 2;
    
    #2 reset_n = 1;
    
    #50;
    $finish;
end

endmodule
