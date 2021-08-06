`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:28:33 04/28/2021 
// Design Name: 
// Module Name:    RS 
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
module RS(
    input R,
    input S,
    input clk,
    input Reset,
    output  reg Q,
    output  reg Qb
    );
	 always@(posedge clk,negedge Reset)
	 begin
	 if(Reset==0)
	 begin
	 Q=1'b0;
	 Qb=1'b1;
	 end
	 else
	 begin
	 case({S,R})
	 2'b00:
	 begin 
	 Q=Q; 
	 Qb=!Q;
	 end
	 2'b01: begin
	 Q=1'b0;
	 Qb=1'b1;
	 end
	 2'b10: begin
	 Q=1'b1;
	 Qb=1'b0;
	 end
	 2'b11: begin
	 Q=1'b0;
	 Qb=1'b1;
	 end
	 endcase
	 end
	 end
endmodule

