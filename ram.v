`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:11:44 04/30/2021 
// Design Name: 
// Module Name:    ram 
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
module ram(Io,rd_wr,s,address,en);
   inout[7:0] Io;
   input [4:0] address;
   input  rd_wr;
	input [1:0]s;
	output reg en;
	
	wire [7:0]  ip;
	reg [7:0]  op;
   reg [7:0]  memory[0:31];
	wire [7:0] z;
   always @*
     begin
	  if(s==2'b00)
	  begin
       if (rd_wr) begin
         op<=memory[address];
			en<=1;
			end
       else
         begin
			 en<=0;
          memory[address]<=ip;
			  
       end
		 end
     end
	  
	 assign Io=(en)?(op):(z);
	 assign ip=(!en)?(Io):(z);
	 
endmodule
//IO inoutport!!!!
//   wire [7:0]  memory[0:31];
//	wire [7:0]a;
//	wire [7:0]b;
	
//	assign memory [address]=(s==2'b00)? ((rd_wr==0) ? IO : b) : a;
//	assign IO=(s==2'b00)? ((rd_wr==1) ? memory[address] : b) : a;


