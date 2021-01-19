`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:24:25 10/31/2020 
// Design Name: 
// Module Name:    cehsi 
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
module cmp(
    input [31:0] np,
    input [7:0] vip,
    input vvip,
    output result
    );
integer  ans;
integer  n1;
integer  n2;
integer  n3;
integer i;
always@(*)begin
for(i=0;i<32;i++)begin
  if(np[i]) begin
  n1++;
  end
end
for(i=0;i<8;i++)begin
  if(vip[i]) n2=n2+1;
end
n3=vvip&1;
end
endmodule
