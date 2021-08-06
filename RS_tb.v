`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:49:49 04/28/2021
// Design Name:   RS
// Module Name:   D:/xilinx ISE/AZ5/seri_pal_shift_reg/RS_tb.v
// Project Name:  seri_pal_shift_reg
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RS
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RS_tb;

	// Inputs
	reg S;
	reg R;
	reg clk;
	reg Reset;

	// Outputs
	wire Q;
	wire Qb;

	// Instantiate the Unit Under Test (UUT)
	RS uut (
		.S(S), 
		.R(R), 
		.clk(clk), 
		.Reset(Reset), 
		.Q(Q), 
		.Qb(Qb)
	);

	initial begin
		// Initialize Inputs
		S = 0;
		R = 0;
		Reset = 0;
		clk=0;
		// Wait 100 ns for global reset to finish
		#100;
		Reset= 1;
		S= 1;
		R= 0;
		#100;
		S =0;
		R =1;
		#100;
		S=0;
		R=0;
		#100;
		S=1;
		R=1;
		#100;
		
        
		// Add stimulus here

	end
	always #10 clk=!clk;
      
endmodule

