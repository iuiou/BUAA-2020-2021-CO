`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:19:02 09/18/2020 
// Design Name: 
// Module Name:    cpu_checker 
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
module cpu_checker(
    input clk,
    input reset,
    input [7:0] char,
    output reg [1:0] format_type
    );
reg [3:0] status;
integer cnt,op;
initial begin
    status = 0;
    cnt = 0;
    op = 0;
    format_type = 0;
end

always @(posedge clk) begin
    if(reset) begin
        status = 0;
        cnt = 0; 
    end
    else begin
        case(status)
        0 : begin
        if(char == "^") status = 1;
        else status = 0;
    end
        1: begin
        if(char >= "0" && char <= "9") begin 
            status = 2;
            cnt = cnt + 1;
        end
        else status = 0;
    end
        2: begin
        if(char >= "0" && char <= "9") begin
            cnt = cnt + 1;
            if(cnt <= 4) status = 2;
            else status = 0;
        end
        else if(char == "@") begin
            cnt = 0;
            status = 3;
        end
        else status = 0;
    end
        3: begin
        if(char >= "0"&& char <= "9"||(char >= "a"&&char <= "f")) begin
            cnt = cnt + 1;
            status = 4;
        end
        else status = 0;
        end
        4: begin
        if(char >= "0"&& char <= "9"||(char >= "a"&&char <= "f")) begin
            cnt = cnt + 1;
            if(cnt <= 8) status = 4;
            else status = 0; 
        end
        else if(char == ":") begin
        if(cnt == 8) begin
            cnt = 0; 
            status = 5;
        end
        else status = 0;   
        end
        else status = 0;
        end
        5: begin
           if(char == " ") status = 5;
           else if(char == "*") begin
               status = 6;
               op = 0;
               end
           else if(char == "$") begin
               status = 6;
               op = 1;
               end
           else status = 0; 
        end
        6: begin
          if(char >= "0" && char <= "9") begin
            cnt = cnt + 1;
            status = 7;
          end
          else if(char >= "a" && char <= "f") begin
            if(op == 0) begin
            cnt = cnt + 1;
            status = 7;
            end
            else status = 0;
          end
          else status = 0;  
        end
        7: begin
        if(char >= "0" && char <= "9"||(char >= "a"&&char <= "f")) begin
            cnt = cnt + 1;
            if(!op) begin
              if(cnt <= 8) status = 7;
              else status = 0;
              end 
            else begin
              if(char >= "a"&& char <= "f") begin
              status = 0;
              end
              else begin
                if(cnt <= 4) status = 7;
                else status = 0;
              end
            end
        end
        else if(char == "<") begin
           if(!op) begin
              if(cnt == 8) begin
                cnt = 0; 
                status = 9;
              end
              else status = 0;
           end
           else begin
               cnt = 0;
               status = 9;
           end
        end
        else if(char == " ") begin
            if(!op) begin
              if(cnt == 8) begin
                cnt = 0; 
                status = 8;
              end
              else status = 0;
           end
           else begin
               cnt = 0;
               status = 8;
           end
			  end
        else status = 0;
        end
        8: begin
            if(char == " ") status = 8;
            else if(char == "<") status = 9;
            else status = 0;
        end
        9: begin
            if(char == "=") status = 10;
            else status = 0;
        end
        10: begin
            if(char == " ") status = 10;
            else if(char >= "0" && char <= "9"||(char >= "a"&&char <= "f")) begin
                cnt = cnt + 1;
                status = 11;
            end 
            else status = 0;
        end
        11: begin
            if(char >= "0" && char <= "9"||(char >= "a"&&char <= "f")) begin
            cnt = cnt + 1;
            if(cnt <= 8) status = 11;
            else status = 0; 
           end
            else if(char == "#") begin
            if(cnt == 8) begin
             cnt = 0; 
             status = 12;
            end
            else status = 0;   
            end
        else status = 0;
        end
        endcase
        if(status == 0) begin
		  cnt = 0;
		  op = 0;
		  end
        else cnt = cnt;
        if(status == 12) begin
            cnt = 0;
            format_type = (op == 0? 2 : 1);
            status = 0;
				op = 0;
        end
        else format_type = 0;
    end
end
endmodule

