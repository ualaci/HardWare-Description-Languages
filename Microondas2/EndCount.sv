module  EndCount (input XT[15:0], output reg Tend);

always @(*)
begin
   if (XT[0]== 0 & XT[2]== 0 & XT[3]== 0 & XT[4]== 0 & XT[5]== 0 & XT[6]== 0 & XT[7]== 0 & XT[8]== 0 & XT[9]== 0 & XT[10]== 0 & XT[11]== 0 & XT[12]== 0 & XT[13]== 0 & XT[14]== 0 & XT[15]== 0 )
		begin
			Tend = 1;
		end
end
endmodule