`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:59:57 05/15/2021
// Design Name:   ALU
// Module Name:   C:/Users/Aghaei/Desktop/Digital 6/ALU/TBALU.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TBALU;

	// Inputs
	reg [3:0] s;
	reg [7:0] a;
	reg [7:0] b;
	reg clk;

	// Outputs
	wire [7:0] f;
	wire en;

	// Bidirs
	wire cin;
	wire z;
	reg v;
	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.s(s), 
		.a(a), 
		.b(b), 
		.f(f), 
		.clk(clk), 
		.en(en),  
		.cin(cin)
	);
	assign cin=(!en) ? (v):(z);
	initial begin
		// Initialize Inputs
		s = 4'd0;
		a = 8'd52;
		b = 8'd48;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		s=4'd0;
		#100;
		s=4'd1;
		#100;
		s=4'd2;
		#100;
		s=4'd3;
		v=0;
		#100;
		s=4'd4;
		#100;
		s=4'd5;
		#100;
		s=4'd6;
		#100;
		s=4'd7;
		#100;
		s=4'd8;
		#100;
		s=4'd9;
		#100;
		s=4'd10;
		#100;
		s=4'd11;
		#100;
		s=4'd12;
		v=0;
		#100;
		s=4'd13;
		v=0;
		#100;
	end
      always #10 clk=!clk;
      
endmodule

