LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY lab4 IS
PORT (a,b,c,d: IN std_logic;
		f: OUT std_logic);
END lab4;

ARCHITECTURE Structure of lab4 IS
	SIGNAL s0, s1, s2, s3, s4, s5: std_logic;
BEGIN
	s0 <= NOT a AND NOT c AND NOT d;
	s1 <= NOT a AND b AND NOT c;
	s2 <= NOT a AND c AND d;
	s3 <= NOT a AND NOT b AND c;
	s4 <= NOT b AND c AND d;
	s5 <= a AND b AND c AND NOT d;
	f <= s0 OR s1 OR s2 OR s3 OR s4 OR s5;
END Structure;	