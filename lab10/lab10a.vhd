library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity lab10a is
	port(clk, clr, updown: in std_logic;
		  count: out std_logic_vector(2 DOWNTO 0));
end lab10a;

architecture behavior of lab10a is
signal cur: std_logic_vector(2 DOWNTO 0);
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(clr = '1') then
				cur <= "000";
			elsif(updown = '1') then
				cur <= cur + '1';
			elsif(updown = '0') then
				cur <= cur - '1';
			end if;
		end if;
	end process;
	
	count <= cur;
end behavior;