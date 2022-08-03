library ieee;
use ieee.std_logic_1164.all;

ENTITY lc_to_bin IS
	PORT (w, x, y, z: OUT std_logic;
			l1, l2, l3, l4, c1, c2, c3: IN std_logic);
END lc_to_bin;

ARCHITECTURE teste OF lc_to_bin IS
BEGIN
	w <= (not(l1) and not(l2) and not(l3) and not(l4)) or (not(l1) and not(l2) and not(l3) and not(c2)) or (not(c1) and not(c2) and not(c3)) or (c2 and c3) or (c1 and c3) or (c1 and c2) or (l4 and not(c2)) or (l3 and not(c1)) or (l2 and l4) or (l2 and l3) or (l1 and l4) or (l1 and l3) or (l1 and l2);
	x <= (not(l1) and not(l3) and not(l4)) or (not(c1) and not(c2) and not(c3)) or (c2 and c3) or (c1 and c3) or (c1 and c2) or (l3 and c1) or (l3 and l4) or (l2) or (l1 and l4) or (l1 and l3);
	y <= (not(l1) and not(l2) and not(c2) and not(c3)) or (not(l2) and not(l3) and not(l4) and not(c1)) or (not(l3) and not(c1) and not(c2)) or (not(l3) and c3) or (c2 and c3) or (c1 and c2) or (l3 and not(l4) and c1) or (l3 and l4 and not(c1)) or (l2 and l4) or (l2 and l3) or (l1 and not(c1)) or (l1 and l4) or (l1 and l3) or (l1 and l2);
	z <= (not(l1) and not(l2) and not(l3) and not(l4)) or (not(l2) and not(l4) and not(c2)) or (not(l2) and not(c1) and not(c2)) or (c2 and c3) or (c1 and c3) or (c1 and c2) or (l3 and not(c2)) or (l3 and l4) or (l2 and not(c1) and not(c3)) or (l2 and l4) or (l1 and not(c2)) or (l1 and l4) or (l1 and l3);
END teste;
