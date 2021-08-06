`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:29:39 03/14/2021
// Design Name:   CounterBCD
// Module Name:   D:/xilinx ISE/BCD20counter/BCD20counter_tb.v
// Project Name:  BCD20counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CounterBCD
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BCD20counter_tb;

	// Inputs
	reg CLK;
	reg LOAD;
	reg CLR;
	reg [3:0] DATA;
	reg ENP;
	reg ENT;

	// Outputs
	wire [3:0] Q0;
	wire [3:0] Q1;
	wire [7:0] Q;
	wire RCO1;
	wire RCO2;

	// Instantiate the Unit Under Test (UUT)
	CounterBCD uut (
		.CLK(CLK), 
		.LOAD(LOAD), 
		.CLR(CLR), 
		.DATA(DATA), 
		.ENP(ENP), 
		.ENT(ENT), 
		.Q0(Q0), 
		.Q1(Q1), 
		.Q(Q), 
		.RCO1(RCO1), 
		.RCO2(RCO2)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		LOAD = 0;
		CLR = 0;
		DATA = 0;
		ENP = 0;
		ENT = 0;

		// Wait 100 ns for global reset to finish
		#100;
      CLR=1;
      LOAD=1;
		#10;
		CLR=0;
		DATA=4'b0000;
		#20;
		LOAD=0;
		ENP=1;
		#150;
		ENT=1;
		#250;
		ENP=1;
		#300;
	end
 always #10 CLK=!CLK;
endmodule

