library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sys1 is
	port( 	a_in1 	 : in  std_logic;
		b_in2 	 : in  std_logic;
		clk   	 : in  std_logic;
		ctrl_int : in  std_logic;
		out_b	 : out std_logic);
end sys1;

entity sys2 is
	port(	input_w  : in std_logic;
		a_data, b_data : in std_logic_vector(7 downto 0);
		clk : in std_logic;
		dat_4 : out std_logic_vector(7 downto 0);
		dat_5 : out std_logic_vector(2 downto 0));
end sys2;
	
