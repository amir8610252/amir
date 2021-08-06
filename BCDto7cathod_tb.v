`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:19:27 03/27/2021
// Design Name:   BCDto7cathod
// Module Name:   D:/xilinx ISE/BCDto7cathod/BCDto7cathod_tb.v
// Project Name:  BCDto7cathod
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BCDto7cathod
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BCDto7cathod_tb;

	// Inputs
	reg [3:0] IN;
	reg LAMP_TEST;
	reg RBI;

	// Outputs
	wire a;
	wire b;
	wire c;
	wire d;
	wire e;
	wire f;
	wire g;

	// Instantiate the Unit Under Test (UUT)
	BCDto7cathod uut (
		.IN(IN), 
		.LAMP_TEST(LAMP_TEST), 
		.RBI(RBI), 
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
		IN = 0;;
		LAMP_TEST = 1;
		RBI = 1;

		// Wait 100 ns for global reset to finish
		#100;
		IN = 4'b0101;;
		LAMP_TEST = 0;

		#100;
		IN = 4'b0100;;
		LAMP_TEST = 0;
		
		#100;
		IN = 4'b0111;
		LAMP_TEST = 0;

		
		#100;
		


	end
      
endmodule

