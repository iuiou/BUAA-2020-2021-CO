`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:07:25 09/12/2020 
// Design Name: 
// Module Name:    counting 
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
`define S0 2'b00
`define S1 2'b01
`define S2 2'b10
`define S3 2'b11
module counting(
    input [1:0] num,
	 input clk,
	 output ans
    );
reg [1:0] status;
initial begin
    status = `S0;
	 end
always @(posedge clk) 
begin
    case(status) 
	 `S0 : begin
		if(num == 1) status <= `S1;
		else if(num == 2) status <= `S0;
		else if(num == 3) status <= `S0;
		else status <= `S0;
      end	 
	 `S1 : begin
	   if(num == 1) status <= `S1;
      else if(num == 2) status <= `S2;
      else if(num == 3) status <= `S0;
		else status <= `S0;
      end 
	 `S2 : begin
      if(num == 1) status <= `S1;
      else if(num == 2) status <= `S2;
      else if(num == 3) status <= `S3;
		else status <= `S0;
      end    
	 `S3 : begin
      if(num == 1) status <= `S1;
		else if(num == 2) status <= `S0;
		else if(num == 3) status <= `S3;
		else status <= `S0;
      end		
   endcase
end
assign ans=(status == `S3)?1:0;
endmodule
