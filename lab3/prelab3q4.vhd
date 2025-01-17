LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY prelab3q4 IS
PORT (c1, c0, a, b: IN std_logic;
		f: OUT std_logic);
END prelab3q4;

ARCHITECTURE Structure OF prelab3q4 IS
	SIGNAL s0, s1, s2, s3, s4: std_logic;
BEGIN 
	s0 <= NOT(NOT c0 AND NOT a AND NOT b);
	s1 <= NOT(c1 AND c0 AND a);
	s2 <= NOT(c1 AND c0 AND b);
	s3 <= NOT(c0 AND a AND b);
	s4 <= NOT(c1 AND a AND b);
	f <= NOT(s0 AND s1 AND s2 AND s3 AND s4);
END Structure;