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

module  ControleMic(s0, s1, Tin, Cunp, Kset, Tend, n0, n1, StartC, ShowC, ShowK, ShowT, SpinM);
//Tin: indica recebimento de entrada do teclado
//Cunp: indica recebimento da entrada "Cancela" do teclado
//Kset: indica recebimento da entrada "Ligar" do teclado
//Tend: indica fim da contagem do timer
//StartC: saida que indica inicializacao, pausamento ou despausamento do relogio
//ShowC: saida que indica exibicao do display do clock, o mesmo vale para ShowK e ShowT, mas para o teclado e o Timer respectivamente
//SpinM: saida que indica comando de rotacao do motor
input s0, s1, Tin, Cunp, Kset, Tend;
output reg n0, n1, StartC, ShowC, ShowK, ShowT, SpinM;

always @(s0 or s1 or Tin or Cunp or Kset or Tend)
	begin
		n0 = (s1 & ~Cunp & Kset) | (s0 & ~s1 & ~Tend) | (s0 & ~s1 & Tin) | (s0 & s1 & ~Cunp);
		n1 = (~s1 & Tin) | (s1 & ~Cunp & ~Kset);
		StartC = ~s0 & ~s1;
		ShowC = ~s0 & ~s1;
		ShowK = s1;
		ShowT = s0 & ~s1;
		SpinM = s0;

	end
endmodule
