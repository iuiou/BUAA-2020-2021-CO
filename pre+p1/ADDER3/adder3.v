`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:51:11 11/06/2020 
// Design Name: 
// Module Name:    adder3 
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
module top_module( 
    input [2:0] a, b,
    input cin,
    output reg [2:0] cout,
    output reg [2:0] sum 
);
integer i;
    always @(*) begin
	 for(i=0;i<3;i=i+1) begin
	 if(i==0) begin
	 {cout[i],sum[i]}=a[i]+b[i]+cin;
	 end
	 else begin
	 {cout[i],sum[i]}=a[i]+b[i]+cout[i-1];
	 end
	 end
	 end
endmodule
