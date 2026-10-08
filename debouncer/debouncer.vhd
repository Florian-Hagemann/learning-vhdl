library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity debouncer is
    port( X : in std_logic;
          Y : out std_logic;
          CLK : in std_logic);
end debouncer;

architecture arc_debouncer of debouncer is
    signal flip_flop_sync   : std_logic_vector(1 downto 0);
    signal counter          : integer;
    signal last_x           : std_logic;
begin
    sync_proc : process(CLK)
    begin
        if(rising_edge(CLK)) then
            flip_flop_sync(1) <= flip_flop_sync(0);
            flip_flop_sync(0) <= X;
        end if;
    end sync_process;

    debounce : process(CLK)
    begin
        if(rising_edge(CLK)) then
            
            if(last_X XOR)

            last_X <= flip_flop_sync(1);
