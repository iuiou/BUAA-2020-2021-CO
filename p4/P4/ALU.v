`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:15:14 11/14/2020 
// Design Name: 
// Module Name:    ALU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ALU(
   input [31:0] A,
	input [31:0] B,
	input [2:0] Op,
	output [31:0] C,
	output zero
    );
assign C=(Op==3'b010)?A|B:
         (Op==3'b001)?A-B:
			A+B;
assign zero=(C==0);
endmodule
