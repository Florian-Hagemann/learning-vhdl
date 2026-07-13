library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity decoder7seg_tb is 
end decoder7seg_tb;

architecture decoder7seg_tb_arc of decoder7seg_tb is
    signal tb_binary_in : std_logic_vector(3 downto 0) := "0000";
    signal tb_seg_disp_out : std_logic_vector(6 downto 0);

begin 

    UUT: entity work.decoder7seg(decoder7seg_arc)
        port map(
            binary_in => tb_binary_in,
            seg_disp_out => tb_seg_disp_out
        );

    stim_proc: process
    begin
        -- Zahl 0
        tb_binary_in <= "0000";
        wait for 10 ns;
        
        -- Zahl 1
        tb_binary_in <= "0001";
        wait for 10 ns;
        
        -- Zahl 2
        tb_binary_in <= "0010";
        wait for 10 ns;
        
        -- Zahl 3
        tb_binary_in <= "0011";
        wait for 10 ns;
        
        -- Zahl 4
        tb_binary_in <= "0100";
        wait for 10 ns;
        
        -- Zahl 5
        tb_binary_in <= "0101";
        wait for 10 ns;
        
        -- Zahl 6
        tb_binary_in <= "0110";
        wait for 10 ns;
        
        -- Zahl 7
        tb_binary_in <= "0111";
        wait for 10 ns;
        
        -- Zahl 8
        tb_binary_in <= "1000";
        wait for 10 ns;
        
        -- Zahl 9
        tb_binary_in <= "1001";
        wait for 10 ns;
        
        -- Zahl 10 (A)
        tb_binary_in <= "1010";
        wait for 10 ns;
        
        -- Zahl 11 (B)
        tb_binary_in <= "1011";
        wait for 10 ns;
        
        -- Zahl 12 (C)
        tb_binary_in <= "1100";
        wait for 10 ns;
        
        -- Zahl 13 (D)
        tb_binary_in <= "1101";
        wait for 10 ns;
        
        -- Zahl 14 (E)
        tb_binary_in <= "1110";
        wait for 10 ns;
        
        -- Zahl 15 (F)
        tb_binary_in <= "1111";
        wait for 10 ns;
        wait;
    end process;
end decoder7seg_tb_arc;