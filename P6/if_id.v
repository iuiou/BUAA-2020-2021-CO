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
	 input En,
	 input [31:0] intr,
	 input [31:0] PC,
	 output reg [31:0] if_id_PC,
	 output reg [31:0] IR,
	 output reg hi_lo
    );
initial begin
    if_id_PC =0;
	 IR = 0;
	 hi_lo = 0;
end
control Control(
    .op(intr[31:26]),
	 .fuc(intr[5:0]),
	 .RT(intr[`rt]),
	 `instr
	 );
always @(posedge clk) begin
    if(reset) begin
	 if_id_PC<=0;
	 IR<=0;
	 hi_lo<=0;
	 end
	 else begin
	  if(En) begin
	  if_id_PC<=PC;
	  IR<=intr;
	  hi_lo <= (mult || multu || div || divu || mfhi || mflo || mthi || mtlo || madd);
	 end
	 end
end

endmodule
