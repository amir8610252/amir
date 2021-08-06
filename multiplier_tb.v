`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:15:20 05/13/2021
// Design Name:   multiplier
// Module Name:   D:/xilinx ISE/AZ5/shift_add_mulitiplier/multiplier_tb.v
// Project Name:  shift_add_mulitiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module multiplier_tb;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg start;
	reg clk;

	// Outputs

	wire [31:0] Q;

	// Instantiate the Unit Under Test (UUT)
	multiplier uut (
		.A(A), 
		.B(B), 
		.start(start), 
		.clk(clk), 
		.Q(Q)
	);

initial begin
		// Initialize Inputs
		A = 16'b1101010001110010;
		B = 16'b1101111001111001;
		start = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#30;
		start = 1;
		#350;
		start=0;
		A = 16'b1101011111110010;
		B = 16'b1100011001111001;
		#30;
		start=1;
		#350;
		start=0;
		A = 16'b1101010000110010;
		B = 16'b1100011001111111;
		#30;
		start=1;
		#350;
		start=0;
		A = 16'b0000000000110010;
		B = 16'b0000011001111111;
		#30;
		start=1;
		#350;
		start=0;
		A = 16'b0100000000110010;
		B = 16'b1100011001111111;
		#30;
		start=1;
		#350;

		
        
		// Add stimulus here

	end
	always #10 clk=!clk;
      
endmodule

