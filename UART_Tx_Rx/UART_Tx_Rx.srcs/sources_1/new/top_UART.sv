`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.12.2024 11:43:38
// Design Name: 
// Module Name: top_UART
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


module top_UART #(
    parameter [2:0] baud_used = 2'b00,
    parameter pairity_type = 0,   // even parity
    parameter data_width = 8
    ) (
    input clk,
    input rst_n,
    input [data_width - 1 : 0] data_in,
    input load,
    output logic [data_width-1 : 0] data_out
    );
    
    typedef enum logic [2:0] {
        Baud_9600,
        Baud_14200,
        Baud_38400,
        Baud_57600,
        Baud_115200
        } BaudRate_t;  // Tx_clk_speed
    
    // baud rate generator for Rx and  Tx
    logic Rx_clk;
    logic Tx_clk;
    baud_rate_gen2 baud_gen(
        .clk(clk),  // 100MHz
        .reset_n(rst_n),
        .baud_rate_selected(baud_used),
        .new_clk(Rx_clk),
        .baud(Tx_clk)  // x16_slower_new_clk
        );
    
    // Tx module
    logic Tx_data;
    Top_Trans Tx(
        .clk(Tx_clk),
        .rst_n(rst_n),
        .load(load),
        .Paritiy_Typer(pairity_type),
        .data_in(data_in),
        .Tx(Tx_data)
        );
    
    // Rx module
    Top_Rx # (
    .pairity_type(pairity_type),
    .data_width(data_width)
    ) Rx (
    .clk(Rx_clk),  // Rx clk
    .rst_n(rst_n),
    .Tx(Tx_data),   // serial bits
    .data(data_out)
    );
    
    
endmodule
