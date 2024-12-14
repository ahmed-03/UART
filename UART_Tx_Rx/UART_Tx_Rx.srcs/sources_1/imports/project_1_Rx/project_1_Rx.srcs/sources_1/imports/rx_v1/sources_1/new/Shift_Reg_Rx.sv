`timescale 1ns / 1ps


module Shift_Reg_Rx #(parameter width = 10)(
    input clk, rst_n,
    input en_shift,
    input fetch,
    input right_left,
    input data_in,
    output logic [width-1:0]data_out //parallel out
    );
    
    logic [width-1:0]out;
    assign data_out = fetch ? out : 'b0;//send to k2
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            out = 0;//rx buffer
            //data_out = 0;//rx output
        end
        // else if (fetch)begin
        //     data_out = out;//send to k2
        // end
        else if(en_shift) begin
                //right_left =1 right
                if (right_left) begin
                    out = out >>1;
                    out[width-1] = data_in;
                    // out = out >> 1 | {data_in,7'b0}
                end
                //right_left =0 left
                else if (!right_left) begin
                    out = out <<1;
                    out[0] = data_in;
                end
            end
    end


endmodule