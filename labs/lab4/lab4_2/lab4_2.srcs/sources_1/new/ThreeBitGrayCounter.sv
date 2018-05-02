`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2017 01:58:13 PM
// Design Name: 
// Module Name: ThreeBitGrayCounter
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

module ThreeBitGrayCounter(input logic clk, clear, preset,
                           output logic [2:0] counter);
                           
   always_ff@(posedge clk) 
   begin
     if (clear) counter = 3'b000;
     else if (preset) counter = 3'b111;
     else
     case(counter)
     3'b000: counter = 3'b001;
     3'b001: counter = 3'b011;
     3'b011: counter = 3'b010;
     3'b010: counter = 3'b110;
     3'b110: counter = 3'b111;
     3'b111: counter = 3'b101;
     3'b101: counter = 3'b100;
     3'b100: counter = 3'b000;
     default: counter = 3'b000;
     endcase
   end
endmodule

module ThreeBitGrayCounterClk(input logic clk, clear, preset,
                           output logic [2:0] counter);
   logic clk_out;
   ClockDivider cd(clk,clk_out);
                           
   always_ff@(posedge clk_out) 
   begin
     if (clear) counter = 3'b000;
     else if (preset) counter = 3'b111;
     else
     case(counter)
     3'b000: counter = 3'b001;
     3'b001: counter = 3'b011;
     3'b011: counter = 3'b010;
     3'b010: counter = 3'b110;
     3'b110: counter = 3'b111;
     3'b111: counter = 3'b101;
     3'b101: counter = 3'b100;
     3'b100: counter = 3'b000;
     default: counter = 3'b000;
     endcase
   end
endmodule

module ClockDivider(input clk_in,
                    output clk_out);

    logic [26:0] count = {27{1'b0}};
    logic clk_NoBuf;
    always@ (posedge clk_in) begin
        count <= count + 1;
    end//always
    assign clk_NoBuf = count[26];
    BUFG BUFG_inst (
    .I(clk_NoBuf), // 1-bit input: Clock input
    .O(clk_out) // 1-bit output: Clock output
    );
endmodule