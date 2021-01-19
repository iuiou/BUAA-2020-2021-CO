`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:23:14 11/30/2020 
// Design Name: 
// Module Name:    mult_div 
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
module mult_div(
    input cut,
    input clk,
	 input reset,
    input [31:0] IR,
	 input [31:0] A,
	 input [31:0] B,
	 output reg [31:0] hi,
	 output reg [31:0] lo,
	 output busy
    );
reg [3:0] cnt;
control Control(
    .IR(IR),
	 `instr
	 );
initial begin
    cnt <= 0;
	 hi <= 0;
	 lo <= 0;
end
always @(posedge clk) begin
     if(reset) begin
     cnt <= 0;
	  hi <= 0;
	  lo <= 0;
     end
     else begin
	  if(cnt) cnt <= cnt - 1;
	  else if(!cut) begin
	  if(mthi) hi <= A;
	  else if(mtlo) lo<=  A;
	  else if(mult) begin
	     {hi,lo} <= $signed(A)*$signed(B);
	     cnt <= 5;
	  end
	  else if(multu) begin
	     {hi,lo} <= A * B;
		  cnt <= 5;
	  end
	  else if(div) begin
	     if(B!=0) begin
	     lo <= $signed(A)/$signed(B);
		  hi <= $signed(A)%$signed(B);
		  cnt <= 10;
		  end
	  end
	  else if(divu) begin
	     if(B!=0) begin
	      lo <= A/B;
			hi <= A%B;
			cnt<= 10;
	     end
	  end
	  end
	  end
end
assign start = (mult || multu || divu || div);
assign busy = (cnt || start);
endmodule
