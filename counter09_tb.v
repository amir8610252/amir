`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:08:19 03/11/2021
// Design Name:   counter_09
// Module Name:   D:/xilinx ISE/counter_09/counter09_tb.v
// Project Name:  counter_09
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter_09
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module counter09_tb;

	// Inputs
	reg clk;
	reg reset;
	integer i;
	// Outputs
	wire [3:0] out1;


	// Instantiate the Unit Under Test (UUT)
	counter_09 uut (
		.clk(clk),
		.reset(reset),
		.out1(out1) 
	
	);

	initial begin
		// Initialize Inputs
		reset=1;
		clk=0;

		// Wait 100 ns for global reset to finish
		
		for(i=0;i<200;i=i+1) begin
				#10;
				clk=!clk;
				if(i>10)
					reset=0;
			end
		
        
		// Add stimulus here

	end
      
endmodule

