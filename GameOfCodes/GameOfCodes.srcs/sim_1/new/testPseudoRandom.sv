`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2017 05:04:05 PM
// Design Name: 
// Module Name: testPseudoRandom
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


module testPseudoRandom();
    logic clk;
    logic load;
    logic reset;
    logic [3:0] out;
    
    PseudoRandomGenerator dut(clk, reset, load, out);
    
    initial begin
        reset <= 0;
        load <= 0;
        #25;
        reset <= 1;
        load <= 0;
        #25;
        reset <= 0;
        load <= 1;
        #25;
        reset <= 0;
        load <= 0;
     end
     
     always begin
        clk = 1; #5;
        clk = 0; #5;
     end
endmodule