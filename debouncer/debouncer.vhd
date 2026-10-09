library IEEE;
use IEEE.std_logic_1164.all;

entity debouncer is
    generic ( STABLE_CYCLES : positive := 10 ); 
    port ( X   : in  std_logic;
           Y   : out std_logic;
           CLK : in  std_logic );
end debouncer;

architecture arc_debouncer of debouncer is
    signal ff_sync : std_logic_vector(1 downto 0) := "00";
    signal counter : integer range 0 to STABLE_CYCLES := 0;
    signal y_reg   : std_logic := '0';
begin
    sync_proc : process(CLK)
    begin
        if rising_edge(CLK) then
            ff_sync(0) <= X;
            ff_sync(1) <= ff_sync(0);
        end if;
    end process sync_proc;

    debounce_proc : process(CLK)
    begin
        if rising_edge(CLK) then
            if ff_sync(1) = y_reg then
                counter <= 0;
            elsif counter = STABLE_CYCLES - 1 then
                y_reg   <= ff_sync(1);
                counter <= 0;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process debounce_proc;

    Y <= y_reg;
end arc_debouncer;