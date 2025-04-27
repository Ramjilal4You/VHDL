entity T09_SensitivityList is
end entity;
 
architecture sim of T09_SensitivityList is
 
    signal CountUp   : integer := 0;
    signal CountDown : integer := 10;
 
begin
 
    process is
    begin
 
        CountUp   <= CountUp + 1;
        CountDown <= CountDown - 1;
        wait for 20 ns;
 
    end process;
 
    -- Process triggered using Wait On
    process is
    begin

        --if CountUp = CountDown then
            report "Process A: Jackpot!";
        --end if;
 
        wait on CountUp, CountDown;
 
    end process;
 
    -- Equivalent process using a sensitivity list
    process(CountUp, CountDown) is
    begin
 
        --if CountUp = CountDown then
            report "Process B: Jackpot!";
        --end if;
 
    end process;
 
	-- A process with a sensitivity list is equivalent to a process with wait on at the end
	-- All signals that are being read within a process must be on the sensitivity list
	-- Use wait statements in simulation code, and sensitivity lists in RTL code

end architecture;