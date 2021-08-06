`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:05:16 03/11/2021 
// Design Name: 
// Module Name:    counter_09 
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
module counter_09(
    input clk,
	 input reset,
    output [3:0] out1
    );
	 wire T0,T1,T2,T3,x,y,z,r;
	 assign T0=1, T1=(~out1[3])&out1[0], T2=(~out1[3])&out1[1]&out1[0] , T3=((~out1[3])&out1[2]&out1[1]&out1[0])|(out1[3]&(~out1[2])&(~out1[1])&out1[0]);
				
	 
	 TFF TFF0(T0,clk,reset,out1[0],x);
	 TFF TFF1(T1,clk,reset,out1[1],y);
	 TFF TFF2(T2,clk,reset,out1[2],z);
	 TFF TFF3(T3,clk,reset,out1[3],r);
	
	 
	 
			


endmodule
