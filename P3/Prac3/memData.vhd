library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity memData is
    port(
        clock, MemRead, MemWrite: in std_logic;
        address: in std_logic_vector(7 downto 0);
        write_data: in std_logic_vector(31 downto 0);
        read_data: out std_logic_vector(31 downto 0)
    );
end memData;

architecture behavior of memData is

type byte_array is array (natural range <>) of std_logic_vector(7 downto 0);

 signal bank: byte_array(0 to 255):= (
		X"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
		X"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
		X"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
		X"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
		X"00", x"00", x"00", x"05", x"00", x"00", x"00", x"00", x"00", x"00", x"01", x"6D", x"00", x"00", x"05", x"D4",
		X"00", x"00", x"07", x"D1", x"00", x"00", x"02", x"C7", x"00", x"00", x"07", x"99", x"00", x"00", x"00", x"00",
		X"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
		X"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
		X"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
		X"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
		X"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
		X"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
		X"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
		X"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
		X"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
		X"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00");

signal addr: integer := -1;

	 
	 
begin
	addr <= to_integer(unsigned(address));
--    process (clock, MemRead, address) is
    process (clock) is
    begin
        --addr <= to_integer(signed(address));

        if falling_edge(clock) then
            if MemWrite = '1' then
                bank(addr)     <= write_data(31 downto 24);
                bank(addr + 1) <= write_data(23 downto 16);
                bank(addr + 2) <= write_data(15 downto 8);
                bank(addr + 3) <= write_data(7 downto 0);
            end if;
        end if;

--        if MemRead = '1' then
--            read_data <= bank(addr) & bank(addr + 1) & bank(addr + 2) & bank(addr + 3);
--        end if;
    end process;
	 
	 read_data <= (bank(addr) & bank(addr + 1) & bank(addr + 2) & bank(addr + 3)) when MemRead = '1' else x"00000000";

end behavior;
