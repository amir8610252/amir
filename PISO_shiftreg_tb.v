`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:59:26 04/28/2021
// Design Name:   PISO_shiftreg
// Module Name:   D:/xilinx ISE/AZ5/PISO_shiftreg/PISO_shiftreg_tb.v
// Project Name:  PISO_shiftreg
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PISO_shiftreg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PISO_shiftreg_tb;

	// Inputs
	reg SH_LD;
	reg CLK_INH;
	reg CLK;
	reg SER;
	reg A;
	reg B;
	reg C;
	reg D;
	reg E;
	reg F;
	reg G;
	reg H;

	// Outputs
	wire QH;
	wire QHb;

	// Instantiate the Unit Under Test (UUT)
	PISO_shiftreg uut (
		.SH_LD(SH_LD), 
		.CLK_INH(CLK_INH), 
		.CLK(CLK), 
		.SER(SER), 
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.E(E), 
		.F(F), 
		.G(G), 
		.H(H), 
		.QH(QH), 
		.QHb(QHb)
	);

	initial begin
		// Initialize Inputs
		SH_LD = 1;
		CLK_INH = 1;
		CLK = 0;
		SER = 0;
		A = 0;
		B = 0;
		C = 0;
		D = 0;
		E = 0;
		F = 0;
		G = 0;
		H = 0;

		// Wait 100 ns for global reset to finish
		#15;
		SH_LD =0;
		A = 1;
		B = 0;
		C = 1;
		D = 0;
		E = 1;
		F = 0;
		G = 1;
		H = 1;
		#15;
		SH_LD =1;
		A = 0;
		B = 0;
		C = 0;
		D = 0;
		E = 0;
		F = 0;
		G = 0;
		H = 0;
		#15;
		CLK_INH = 0;
		#15;
		SH_LD =0;
		A = 0;
		B = 1;
		C = 1;
		D = 0;
		E = 0;
		F = 0;
		G = 0;
		H = 1;
		#15;
		SH_LD =1;
		A = 0;
		B = 0;
		C = 0;
		D = 0;
		E = 0;
		F = 0;
		G = 0;
		H = 0;
		#15;
		CLK_INH = 0;
		#15;
				SH_LD =0;
		A = 0;
		B = 1;
		C = 0;
		D = 0;
		E = 0;
		F = 1;
		G = 1;
		H = 1;
		#15;
		SH_LD =1;
		A = 0;
		B = 0;
		C = 0;
		D = 0;
		E = 0;
		F = 0;
		G = 0;
		H = 0;
		#15;
		CLK_INH = 0;
		#15;
		SH_LD =0;
		A = 0;
		B = 0;
		C = 1;
		D = 0;
		E = 0;
		F = 1;
		G = 0;
		H = 0;
		#15;
		SH_LD =1;
		A = 0;
		B = 0;
		C = 0;
		D = 0;
		E = 0;
		F = 0;
		G = 0;
		H = 0;
		#15;
		CLK_INH = 0;
		#15;


		
	
		
        
		// Add stimulus here

	end
	always #10 CLK=!CLK;
      
endmodule

