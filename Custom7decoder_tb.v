`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:40:19 03/29/2021
// Design Name:   Custom7decoder
// Module Name:   D:/xilinx ISE/Custom7decoder/Custom7decoder_tb.v
// Project Name:  Custom7decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Custom7decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Custom7decoder_tb;

	// Inputs
	reg c0;
	reg c1;
	reg c2;

	// Outputs
	wire a;
	wire b;
	wire c;
	wire d;
	wire e;
	wire f;
	wire g;

	// Instantiate the Unit Under Test (UUT)
	Custom7decoder uut (
		.c0(c0), 
		.c1(c1), 
		.c2(c2), 
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.e(e), 
		.f(f), 
		.g(g)
	);

	initial begin
		// Initialize Inputs
		c0 = 0;
		c1 = 0;
		c2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		c0 = 1;
		c1 = 0;
		c2 = 0;
		#100;
		c0 = 0;
		c1 = 1;
		c2 = 0;
		#100;
		c0 = 1;
		c1 = 1;
		c2 = 0;
		#100;
		c0 = 0;
		c1 = 0;
		c2 = 1;
		#100;
		c0 = 1;
		c1 = 0;
		c2 = 1;
		#100;
		c0 = 0;
		c1 = 1;
		c2 = 1;
		#100;
		c0 = 1;
		c1 = 1;
		c2 = 1;
		
        
		// Add stimulus here

	end
      
endmodule

