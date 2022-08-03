library ieee;
use ieee.std_logic_1164.all;

entity Reg4 is
	port(I: in std_logic_vector(3 downto 0);
	     Q: out std_logic_vector(3 downto 0);
		  clk: in std_logic
	);
end Reg4;

architecture comportamento of Reg4 is
begin
	process(clk)
	begin
		if (clk='0' and clk'event) then
			Q <= I;
		end if;
	end process;
end comportamento;