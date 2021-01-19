`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:18:24 09/26/2020 
// Design Name: 
// Module Name:    toupiaoqi 
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
module toupiaoqi(
     input A,
	  input B,
	  input C,
	  input D,
	  output a,
	  output b,
	  output c,
	  output d,
	  output e,
	  output f,
	  output g
    );
assign a=(!B&&!D)||(!A&&C)||(!A&&B&&D)||(B&&C)||(A&&!B&&!C)||(A&&!D);
assign b=(!B&&!C&&!D)||(!A&&B&&D)||(B&&C)||(A&&!B)||(A&&!D);
assign c=(!B&&!D)||(C&&!D)||(A&&C)||(A&&B);
assign d=(!A&&!B&&!D)||(!B&&C&&D)||(B&&!C&&D)||(B&&C&&!D)||(A&&!C);
assign e=(!A&&!C)||(!A&&D)||(!C&&D)||(!A&&B)||(A&&!B);
assign f=(!A&&!B)||(!A&&!C&&!D)||(!B&&!D)||(!A&&C&&D);
assign g=(!B&&C)||(C&&!D)||(!A&&B&&!C)||(A&&!B)||(A&&D);

endmodule
