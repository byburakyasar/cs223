`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2017 01:26:11 PM
// Design Name: 
// Module Name: DFlipFlop
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
module DFlipFlop( input logic D, clk, clear, preset,
                  output logic Q);
    always_ff@(posedge clk)
       if(preset)
          Q <= 1;
       else if(clear)
          Q <= 0;
       else
          Q <= D;
endmodule

module TwoBitUpCounter( input logic clk, clear, preset,
                        output logic [1:0] Q);
    
    logic D;                    
    logic n; // internal node
    always_ff@(posedge clk) 
       begin
          D <= (~Q[0] & Q[1]) | (~Q[1] & Q[0]);  
          n <= ~Q[0];
       end
       
       DFlipFlop D1(D,clk,clear,preset,Q[1]);
       DFlipFlop D2(n,clk,clear,preset,Q[0]);
       
endmodule

module TwoBitUpCounter_Clk( input logic clk, clear, preset,
                        output logic [1:0] Q);
    
    logic D;                    
    logic n; // internal node
    logic clk_out;
    ClockDivider cd(clk,clk_out);
    always_ff@(posedge clk_out) 
       begin
          D <= (~Q[0] & Q[1]) | (~Q[1] & Q[0]);
          n <= ~Q[0];
       end
       
       DFlipFlop D1(D,clk_out,clear,preset,Q[1]);
       DFlipFlop D2(n,clk_out,clear,preset,Q[0]); 
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
