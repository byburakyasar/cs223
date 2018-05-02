`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/16/2017 02:39:01 PM
// Design Name: 
// Module Name: Mapping
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


module Mapping(input logic  clk,
               input logic  keypad_valid,
               input logic  [3:0] keypad_value,
               output logic [3:0] motor_value);
               
       always@(posedge clk)
            if(key_valid == 1'b1)
                begin
                    case(keypad_value)
                        4'b00_00: motor_value <= 4'b01_11;
                        4'b00_01: motor_value <= 4'b11_01;
                        4'b00_10: motor_value <= 4'b10_11;
                        4'b00_11: motor_value <= 4'b11_00;
                        4'b01_00: motor_value <= 4'b00_01;
                        4'b01_01: motor_value <= 4'b00_00;
                        4'b01_10: motor_value <= 4'b00_10;
                        4'b01_11: motor_value <= 4'b11_10;
                        4'b10_00: motor_value <= 4'b10_01;
                        4'b10_01: motor_value <= 4'b01_10;
                        4'b10_10: motor_value <= 4'b11_11;
                        4'b10_11: motor_value <= 4'b00_11;
                        4'b11_00: motor_value <= 4'b01_00;
                        4'b11_01: motor_value <= 4'b01_01;
                        4'b11_10: motor_value <= 4'b10_00;
                        4'b11_11: motor_value <= 4'b10_10;
                        default: motor_value <= 4'b00_00;
                    endcase
                end
endmodule