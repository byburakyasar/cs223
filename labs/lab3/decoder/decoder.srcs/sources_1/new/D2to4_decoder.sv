`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2017 09:50:15 PM
// Design Name: 
// Module Name: D2to4_decoder
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

module D2to4_decoder( output logic y3,y2,y1,y0,
                      input logic in1,in0,en);
   assign y3 = en & in1 & in0;
   assign y2 = en & in1 & ~in0;
   assign y1 = en & ~in1 & in0;
   assign y0 = en & ~in1 & ~in0;
endmodule
