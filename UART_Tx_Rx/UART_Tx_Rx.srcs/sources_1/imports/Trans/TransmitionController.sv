`timescale 1ns / 1ps
module TransmitionController(
    input clk,
    input rst_n,
    input load,
    input finish_Tx,
    output logic En_shift,
    output logic [1:0] FSM
    );
    
    typedef enum logic [1:0] {Idle, Start, Transmit, Stop} state_t;
    state_t p_state, n_state; 
//    state_t n_state; 

    /*=================================next_state_logic=================================*/
    always@(p_state, load, finish_Tx) begin
        case(p_state)
            Idle: begin 
                if(load == 1)
                     n_state <= Start;
                else 
                    n_state <= Idle;
                end
            Start: begin
                n_state <= Transmit;
            end
            Transmit: begin
                if(finish_Tx) begin
                    n_state <= Stop;
                end
                else begin
                    n_state <= Transmit;
                end 
            end
            Stop: begin
                n_state <= Idle;
            end
        endcase
    end
    /*=================================output_logic=================================*/
    always@(p_state) begin
        case(p_state)
            Idle: begin 
                En_shift = 0;
            end
             Start: begin
                En_shift = 1;
            end
            Transmit: begin
                En_shift = 1;
            end
            Stop: begin
                En_shift = 0;
            end
        endcase
    end
    /*=================================present_state_logic=================================*/
    always@(posedge clk , negedge rst_n) begin
        if(!rst_n)  begin
            p_state <= Idle;
        end
        else begin
            p_state <= n_state;
        end
    end
    
    assign FSM = p_state;
endmodule