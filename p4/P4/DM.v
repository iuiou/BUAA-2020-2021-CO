`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:13:12 11/14/2020 
// Design Name: 
// Module Name:    DM 
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
module DM(
    input [31:0] PC,
    input clk,
	 input reset,
	 input MemWrite,
    input [31:0] addr,
	 input [31:0] din,
	 output [31:0] dout
    );
reg [31:0] dram [1023:0];
integer i;
initial begin
    for(i=0;i<=1023;i=i+1) dram[i]<=0;
end

always @(posedge clk) begin
    if(reset) begin
	 for(i=0;i<=1023;i=i+1) dram[i]<=0;
	 end
	 else begin
	 if(MemWrite) begin
	     dram[addr[11:2]]<=din;
	     $display("@%h: *%h <= %h", PC, addr, din);
		  end
    end
end

assign dout=dram[addr[11:2]];
endmodule
