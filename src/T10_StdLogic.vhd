library ieee;
use ieee.std_logic_1164.all;

entity T10_StdLogic is
end entity;

architecture TA of T10_StdLogic is
	signal signal1 : std_logic := '0';
	signal signal2 : std_logic;
	signal signal3 : std_logic;
begin
	process is
	begin
		wait for 10 ns;
		signal1 <= not signal1;
	end process;
	
	-- Driver A
    process is
    begin
 
        Signal2 <= 'Z';
        Signal3 <= '0';
        wait;
 
    end process;
	
	-- Driver B
    process(Signal1) is
    begin
 
        if Signal1 = '0' then
            Signal2 <= 'Z';
            Signal3 <= 'Z';
        else
            Signal2 <= '1';
            Signal3 <= '1';
        end if;
 
    end process;
	
	-- std_logic is the most common type used to hold a single bit value in VHDL
	-- Think of a std_logic signal as a physical wire in our digital design
	-- If multiple processes try to drive a std_logic signal, its value is determined by a resolution table

end architecture;