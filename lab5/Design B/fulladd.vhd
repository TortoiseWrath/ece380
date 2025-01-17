LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fulladd IS
	PORT(		Cin, X, Y: IN std_logic;
				S, Cout: OUT std_logic);
END fulladd;

ARCHITECTURE Behavior OF fulladd IS
	SIGNAL sum1: std_logic;
BEGIN
	sum1 <= x XOR y;
	S <= sum1 XOR Cin;
	Cout <= (sum1 AND Cin) OR (X AND Y);
END Behavior;