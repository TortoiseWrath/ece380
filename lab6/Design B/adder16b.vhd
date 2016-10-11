LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY adder16b IS
	PORT(	Cin: IN std_logic;
			X, Y: IN std_logic_vector(15 DOWNTO 0);
			S: OUT std_logic_vector(15 DOWNTO 0);
			Cout, Over: OUT std_logic);
END adder16b;

ARCHITECTURE Structure OF adder16b IS
	COMPONENT fulladd IS
		PORT(		Cin, X, Y: IN std_logic;
					S, Cout: OUT std_logic);
	END COMPONENT;
	
	SIGNAL c: std_logic_vector(16 DOWNTO 1);
BEGIN
	fulladd1: fulladd PORT MAP ('0', X(0), Y(0), S(0), c(1));
	fulladd2: fulladd PORT MAP (c(1), X(1), Y(1), S(1), c(2));
	fulladd3: fulladd PORT MAP (c(2), X(2), Y(2), S(2), c(3));
	fulladd4: fulladd PORT MAP (c(3), X(3), Y(3), S(3), c(4));
	fulladd5: fulladd PORT MAP (c(4), X(4), Y(4), S(4), c(5));
	fulladd6: fulladd PORT MAP (c(5), X(5), Y(5), S(5), c(6));
	fulladd7: fulladd PORT MAP (c(6), X(6), Y(6), S(6), c(7));
	fulladd8: fulladd PORT MAP (c(7), X(7), Y(7), S(7), c(8));
	fulladd9: fulladd PORT MAP (c(8), X(8), Y(8), S(8), c(9));
	fulladd10: fulladd PORT MAP (c(9), X(9), Y(9), S(9), c(10));
	fulladd11: fulladd PORT MAP (c(10), X(10), Y(10), S(10), c(11));
	fulladd12: fulladd PORT MAP (c(11), X(11), Y(11), S(11), c(12));
	fulladd13: fulladd PORT MAP (c(12), X(12), Y(12), S(12), c(13));
	fulladd14: fulladd PORT MAP (c(13), X(13), Y(13), S(13), c(14));
	fulladd15: fulladd PORT MAP (c(14), X(14), Y(14), S(14), c(15));
	fulladd16: fulladd PORT MAP (c(15), X(15), Y(15), S(15), c(16));
	Cout <= c(16);
	Over <= c(16) XOR c(15);
END Structure;