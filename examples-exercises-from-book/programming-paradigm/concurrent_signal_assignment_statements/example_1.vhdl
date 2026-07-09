library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity nand3 is
	port(	A, B, C : in std_logic;
		F 	: out std_logic);
end nand3;

architecture nand3_arc of nand3 is
begin
	F <= NOT(A AND B AND C);
end nand3_arc;
