LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY lab5b IS
	PORT(	Cin: IN std_logic;
			X, Y: IN std_logic_vector(3 DOWNTO 0);
			S: OUT std_logic_vector(3 DOWNTO 0);
			Cout, Over: OUT std_logic);
END lab5b;

ARCHITECTURE Structure OF lab5b IS
	COMPONENT fulladd IS
		PORT(		Cin, X, Y: IN std_logic;
					S, Cout: OUT std_logic);
	END COMPONENT;
	
	SIGNAL c1, c2, c3, c4: std_logic;
BEGIN
	fulladd1: fulladd PORT MAP (Cin, X(0), Y(0), S(0), c1);
	fulladd2: fulladd PORT MAP (c1, X(1), Y(1), S(1), c2);
	fulladd3: fulladd PORT MAP (c2, X(2), Y(2), S(2), c3);
	fulladd4: fulladd PORT MAP (c3, X(3), Y(3), S(3), c4);
	Cout <= c4;
	Over <= c4 XOR c3;
END Structure;