library ieee;
use ieee.std_logic_1164.all;

ENTITY lab9b2 IS
	port(clk, d: in std_logic;
		  q, nq: out std_logic);
END lab9b2;

ARCHITECTURE Behavior OF lab9b2 IS
BEGIN
	PROCESS(clk) IS
	BEGIN
		IF RISING_EDGE(CLK) THEN
			q <= d;
			nq <= NOT d;
		END IF;
	END PROCESS;
END Behavior;