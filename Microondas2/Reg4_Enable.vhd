library ieee;
use ieee.std_logic_1164.all;

entity Reg4_Enable is
	port (clock, resetn, E: in std_logic;
		D: in std_logic_vector (3 downto 0);
		Q: out std_logic_vector (3 downto 0)
	);
end Reg4_Enable;

architecture bhv of Reg4_Enable is
begin
process (resetn, E, clock)
	begin
		if (resetn = '0') then
			Q <= (others => '0');
		elsif (clock'event and clock = '1') then
			if E = '1' then
				Q <= D;
			end if;
		end if;
	end process;
end bhv;

