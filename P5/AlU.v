`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:00:54 11/21/2020 
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
`include "wiredef.vh"
module ALU(
   input [31:0] PC,
   input [31:0] IR,
	input [31:0] RD1,
	input [31:0] RD2,
	input [31:0] imm,
	output [31:0] C,
	output zero
    );	 
wire [31:0] A,B;
wire ALUctrl;
wire [1:0] Op;
wire [31:0] D;
assign D=RD1&RD2;
function [31:0] cal;
   input [31:0] A;
	integer i,temp,ans;
	begin
	temp=0;
	ans=0;
	for(i=0;i<32;i=i+1) begin
	if(A[i]) temp = temp +1;
   else temp = 0;
   if(temp > ans) ans=temp;
	else ans=ans;
	end
   cal = ans;
	end
endfunction

control Control(
    .op(IR[31:26]),
	 .fuc(IR[5:0]),
	 `instr
	 );

assign ALUctrl=(addu||subu);
assign Op=(ori)?2'b10:
          (subu||beq)?2'b01:
			 2'b00;
assign A=RD1;
assign B=(ALUctrl==1)?RD2:imm;
assign C= jal? PC+8:
          lui? imm:
         (Op==0)?cal(RD1):
         (Op==1)?A-B:
			A|B;
assign zero=(C==0);
endmodule
