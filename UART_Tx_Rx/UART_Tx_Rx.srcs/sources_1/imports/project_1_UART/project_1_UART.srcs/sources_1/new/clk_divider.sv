`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.12.2024 15:42:20
// Design Name: 
// Module Name: clk_divider
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


module clk_divider 
// #(
//    parameter divisor = 1   // we don't need it because we are using pre-calculated values that give us how many counts we need
//    )
     (
    input logic clk,
    input logic reset_n,
    input integer counts_desired,   // it was fixed in previous labs
    output logic new_clk
    );
    
    logic [ $clog2(10147) - 1 : 0 ] counter;    // we used 10147 as fixed value for maximum counts needed between other counts we have
    // NOTE:   clk_speed / baud_rate  = counts_desired
    logic trigger;

    // counter logic (DFFs)
    always @ (posedge clk, negedge reset_n) begin
        if ( ! reset_n) begin
            counter = 'b0;
            trigger = 'b0;
        end else begin
            counter = counter + 1;
            if (counter == counts_desired) begin
                trigger = ~trigger;
                counter = 'b0;
            end
        end // end outer else
    end // end always
    
    //    -->   actually trigger is the new clk
    assign new_clk = trigger;

endmodule
