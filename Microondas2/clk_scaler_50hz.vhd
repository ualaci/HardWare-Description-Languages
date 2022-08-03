library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity clk_scaler_50Hz is
  port (
    clk_in  : in  std_logic;
    rst       : in  std_logic;
    clk_out   : out std_logic);
end clk_scaler_50Hz;

architecture Behavioral of clk_scaler_50Hz is

  signal prescaler : unsigned(23 downto 0);
  signal clk_out_i : std_logic;
begin

  gen_clk : process (clk_in, rst)
  begin  -- process gen_clk
    if rst = '0' then
      clk_out_i   <= '0';
      prescaler   <= (others => '0');
    elsif rising_edge(clk_in) then   -- rising clock edge
      if prescaler = X"3A980" then     -- 24mHz/2 = 120 000 in hex
        prescaler   <= (others => '0');
        clk_out_i   <= not clk_out_i;
      else
        prescaler <= prescaler + "1";
      end if;
    end if;
  end process gen_clk;

clk_out <= clk_out_i;

end Behavioral;