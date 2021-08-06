`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:34:17 05/13/2021 
// Design Name: 
// Module Name:    multiplier 
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
module multiplier #(parameter N =16)
(
    input [N-1:0] A,
    input [N-1:0] B,
	 input start,
	 input clk,
    output  reg[(2*N)-1:0] Q
    ); 
	 reg[((2*N)-1):0] D ;
	 reg[N-1:0] C;
	 reg [N-1:0] i;
	 reg[(2*N)-1:0] result;
	 
	 

	 
	 always@(posedge clk or negedge start)
	 begin
	 if(start)
	 begin
	 if(i<N)
	 begin
	 if(C[0]==1)
	 begin
	 result<=(result+(D<<(i)));
	 C<=(C>>1);
	 i<=i+1;
	 end
	 else 
	 begin
	 i<=(i+1);
	 C<=(C>>1);
	 end
	 end
	 Q<=result;
	 end
	 else 
	 begin
	 result<=0;
	 C<=B;
	 D<=A;
	 i<=0;
	 end
	 
	 end
	 
	

	 
endmodule
