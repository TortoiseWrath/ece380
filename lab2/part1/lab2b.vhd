ENTITY lab2b IS
	PORT ( a, b, c : IN BIT;
			 f, g, h : OUT BIT );
END lab2b;

ARCHITECTURE Behavior OF lab2b IS
BEGIN
	f <= (a AND B) OR (NOT C);
	g <= (a AND B);
	h <= (NOT C);
END Behavior;