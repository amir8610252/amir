`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:12:57 04/30/2021
// Design Name:   ram
// Module Name:   D:/xilinx ISE/RAM/ram_tb.v
// Project Name:  RAM
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ram
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ram_tb;

	// Inputs
	reg [3:0] ip;
	reg rd_wr;
	reg clk;
	reg [3:0] address;

	// Outputs
	wire [3:0] op;

	// Instantiate the Unit Under Test (UUT)
	ram uut (
		.op(op), 
		.ip(ip), 
		.rd_wr(rd_wr), 
		.clk(clk), 
		.address(address)
	);

	initial begin
		// Initialize Inputs
		ip = 4'b0000;
		rd_wr = 0;
		clk = 0;
		address=4'b0000;

		// Wait 100 ns for global reset to finish
		#100;
		rd_wr =0;
		ip = 4'b1011;
		address=4'b0001;
		#100;
		
		rd_wr =1;
		address=4'b0000;
		
		#100;
		
		

	end
   always #10 clk=!clk;
endmodule

