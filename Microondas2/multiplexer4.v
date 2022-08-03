//`timescale 1ns / 1ps
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

module  multiplexer4( A1, A2, A3, A4, B1, B2, B3, B4, C1, C2, C3, C4, D1, D2, D3, D4, S0, S1, Y1, Y2, Y3, Y4);

input A1, A2, A3, A4, B1, B2, B3, B4, C1, C2, C3, C4, D1, D2, D3, D4, S0, S1;
output reg Y1, Y2, Y3, Y4;

always @(A1 or A2 or A3 or A4 or B1 or B2 or B3 or B4 or C1 or C2 or C3 or C4 or D1 or D2 or D3 or D4 or S0 or S1)
begin
   if (S0 == 1'b0 && S1 == 1'b0) 
		begin
			Y1 = A1;
			Y2 = A2;
			Y3 = A3;
			Y4 = A4;
   end

	if (S0 == 1'b0 && S1 == 1'b1) 
		begin
			Y1 = B1;
			Y2 = B2;
			Y3 = B3;
			Y4 = B4;
   end
	
	if (S0 == 1'b1 && S1 == 1'b0) 
		begin
			Y1 = C1;
			Y2 = C2;
			Y3 = C3;
			Y4 = C4;
   end
	
	if (S0 == 1'b1 && S1 == 1'b1) 
		begin
			Y1 = D1;
			Y2 = D2;
			Y3 = D3;
			Y4 = D4;
   end	

end
endmodule
