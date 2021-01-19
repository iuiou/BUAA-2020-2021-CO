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
    .IR(IR),
	 `instr
	 );
assign tnew = is_ex ? ((lw || lb || lbu || lh || lhu) ? 2:
                       (add || addu || sub || subu || slt || sltu || sll || srl || sra || sllv || srlv || srav || And || Or || Xor || Nor || addi || addiu || andi || ori || xori || lui || slti || sltiu || mflo || mfhi || mfc0)? 1:
							  0):
							 ((lw || lb || lbu || lh || lhu)? 1 :
							  0);
							  
endmodule
