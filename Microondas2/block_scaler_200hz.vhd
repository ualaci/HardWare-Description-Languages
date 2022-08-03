library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.all;

entity block_scaler_200hz is
  port (
    clk_in	  : in  std_logic;
    rst       : in  std_logic;
    clk_out   : out std_logic);
end block_scaler_200hz;

architecture Behavioral of block_scaler_200hz is

  signal prescaler : unsigned(23 downto 0);
  signal clk_out_i : std_logic;
begin

  gen_clk : process (clk_in, rst)
  begin  -- process gen_clk
    if rst = '1' then
      clk_out_i   <= '0';
      prescaler   <= (others => '0');
    elsif rising_edge(clk_in) then   -- rising clock edge
      if prescaler = X"EA60" then     -- 24mHz/2 = 12 000 000 in hex 
        prescaler   <= (others => '0');
        clk_out_i   <= not clk_out_i;
      else
        prescaler <= prescaler + "1";
      end if;
    end if;
  end process gen_clk;

clk_out <= clk_out_i;

end Behavioral;