`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:30:03 06/10/2021 
// Design Name: 
// Module Name:    RC4 
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
module RC4 #(parameter N=5)(
    input [(8*N)-1:0] P,
    input [(8*N)-1:0] Key,
	 input clk,
    output  reg [(8*N)-1:0] C
    );
	 wire a,b,c,d;
	 reg [7:0]S[0:7];// S array  
	 reg [7:0]key[0:4]; // key
	 reg [7:0]T[0:7]; // T array
	 reg [7:0]p[0:4];
	 
	 reg [7:0]r;
	 reg [7:0]t;

	 reg [7:0]x;
	 reg [7:0]y;
	 reg [7:0]k[0:4];
	 
	 integer i,j,m,n,w;
	 
	 always@(posedge clk) 
	 begin
	 S[0] <= 8'd0;
	 S[1] <= 8'd1;
	 S[2] <= 8'd2;
	 S[3] <= 8'd3;
	 S[4] <= 8'd4;
	 S[5] <= 8'd5;
	 S[6] <= 8'd6;
	 S[7] <= 8'd7;
	 p[0] <= P[39:32];
	 p[1] <= P[31:24];
	 p[2] <= P[23:16];
	 p[3] <= P[15:8];
	 p[4] <= P[7:0];
	 key[0] <= Key[39:32];
	 key[1] <= Key[31:24];
	 key[2] <= Key[23:16];
	 key[3] <= Key[15:8];
	 key[4] <= Key[7:0];
	 T[0] <= key[0];
	 T[1] <= key[1];
	 T[2] <= key[2];
	 T[3] <= key[3];
	 T[4] <= key[4];
	 T[5] <= key[0];
	 T[6] <= key[1];
	 T[7] <= key[2];
	 
	 j=0;
	 m=0;
	 n=0;
	 w=0;
	 
  	 for(i=0;i<8;i=i+1) begin
    j = ((j + S[i] + T[i]))%4'd8;
	 
    r<=S[i];
	 
	 t<= S[j];
	 
	 S[j]<=r;
	 
	 S[i]<=t;
 	 end

	 
	 for(i = 0; i < N;i = i+1)
	 begin
	 
	 m=((m+3'd1)%4'd8);
	 
	 n=(n+S[m])%4'd8;
	 
	 x<=S[m];
	 
	 y<= S[n];
	 
	 S[n]<=x;
	 
	 S[m]<=y;
	 
	 w = ((S[m] + S[n])%4'd8);
	 
	 k[i] <= S[w]; 
	 C[i] <= k[i]^p[i];
	 end	 
	 end
	 
	 
	 


endmodule
