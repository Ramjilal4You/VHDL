entity T01_HelloWorldTb is
end entity;
  
architecture ta of T01_HelloWorldTb is
begin
    process is
    begin
        report "Hello World!";
        wait;
  
    end process;
  
end ta;