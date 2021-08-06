`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:59:16 03/27/2021 
// Design Name: 
// Module Name:    BCDto7cathod 
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
module BCDto7cathod(
	 input [3:0] IN,
    input LAMP_TEST,
    input RBI,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g
    );
	 
	 wire w1,w2,w3,E1,E2,E3,E4,Y;

	 assign w1=!((IN[0])&(RBI)),w2=!((IN[1])&(RBI)),w3=!((IN[2])&(RBI)) ,
			Y=!(((!LAMP_TEST)&(RBI))&(!IN[3])&(w3)&(w2)&(w1)),
			E1=!(Y&w1),E2=!(Y&w2),E3=!(Y&w3),E4=!(Y&(!IN[3])),
			a=!((E2&E4)|(w1&E3)|(E1&w2&(!IN[3])&w3)),b=!((E2&E4)|(E1&E3&w2)|(w1&E3&E2)),c=!((E3&E4)|(w1&E2&w3)),
			d=!((E1&w2&w3)|(w1&w2&E3)|(E1&E2&E3)),e=!(E1|(w2&E3)),f=!((E1&E2)|(E2&w3)|(E1&w3&(!IN[3]))),
			g=!((E1&E2&E3)|(w2&w3&(!IN[3])));


endmodule
