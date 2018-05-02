`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2017 10:57:30 PM
// Design Name: 
// Module Name: comperator
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


module comperator(input logic [3:0]mapped_value, random_value,in,
                  input logic clk,key_valid,
                  output logic [3:0] out);
       always@(posedge clk)
            begin
            if(key_valid == 1'b1)
                begin
                  if(mapped_value == random_value) in <= in + 4'd1;
                  else if((in != 0) && (mapped_value != random_value)) in <= in - 4'd1;
                  else in <= in;
                end
            end
       assign out = in;
endmodule
