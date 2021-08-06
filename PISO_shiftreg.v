`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:14:44 04/28/2021 
// Design Name: 
// Module Name:    PISO_shiftreg 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module PISO_shiftreg(
    input SH_LD,
    input CLK_INH,
    input CLK,
    input SER,
    input A,
    input B,
    input C,
    input D,
    input E,
    input F,
    input G,
    input H,
    output QH,
    output QHb
    );
		
	wire clk_n,s1,r1,s2,r2,s3,r3,s4,r4,s5,r5,s6,r6,s7,r7,r8,qa,qb,qc,qd,qe,qf,qg,qh;
	assign clk_n=CLK_INH|CLK ,s1=!((!SH_LD)&A) ,s2=!((!SH_LD)&B) ,s3=!((!SH_LD)&C) 
	,s4=!((!SH_LD)&D) ,s5=!((!SH_LD)&E) ,s6=!((!SH_LD)&F) ,s7=!((!SH_LD)&G) ,s8=!((!SH_LD)&H) ,
	r1=!((!SH_LD)&s1) ,r2=!((!SH_LD)&s2) ,r3=!((!SH_LD)&s3) ,r4=!((!SH_LD)&s4) ,r5=!((!SH_LD)&s5) ,
	r6=!((!SH_LD)&s6) ,r7=!((!SH_LD)&s7) ,r8=!((!SH_LD)&s8) ;
	
	
	
	
	D_RS_FF Inst1(!SER,r1,s1,clk_n,qa);
	D_RS_FF Inst2(qa,r2,s2,clk_n,qb);
	D_RS_FF Inst3(qb,r3,s3,clk_n,qc);
	D_RS_FF Inst4(qc,r4,s4,clk_n,qd);
	D_RS_FF Inst5(qd,r5,s5,clk_n,qe);
	D_RS_FF Inst6(qe,r6,s6,clk_n,qf);
	D_RS_FF Inst7(qf,r7,s7,clk_n,qg);
	D_RS_FF Inst8(qg,r8,s8,clk_n,QHb);
	assign QH=!QHb;
endmodule
