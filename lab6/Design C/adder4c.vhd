LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY adder4c IS
	PORT (A, B: IN std_logic_vector(3 DOWNTO 0);
			S: OUT std_logic_vector(3 DOWNTO 0);
			Cout: OUT std_logic);
END adder4c;

ARCHITECTURE Behavior OF adder4c IS
	SIGNAL P, G, C: std_logic_vector(3 DOWNTO 0);
BEGIN
	G <= A AND B;
	P <= A XOR B;
	
	C(0) <= '0';
	C(1) <= G(0) OR (P(0) AND C(0));
	C(2) <= G(1) OR (G(0) AND P(1)) OR (C(0) AND P(0) AND P(1));
	C(3) <= G(2) OR (G(1) AND P(2)) OR (G(0) AND P(1) AND P(2)) OR (C(0) AND P(0) AND P(1) AND P(2));
	Cout <= G(3) OR (G(2) AND P(3)) OR (G(1) AND P(2) AND P(3)) OR (G(0) AND P(1) AND P(2) AND P(3)) OR (C(0) AND P(0) AND P(1) AND P(2) AND P(3));
	
	S <= P XOR C;
END Behavior;