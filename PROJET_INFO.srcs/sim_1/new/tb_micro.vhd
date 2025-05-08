library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_micro is
end tb_micro;

architecture Behavioral of tb_micro is

    -- Signals to drive the design
    signal clk_external     : std_logic := '0';
    signal rst              : std_logic := '0';

    constant clk_period     : time := 10 ns;

begin

    -- Clock generation
    clk_process : process
    begin
        while true loop
            clk_external <= '0';
            wait for clk_period / 2;
            clk_external <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- Instantiate DUT
    uut: entity work.micro
        port map (
            clk_external => clk_external,
            rst => rst
        );

    -- Test process
    stim_proc: process
    begin
        -- Reset the design
        rst <= '1';
        --wait for 20 ns;
        --rst <= '0';

        wait for 500 ns;
        
        -- Stop the simulation
        wait;
    end process;

end Behavioral;
