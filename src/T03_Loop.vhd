entity T03_Loop is
end entity;

architecture TA of T03_Loop is
begin
	
	process is
	begin
		report "Hello Loop";
		
		loop
		
			report "Inside Loop";
			exit;
			
		end Loop;
		
		report "GoodBye!";
		wait;
		
	end process;

end TA;