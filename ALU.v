`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:33:47 05/14/2021 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [3:0] s,
    input [7:0] a,
    input [7:0] b,
    output reg [7:0] f,
	 input clk,
	 output reg en,
    inout cin
    );
wire z;
reg x;
reg [8:0] n;
wire ci;
reg co;

assign ci = (!en) ? (cin):(z);
assign cin = (en) ? (co) :(z);


always @(posedge clk)
begin
	if(s==4'd0)
		begin
			f<=a; // Transfer A
			en<=1;
		end
	else if(s==4'd1)
		begin
			{co,f}<=a+1; // Increment A
			en<=1;
		end
	else if(s==4'd2)
		begin
			{co,f}<=a+b; // Add A,B
			en<=1;
		end
	else if(s==4'd3)
		begin
			{co,f}<=a+b+ci; // Add A,B with Carry-in
			en<=0;
			
		end
	else if (s==4'd4)
		begin
			{co,f}<=a+(~b[7:0]);// Subtract with borrow
			en<=1;
		end
	else if(s==4'd5) 
		begin
			f<=a+(~b[7:0])+(8'b00000001); // Subtract A,B
		end
	else if(s==4'd6) 
		begin
			f<=a-(8'b00000001); // Decrement A
		end
	else if(s==4'd7)
		begin
			f<=b; // Transfer B
		end
	else if(s==4'd8)
		begin
			f<=a&b; // AND
		end
	else if(s==4'd9)
		begin
			f<=a|b; // OR
		end
	else if(s==4'd10)
		begin
			f<=a^b; // XOR
		end
	else if(s==4'd11)
		begin
			f<=(~a); // Complement A
		end
	else if(s==4'd12)
		begin
			f<={ci,a[7:1]}; // Shift right A into Cin
			en<=0;
		end
	else if(s==4'd13)
		begin
				n<={ci,a};
				f<={n[8:1]}; // Rotate right A with Cin
				en<=0;
		end
end


endmodule
