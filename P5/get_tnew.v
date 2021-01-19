`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:25:43 11/23/2020 
// Design Name: 
// Module Name:    get_tnew 
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
`include "wiredef.vh"
module get_tnew(
    input [31:0] IR,
	 input is_ex,
	 output [1:0] tnew
    );

control Control(
    .op(IR[31:26]),
	 .fuc(IR[5:0]),
	 `instr
	 );
assign tnew = is_ex ? (lw ? 2:
                       (addu||subu||lui||ori||cmco)? 1:0):
							 (lw? 1 :0);
							  
endmodule
