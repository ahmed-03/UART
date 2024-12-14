`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.12.2024 23:48:40
// Design Name: 
// Module Name: UART_Receiver
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

// TODO: make it parameterize
module UART_Receiver #(
    parameter  pairity_type = 1'b0,
    parameter data_width = 8
    ) (
    input clk,rst_n,
    input Tx,
    
    // control signals (FSM signals)
    input try_align,//center
//    input clear_count,
    input read_Tx,
    input count_clks,
    input fetch_data,
    input clear_clks_counter,

    output start_bit, //catch start_bit (zero_detected)
    output aligned, //counter go to center 
    output Error,
    output stop, //all data bits has been read   (data_done)
    output [data_width - 1 : 0] Data_out
    );

    logic w1, not_similar, Tx_value;
    logic [3:0] bits_ctr; // counter for data that has been detected
    logic [3:0]out_count1;
//    logic rst_count1;
//    logic data_done;
//    logic en_shift;
    logic parity;
    logic [data_width - 1 : 0] data;
    //flag
    
    // me
    logic en_reading_bits;
    
    // start_bit detector (from HIGH to LOW)
    Register#(1) reg1(
    .clk(clk),
    .rst_n(rst_n),
    .en(1'b1),
    .d(Tx),
    .q(w1)
    );
    
    // output signal to FSM
    assign Tx_value = ~Tx & w1;
    assign start_bit = read_Tx ? Tx_value : 1'b1;  // me: or start_bit = ~Tx
    

    // clks_counter (counter 1)
    logic counters_clear_n;
    assign counters_clear_n = rst_n & (~(count_clks | try_align) |~clear_clks_counter);  // i wnat it negedge
    
    Counter #(4) clks_counter (
    .clk(clk),
    .rst_n(counters_clear_n),
    .en(count_clks),
    .q(out_count1)
    );
    
    // output signal to FSM
    assign aligned = ~out_count1[3] & out_count1[2] & out_count1[1] & out_count1[0] & try_align;
    
    
    // reading bits ...
//    assign en_shift = (&out_count1);
    assign en_reading_bits = (&out_count1);  // NOTE: "en_reading_bits " enables shifting data to Rx_buffur and enables the counter that count how many bits has read

    Counter #(4) bits_counter (
    .clk(clk),
    .rst_n(counters_clear_n),
    .en(en_reading_bits),
    .q(bits_ctr)
    );

//    assign data_done = (bits_ctr == 4'd9);  // 8 data bits + 1 parity bit   // delete it
    // output signal to FSM (data_done = stop)
    assign stop = (bits_ctr == 4'd9);  // 8 data bits + 1 parity bit

//    // me:
//    logic bit_received;
//    assign bit_received = read_Tx ? Tx : 1'b1;  //.Tx
    
    Shift_Reg_Rx #(data_width+1) shift(   // data_width + parity_bit
    .clk(clk), 
    .rst_n(rst_n),
    .en_shift(en_reading_bits),   // en_shift
    .fetch(fetch_data),
    .right_left(1'b1),  // 1: shift_right  , 0: shift_left
    .data_in(Tx),
    .data_out( {parity, data} ) //parallel out //when use left-shift make {data, parity}
    );

    // output singal ot FSM
    assign not_similar = (^data) ^ parity; 
    assign Error = pairity_type ? ~not_similar : not_similar;    //pairity_type odd=1, even=0 
    // "not_similar" means Error in even-parity type  (parity-results are mismatched)
    // while "similar" means Error in odd-parity type   (parity-results are mismatched)
    
    // output to K2 processor
    assign Data_out = fetch_data? data : { data_width {1'b1}};  // fill it with 1s

endmodule
