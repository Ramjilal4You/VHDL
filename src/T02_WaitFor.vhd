entity T02_WaitFor is
end entity;

architecture ta of T02_WaitFor is
begin
	process is
	begin
		-- This is the start of the process "thread"
		
		report "Hello WaitFor!";
		wait for 10 ns; -- hr, min, sec, ms, us, ns etc.
		
        -- The process will loop back to the start from here
		
	end process;
end ta;