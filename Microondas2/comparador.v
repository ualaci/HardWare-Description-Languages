`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2019 06:19:09 PM
// Design Name: 
// Module Name: rtl_simulation
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module VerilogCourse(a1,b1,c1,d1,a2,b2,c2,d2,a3,b3,c3,d3,a4,b4,c4,d4, w1,w2,w3,w4,x1,x2,x3,x4,y1,y2,y3,y4,z1,z2,z3,z4, C);
	input a1,b1,c1,d1,a2,b2,c2,d2,a3,b3,c3,d3,a4,b4,c4,d4;
	input w1,w2,w3,w4,x1,x2,x3,x4,y1,y2,y3,y4,z1,z2,z3,z4;
	output reg C;
	reg O1,O2,O3,O4, P1,P2,P3,P4, Q1,Q2,Q3,Q4, R1,R2,R3,R4;
	
	always @(a1 or a2 or a3 or a4 or a4 or b1 or b2 or b3 or b4 or c1 or c2 or c3 or c4 or d1 or d2 or d3 or d4 or w1 or w2 or w3 or w4 or x1 or x2 or x3 or x4 or y1 or y2 or y3 or y4 or z1 or z2 or z3 or z4)
	begin
	O1 = (a1 & w1) | (~a1 & ~w1);
	O2 = (a2 & w2) | (~a2 & ~w2);
	O3 = (a3 & w3) | (~a3 & ~w3);
	O4 = (a4 & w4) | (~a4 & ~w4);
	
	P1 = (b1 & x1) | (~b1 & ~x1);
	P2 = (b2 & x2) | (~b2 & ~x2);
	P3 = (b3 & x3) | (~b3 & ~x3);
	P4 = (b4 & x4) | (~b4 & ~x4);
	
	Q1 = (c1 & y1) | (~c1 & ~y1);
	Q2 = (c2 & y2) | (~c2 & ~y2);
	Q3 = (c3 & y3) | (~c3 & ~y3);
	Q4 = (c4 & y4) | (~c4 & ~y4); 
	
	R1 = (d1 & z1) | (~d1 & ~z1);
	R2 = (d2 & z2) | (~d2 & ~z2);
	R3 = (d3 & z3) | (~d3 & ~z3);
	R4 = (d4 & z4) | (~d4 & ~z4);
	
	C = O1 & O2 & O3 & O4 & P1 & P2 & P3 & P4 & Q1 & Q2 & Q3 & Q4 & R1 & R2 & R3 & R4;
	end
	
endmodule
