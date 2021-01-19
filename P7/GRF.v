`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:03:48 11/21/2020 
// Design Name: 
// Module Name:    GRF 
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
module GRF(
    input [31:0] PC,
    input clk,
	 input reset,
	 input RegWrite,
    input [4:0] RA1,
	 input [4:0] RA2,
	 input [4:0] WA,
	 input [31:0] WD,
	 output [31:0] RD1,
	 output [31:0] RD2
    );
reg [31:0] Reg[31:0];

integer i;
initial begin
    for(i=0;i<=31;i=i+1) Reg[i] = 0;
end
		 
always @(posedge clk) begin
    if(reset) begin
	 for(i=0;i<=31;i=i+1) Reg[i]<=0;
	 end
	 else begin
       if(RegWrite) begin
		 if(WA!=0) begin
		 $display("%d@%h: $%d <= %h", $time, PC, WA, WD);
		 Reg[WA] <= WD;
		 end
	    end
	 end
end

assign RD1=(WA==RA1 && WA!=0 && RegWrite)?WD:Reg[RA1];
assign RD2=(WA==RA2 && WA!=0 && RegWrite)?WD:Reg[RA2];

endmodule

