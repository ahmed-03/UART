`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.12.2024 13:21:35
// Design Name: 
// Module Name: baud_rate_generator
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


module baud_rate_generator
// # (
//    parameter clk_speed = 100 * (10**6),
//    parameter desired_baud_rate = 9600
    // NOTE: actually, no need for these prameters because we used pre-calculated method using MUXes
//    ) 
    (
    input logic clk,
    input logic reset_n,
    input logic [2:0] baud_rate_selected,
    output logic new_clk
    );
    
    // user should enter which baud type desired with this fixed text"Baud_{desired_rate}" and write which desired_rate
    // example:   user (outer module) entered "Baud_14200" not "14200". he has to follow my speed-names ("Baud_9600", "Baud_14200" ... ) by writing which type 
    typedef enum logic [2:0] {
        Baud_9600,
        Baud_14200,
        Baud_38400,
        Baud_57600,
        Baud_115200
        } BaudRate_t;
    integer counts;
    
    // Mux --> to get how many times we need to count the posedge of clk, to generate the new modified clock
    always @ (posedge clk, negedge reset_n) begin
        if ( ! reset_n ) begin
             counts = 1;
        end else begin
            // assign pre-calculated (fixed) results of this cormula:
            // clk_speed / divisor = baud_rate  = -->  clk_speed / baud_rate  = divisor (or "counts_desired")
            case (baud_rate_selected)
                Baud_9600: counts = 10417 >> 1;    // 100MHz / 9600 = 10416.666666
                Baud_14200: counts = 7042 >> 1;    // 7042.25352112676
                Baud_38400: counts = 2604 >> 1;    // 2604.1666 ....
                Baud_57600: counts = 1736 >> 1;    // 1736.1111 ...
                Baud_115200: counts = 868 >> 1;   // 868.055555 ....
                // NOTE: divide by 2 to have half of the cycle (HIGH and LOW), so we will trigger it every half cycle
                // Remeber: it's better to use shift-right to divide by 2 instead of using DSP "counts = 10417 / 2"
            endcase
        end
    end
    
    // clk divider instance
    clk_divider clk_div(
        .clk( clk ),
        .reset_n( reset_n ),
        .counts_desired( counts ),   // it was fixed in previous labs
        .new_clk( new_clk )
        );
    
endmodule
