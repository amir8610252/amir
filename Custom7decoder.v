`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:30:29 03/29/2021 
// Design Name: 
// Module Name:    Custom7decoder 
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
module Custom7decoder(
    input c0,
    input c1,
    input c2,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g
    );
	 
	 assign a=(((!c2)&c0)|(c1&c0)|(c2&!c0)) , b=((!c2&c1&c0)|(!c1&!c0)|(c2&!c1)|(!c0&c2)) , c=((!c2&c1&c0)|(c2&!c0)|(c2&!c1)|(!c1&!c0))
			,	d=(c0|c1) ,e=(c0|(!c1)| (!c2&c1)) , f=(c0|(!c1)| (!c2&c1)) , g= (((!c1)&(!c0)) | ((!c2)&(!c1)));

endmodule

