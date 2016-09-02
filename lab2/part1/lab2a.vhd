ENTITY lab2a IS
	PORT ( a, b, c : IN BIT;
			 f : OUT BIT);
END lab2a;

ARCHITECTURE Behavior OF lab2a IS
BEGIN
	f <= (a AND B) OR (NOT C);
End Behavior;