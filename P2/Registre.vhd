library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Registre is
    port (
        Reset  : in STD_LOGIC;
        clk    : in STD_LOGIC;
        enable : in STD_LOGIC;
        Din    : in STD_LOGIC_VECTOR(31 downto 0);
        Dout   : out STD_LOGIC_VECTOR(31 downto 0)
    );
end Registre;

architecture Behavioral of Registre is
begin
    -- Es pot realitzar una definició comportamental del registre, basat en un procés
process(clk,Reset)
begin
    if(Reset = '1') then
        Dout <= (others => '0');
    elsif falling_edge(clk) and (enable = '1') then
        Dout <= Din;
    end if;
end process;
end Behavioral;
