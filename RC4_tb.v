`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:18:11 06/25/2021
// Design Name:   RC4
// Module Name:   D:/xilinx ISE/digital lab/AZ5/RC4algorithem/RC4_tb.v
// Project Name:  RC4algorithem
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RC4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RC4_tb;

	// Inputs
	reg [39:0] P;
	reg [39:0] Key;
	reg clk;
	// Outputs
	wire [39:0] C;

	// Instantiate the Unit Under Test (UUT)
	RC4 uut (
		.P(P), 
		.Key(Key), 
		.clk(clk),
		.C(C)
	);

	initial begin
		// Initialize Inputs
		P = 0;
		Key = 0;
		clk=0;
		// Wait 100 ns for global reset to finish
		#100;
		P = {8'd1,8'd2,8'd5,8'd7,8'd0};
		Key = {8'd5,8'd9,8'd8,8'd3,8'd1};
		#30;
		P = 0;
		Key = 0;
		#20;
		P = {8'd2,8'd2,8'd6,8'd7,8'd0};
		Key = {8'd2,8'd9,8'd4,8'd3,8'd1};
      #100;  
		// Add stimulus here

	end
   always #50 clk=!clk;
endmodule

