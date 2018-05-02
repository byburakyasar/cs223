`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2017 09:51:07 PM
// Design Name: 
// Module Name: testD2to4_decoder
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

module testD2to4_decoder();
   logic in1,in0,en;
   logic y3,y2,y1,y0;
   //instantiate device under test
   D2to4_decoder dut(y3,y2,y1,y0,in1,in0,en);
   //apply inputs one at a time
   initial begin
     in1 = 0; in0 = 0; en = 0; #10;
     en = 1; #10;
     in0 = 1; en = 0; #10;
     en = 1; #10;
     in1 = 1; in0 = 0; en = 0; #10;
     en = 1; #10;
     in0 = 1; en = 0; #10;
     en = 1; #10;
   end
endmodule