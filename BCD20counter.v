`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:17:26 03/14/2021 
// Design Name: 
// Module Name:    BCD20counter 
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
module CounterBCD(
	 input CLK,
    input LOAD,
    input CLR,
    input [3:0]DATA,
    input ENP,
    input ENT,
    output [3:0]Q0,
	 output [3:0]Q1,
	 output [7:0]Q,
    output RCO1,
	 output RCO2
    );
wire i, j ,k;

and(i,Q0[3],!Q0[2],!Q0[1],Q0[0]);
and(j,!Q1[3],!Q1[2],Q1[1],!Q1[0]);
maincounter ins0(CLK,LOAD,i|CLR|j,DATA[3:0],ENP,ENT,Q0[3:0],RCO1);
maincounter ins1(CLK,LOAD,CLR|j,DATA[3:0],i,i,Q1[3:0],RCO2);
assign Q=((10*Q1)+Q0);
endmodule
