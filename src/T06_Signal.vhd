entity T06_Signal is
end entity;

architecture TA of T06_Signal is
	signal mySignal : integer :=0;
begin

	process is
		variable var : integer :=0;
	begin
		report "*** Process begin ***";
		
		var := var + 1;
		mySignal <= mySignal + 1;
		report "var : "&integer'image(var) & " mySignal : " & integer'image(mySignal);
		
		var := var + 1;
		mySignal <= mySignal + 1;
		report "var : "&integer'image(var) & " mySignal : " & integer'image(mySignal);

		wait for 1 ns;
		
		report "var : "&integer'image(var) & " mySignal : " & integer'image(mySignal);
	end process;

end architecture;