entity T02_WaitFor is
end entity;

architecture ta of T02_WaitFor is
begin
	process is
	begin
		report "Hello WaitFor!";
		wait for 10 sec; -- hr, min, sec, ms, us, ns etc.
	
	end process;
end ta;