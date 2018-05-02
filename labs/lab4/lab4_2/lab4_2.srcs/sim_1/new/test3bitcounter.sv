`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2017 03:41:38 PM
// Design Name: 
// Module Name: test3bitcounter
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


module test3bitcounter();
    logic clk;
    logic clear;
    logic preset;
    logic [2:0] counter;
    
    ThreeBitGrayCounter dut(clk, clear, preset, counter);
    
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