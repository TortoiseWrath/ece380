LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY lab8a IS
	port(	w : in std_logic_vector(3 DOWNTO 0);
			y : out std_logic_vector(1 DOWNTO 0);
			z : out std_logic);
END lab8a;

ARCHITECTURE priority_encoder OF lab8a IS
BEGIN
	z <=	w(0) OR w(1) OR w(2) OR w(3);
	y <=	"11" when w(3) = '1' else
			"10" when w(2) = '1' else
			"01" when w(1) = '1' else
			"00" when w(0) = '1' else
			"--";
END priority_encoder;