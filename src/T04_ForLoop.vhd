entity T04_ForLoop is
end entity;

architecture TA of T04_ForLoop is
begin

	process is
	begin
		report "Hello T04_ForLoop";
		
		for i in 1 to 10 loop 
			report "i : "& integer'image(i);
		end loop;
	
		wait;
	
	end process;
end TA;