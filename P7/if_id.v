`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:16:22 11/21/2020 
// Design Name: 
// Module Name:    if_id_id 
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
module if_id(
    input clk,
	 input reset,
	 input clear,
	 input En,
	 input [4:0] exccode,
	 input [31:0] intr,
	 input [31:0] PC,
	 input delay,
	 output reg if_id_wrong,
	 output reg [31:0] if_id_PC,
	 output reg [4:0] if_id_exccode,
	 output reg [31:0] IR,
	 output reg if_id_delay,
	 output reg hi_lo
    );
initial begin
    if_id_PC =0;
	 if_id_exccode = 0;
	 IR =0;
	 if_id_delay=0;
	 hi_lo=0;
	 if_id_wrong=0;
end

control Control(
    .IR(intr),
	 `instr
	 );

always @(posedge clk) begin
    if(reset || clear) begin
	 if_id_PC<=0;
	 IR<=0;
	 if_id_exccode <= 0;
	 if_id_delay <= 0;
	 hi_lo <= 0;
	 if_id_wrong <= 0;
	 end
	 else begin
	  if(En) begin
	  if_id_PC<=PC;
	  IR<=intr;
	  if_id_exccode<=exccode;
	  if_id_delay <= delay;
	  hi_lo <= (mult || multu || div || divu || mtlo || mthi || mfhi || mflo);
	  if_id_wrong <= wrong;
	 end
	 end
end

endmodule
