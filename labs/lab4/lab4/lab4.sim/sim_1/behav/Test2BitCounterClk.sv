`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2017 06:46:11 PM
// Design Name: 
// Module Name: Test2BitCounterClk
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

module Test2BitCounterClk();
    logic clk;
    logic clear;
    logic preset;
    logic [1:0] Q;
    
    TwoBitUpCounter_Clk dut(clk, clear, preset, Q);
    
    initial begin
       preset <= 0;
       clear <= 1;
       #40;
       preset <= 1;
       clear <= 0;
       #40;
       preset <= 0;
    end
    
    always begin
       clk = 1; #5;
       clk = 0; #5;
    end
endmodule