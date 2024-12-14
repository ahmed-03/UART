`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.12.2024 13:22:14
// Design Name: 
// Module Name: tb_baud_rate_generator
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


module tb_baud_rate_generator();

// user should enter which baud type desired with this fixed text"Baud_{desired_rate}" and write which desired_rate
// example:   user entered "Baud_14200" not "14200". he has to follow my speed-names ("Baud_9600", "Baud_14200" ... ) by writing which type 
typedef enum  logic [2:0] {
    Baud_9600,
    Baud_14200,
    Baud_38400,
    Baud_57600,
    Baud_115200
    } BaudRate_t;
    
// testbench signals
logic clk;
logic reset_n;
BaudRate_t baud_rate_selected;   // it was fixed in previous labs
logic Tx_Rx_clocks;
            
baud_rate_generator DUT_baud(
    .clk( clk ),
    .reset_n( reset_n),
    .baud_rate_selected( baud_rate_selected ),
    .new_clk( Tx_Rx_clocks )
    );
    
    // uncomment these time signals if yo wanna check time period and Hz generated
//    real time1,time2;  // real is the floating type in systemVerilog
    
// clk generation for the testbench
always #5 clk = ~clk;
// NOTE: 1 / clk_speed = time   --->  1 / 100MHz = 10ns   for one sycle (so, 5 nano sec for one toggle either high or low)

initial begin
    baud_rate_selected = Baud_14200;
    clk = 0;
    reset_n = 1;
    reset_n = 0;
    
    #5 reset_n = 1;
    
//    #50;
    @ (posedge Tx_Rx_clocks);
    @ (negedge Tx_Rx_clocks);    
    @ (negedge Tx_Rx_clocks);    
//    time1 = $time;
    @ (negedge Tx_Rx_clocks);
//    time2 = $time;    
    @ (negedge Tx_Rx_clocks);    
//    $display("1 / (%f ns - %f ns) = %f (?Hz but rounded)",time2, time1, (1 / (time2-time1)) );   // use it if you wanna check time period and how Hz has been generated
    $finish;
end

endmodule

