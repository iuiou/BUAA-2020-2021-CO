`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:38:10 10/24/2020 
// Design Name: 
// Module Name:    alu 
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
module alu(
    input [31:0] A,
	 input [31:0] B,
	 input [2:0] ALUOp,
	 output [31:0] C
    );
assign C = (ALUOp == 3'b000)? A+B:
           (ALUOp == 3'b001)? A-B:
			  (ALUOp == 3'b010)? A&B:
			  (ALUOp == 3'b011)? A|B:
			  (ALUOp == 3'b100)? A>>B:
			  $signed($signed(A)>>>B);

endmodule
