`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.12.2024 20:16:56
// Design Name: 
// Module Name: tb_ReceiverController
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


module tb_ReceiverController();


logic clk;
logic rst;

logic zero_detected;
logic aligned;
logic error;
logic data_done;

logic read_Tx;
logic count_clocks;
logic try_align;
logic fetch_data;


ReceiverController  DUT_FSM(
    .clk(clk),
    .rst(rst),

    .zero_detected(zero_detected),
    .aligned(aligned),
    .error(error),
    .data_done(data_done),

    .read_Tx(read_Tx),
    .count_clocks(count_clocks),
    .try_align(try_align),
    .fetch_data(fetch_data)
    );



always #5 clk = ~clk;

initial begin
    
    zero_detected = 0;
    aligned = 0;
    error = 0;
    data_done = 0;
    
    clk = 0;
    rst = 1;
    #1 rst = 0;
    #1 rst = 1;
    
    @(negedge clk)
    @(negedge clk)
    @(negedge clk)
    
    // test changing from IDLE to ALIGN
    @(negedge clk)
    zero_detected = 1;
    aligned = 0;
    error = 0;
    data_done = 0;
    @(negedge clk)

    // test changing from ALIGN to DATA_AND_PARITY
    @(negedge clk)
    zero_detected = 1;
    aligned = 0;
    error = 0;
    data_done = 0;
    @(negedge clk)
    zero_detected = 1;
    aligned = 1;
    error = 0;
    data_done = 0;
    
    
    // test changing from DATA_AND_PARITY to FETCH
    @(negedge clk)
    zero_detected = 0;
    aligned = 1;
    error = 1;
    data_done = 1;
    
    // test changing from FETCH to IDLE
    @(negedge clk)
    zero_detected = 0;
    aligned = 1;
    error = 1;
    data_done = 1;
    
    
    repeat(5) @(negedge clk);
    
    $finish;
end

endmodule
