entity T07_WaitOn_WaitUntil is
end entity;

architecture TA of T07_WaitOn_WaitUntil is
	signal CountUp 		: integer := 0;
	signal CountDown 	: integer := 10;
begin
	process is
	begin
		CountUp   <= CountUp + 1;
        CountDown <= CountDown - 1;
        wait for 10 ns;
		--  assigned signal values only become effective when the program hits a Wait statement
	end process;
	
	process is
	begin
		-- Wait On will wait until one of the signals change
		wait on CountUp, CountDown;
        report "CountUp=" & integer'image(CountUp) & " CountDown=" & integer'image(CountDown);
	end process;
	
	process is
	begin
		-- Wait Until will wake up if one of the signals change, but will only continue if the expression is true
		wait until CountUp = CountDown;
        report "Jackpot!";
	end process;

		-- Wait On, Wait Until and Wait For can be combined
end architecture;