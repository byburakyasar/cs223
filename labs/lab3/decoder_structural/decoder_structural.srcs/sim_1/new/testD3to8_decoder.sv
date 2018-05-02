`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2017 10:03:26 PM
// Design Name: 
// Module Name: testD3to8_decoder
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

module testD3to8_decoder();
   logic in2,in1,in0;
   logic y7,y6,y5,y4,y3,y2,y1,y0;
   //instantiate device under test
   D3to8_decoder dut(y7,y6,y5,y4,y3,y2,y1,y0,in2,in1,in0);
   //apply inputs one at a time
   initial begin
     in0 = 0; in2 = 0; in1 = 0; #10;
     in1 = 1; #10;
     in2 = 1; in1 = 0; #10;
     in1 = 1; #10;
     in0 = 1; in2 = 0; in1 = 0; #10;
     in1 = 1; #10;
     in2 = 1; in1 = 0; #10;
     in1 = 1; #10;
   end
endmodule