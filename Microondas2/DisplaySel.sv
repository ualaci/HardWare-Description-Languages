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

module  DisplaySel (input ShowC, ShowK, ShowT, XC[15:0], XT[15:0], XK[15:0], output reg Y[15:0]);

always @(*)
begin
   if (ShowC==1) 
		begin
			Y[0]=XC[0];
			Y[1]=XC[1];
			Y[2]=XC[2];
			Y[3]=XC[3];
			Y[4]=XC[4];
			Y[5]=XC[5];
			Y[6]=XC[6];
			Y[7]=XC[7];
			Y[8]=XC[8];
			Y[9]=XC[9];
			Y[10]=XC[10];
			Y[11]=XC[11];
			Y[12]=XC[12];
			Y[13]=XC[13];
			Y[14]=XC[14];
			Y[15]=XC[15];
   end
   if (ShowK==1) 
		begin
			Y[0]=XK[0];
			Y[1]=XK[1];
			Y[2]=XK[2];
			Y[3]=XK[3];
			Y[4]=XK[4];
			Y[5]=XK[5];
			Y[6]=XK[6];
			Y[7]=XK[7];
			Y[8]=XK[8];
			Y[9]=XK[9];
			Y[10]=XK[10];
			Y[11]=XK[11];
			Y[12]=XK[12];
			Y[13]=XK[13];
			Y[14]=XK[14];
			Y[15]=XK[15];
   end

   if (ShowT==1) 
		begin
			Y[0]=XT[0];
			Y[1]=XT[1];
			Y[2]=XT[2];
			Y[3]=XT[3];
			Y[4]=XT[4];
			Y[5]=XT[5];
			Y[6]=XT[6];
			Y[7]=XT[7];
			Y[8]=XT[8];
			Y[9]=XT[9];
			Y[10]=XT[10];
			Y[11]=XT[11];
			Y[12]=XT[12];
			Y[13]=XT[13];
			Y[14]=XT[14];
			Y[15]=XT[15];
   end
end
endmodule
