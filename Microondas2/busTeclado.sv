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

module  busTeclado (input display1[3:0], display2[3:0], display3[3:0], display4[3:0], output reg XK[15:0]);

always @(*)
begin
			XK[0]=display1[0];
			XK[1]=display1[1];
			XK[2]=display1[2];
			XK[3]=display1[3];
			XK[4]=display2[0];
			XK[5]=display2[1];
			XK[6]=display2[2];
			XK[7]=display2[3];
			XK[8]=display3[0];
			XK[9]=display3[1];
			XK[10]=display3[2];
			XK[11]=display3[3];
			XK[12]=display4[0];
			XK[13]=display4[1];
			XK[14]=display4[2];
			XK[15]=display4[3];
end
endmodule
