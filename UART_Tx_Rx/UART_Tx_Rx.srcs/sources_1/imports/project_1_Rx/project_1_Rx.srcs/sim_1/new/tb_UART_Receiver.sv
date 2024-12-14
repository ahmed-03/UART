`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.12.2024 23:49:09
// Design Name: 
// Module Name: tb_UART_Receiver
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


module tb_UART_Receiver();

parameter  parity_type = 1'b0;
parameter data_width = 8;
//logic Tx_value;
logic clk,rst_n,Tx;
logic Align; //center
//logic clear_count;

logic read_Tx;
logic count_clks;
logic fetch_data;

logic Aligned; //counter go to center 
logic start; //catch start bit
logic stop; //all data bits has been read 
logic [data_width-1 : 0] Data_out;  // to k2
logic Error;

UART_Receiver #(
    .parity_type(parity_type),
    .data_width(data_width)
    ) DUT (
    .clk(clk),
    .rst_n(rst_n),
    .Tx(Tx),
    .try_align(Align),//center
//    .pairity_type(pairity_type),
//    .clear_count(clear_count),
//    .start_signal(Tx_value),

    .read_Tx(read_Tx),
    .count_clks(count_clks),
    .fetch_data(fetch_data),
    
    .start_bit(start), //catch start bit
    .aligned(Aligned),//counter go to center 
    .Error(Error),
    .stop(stop), //all data bits has been read 
    .Data_out(Data_out)
    );
    
always #5 clk = ~clk;

initial begin
//    Tx_value=0;
//    clear_count=0;
//    pairity_type=0;
    Tx = 1;
    Align = 0;
    
    read_Tx = 0;
    count_clks = 0;
    fetch_data = 1;

    clk = 0;
    rst_n = 1; #1
    rst_n = 0; #1
    rst_n = 1; #1

    repeat(8) @ (negedge clk);
    Tx = 0;   // start-bit
    read_Tx = 1;
    count_clks = 1;
    Align = 1;
//    rst_n = 0;  // test reset

    repeat(8) @ (negedge clk);
    Align = 0;

    // sending data
//    @ (negedge clk)
    Tx = 1;   // data
    @ (negedge clk)
//            Tx_value=1;

    Tx = 0;   // data
    @ (negedge clk)
    Tx = 0;   // data
    @ (negedge clk)
    Tx = 1;   // data
    @ (negedge clk)
    Tx = 0;   // data
    @ (negedge clk)
    Tx = 1;   // data
    @ (negedge clk)
    Tx = 0;   // data
    @ (negedge clk)
    Tx = 0;   // data

    @ (negedge clk)
    Tx = 0;   // data
    @ (negedge clk)
    Tx = 0;   // data
    @ (negedge clk)
    Tx = 1;   // data

    @ (negedge clk)
    @ (negedge clk)
    @ (negedge clk)
    @ (negedge clk)
    @ (negedge clk)
    $finish;
end

endmodule
