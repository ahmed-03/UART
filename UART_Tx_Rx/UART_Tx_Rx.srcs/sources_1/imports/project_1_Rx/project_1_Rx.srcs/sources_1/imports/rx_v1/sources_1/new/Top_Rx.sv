`timescale 1ns / 1ps


module Top_Rx # (
    parameter  pairity_type = 1'b0,
    parameter data_width = 8
    ) (
    input clk,  // Rx clk
    input rst_n,
    input Tx,   // serial bits
    output [data_width - 1 : 0] data
    );
    
    // Datapath  signals to FSM
    logic zero_detected;
    logic aligned;
    logic Error;
    logic data_done;

    // FSM signals
    logic  read_Tx;
    logic count_clocks;
    logic try_align;
    logic fetch_data;
    logic clear_clks_counter;

    
    ReceiverController FSM_Rx(
        .clk(clk),
        .rst(rst_n),
    
        // from datapath
        .zero_detected(zero_detected),
        .aligned(aligned),
        .error(Error),
        .data_done(data_done),
    
        // generated control signals
        .read_Tx(read_Tx),
        .count_clocks(count_clocks),
        .try_align(try_align),
        .fetch_data(fetch_data),
        .clear_clks_counter(clear_clks_counter)
        );

    
    // control signals (FSM signals)
    
    UART_Receiver #(
        .pairity_type(pairity_type), // 0
        .data_width(data_width) //8
        ) Rx (
        .clk(clk),
        .rst_n(rst_n),
        .Tx(Tx),
        
        // received control signals
        .try_align(try_align),//center
        .read_Tx(read_Tx),
        .count_clks(count_clocks),
        .fetch_data(fetch_data),
        .clear_clks_counter(clear_clks_counter),
    
        // to FSM
        .start_bit(zero_detected), //catch start_bit (zero_detected)
        .aligned(aligned), //counter go to center 
        .Error(Error),
        .stop(data_done), //all data bits has been read   (data_done)
        .Data_out(data)
        );
    
endmodule
