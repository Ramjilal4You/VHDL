entity T08_If_elsif_else is
end entity;


architecture TA of T08_If_elsif_else is
	signal CountUp : integer := 0;
	signal CountDown : integer :=10;
begin
	process is
	begin
		CountUp <= CountUp + 1;
		CountDown <= CountDown - 1;
		
		wait for 10 ns;
	end process;
	
	process is
	begin
		
		wait on CountUp, CountDown;
	
		if CountUp > CountDown then
			report "CountUp is larger";
		elsif CountUp < CountDown then
			report "CountDown is larger";
		else
			report "They are equal";
		end if;
		
		-- If-Then may be used alone or in combination with Elsif and Else.
		-- Expressions may contain relational and logical comparisons and mathematical calculations.
		
	end process;

end architecture;