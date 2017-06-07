library ieee;
use ieee.std_logic_1164.all;

entity clock is
	port (
		clk: out std_logic
	);
end clock;

architecture behav of clock is
begin

bucle1: LOOP
	clk<= '0';
	wait for 50ns;
	clk<= '1';
	wait for 50ns;
    EXIT bucle1 WHEN a>10;
END LOOP bucle1;


end behav;
