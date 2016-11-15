LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY lab9c1 IS
	PORT(S: IN std_logic_vector(1 DOWNTO 0);
		  MR, SL, SR, CLK: IN std_logic;
		  P: IN std_logic_vector(3 DOWNTO 0);
		  Q: OUT std_logic_vector(3 DOWNTO 0));
END lab9c1;

ARCHITECTURE Arch of lab9c1 IS
SIGNAL tmp: std_logic_vector(3 DOWNTO 0);
BEGIN
	PROCESS (CLK)
	BEGIN
		IF rising_edge(CLK) THEN
			IF (MR='0') THEN
				tmp <= "0000";
			ELSIF (S="01") THEN --shift right
				tmp <= SR & tmp(3 DOWNTO 1);
			ELSIF (S="10") THEN --shift left
				tmp <= tmp(2 DOWNTO 0) & SL;
			ELSIF (S="11") THEN --parallel load
				tmp <= P;
			END IF;
		END IF;
	END PROCESS;
	Q <= tmp;
END Arch;