----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.04.2025
-- Design Name: RAM Testbench
-- Module Name: ram_tb
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- Testbench pour tester le module "ram" défini dans le fichier "ram.vhdl"
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity ram_tb is
end ram_tb;

architecture behavior of ram_tb is

    -- Components for the RAM
    signal addr   : std_logic_vector(3 downto 0);
    signal rw     : std_logic;
    signal rst    : std_logic;
    signal clk    : std_logic;
    signal din    : std_logic_vector(7 downto 0);
    signal dout   : std_logic_vector(7 downto 0);

    -- Clock period constant
    constant clk_period : time := 10 ns;

begin
    -- Instantiate the RAM module
    uut: entity work.ram
        port map (
            addr => addr,
            rw => rw,
            rst => rst,
            clk => clk,
            din => din,
            dout => dout
        );

    -- Clock generation process
    clk_process :process
    begin
        clk <= '0';
        wait for clk_period / 2;
        clk <= '1';
        wait for clk_period / 2;
    end process clk_process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Initialize signals
        rst <= '1';
        rw <= '0';  -- Write mode
        addr <= "0000";  -- Address 0
        din <= "00000000";  -- Data to write (0x00)
        wait for 20 ns;

        -- Apply reset
        rst <= '0';  
        wait for 20 ns;
        rst <= '1'; 
        wait for 20 ns;

        -- Write data to address 0
        din <= "10101010";  -- Data to write (0xAA)
        addr <= "0000";  -- Address 0
        wait for clk_period;

        -- Write data to address 1
        din <= "11110000";  -- Data to write (0xF0)
        addr <= "0001";  -- Address 1
        wait for clk_period;

        -- Switch to read mode
        rw <= '1';  -- Read mode
        addr <= "0000";  -- Read from address 0
        wait for clk_period;
        -- Check the output of dout, it should be 0xAA (the value written to address 0)
        report "Data read from address 0: " & integer'image(to_integer(unsigned(dout)));

        addr <= "0001";  -- Read from address 1
        wait for clk_period;
        -- Check the output of dout, it should be 0xF0 (the value written to address 1)
        report "Data read from address 1: " & integer'image(to_integer(unsigned(dout)));

        -- Test reset behavior
        rst <= '0';  -- Assert reset
        wait for 20 ns;
        rst <= '1';  -- De-assert reset
        wait for 20 ns;

        -- After reset, data should be 0 for both addresses
        addr <= "0000";
        rw <= '1';  -- Read mode
        wait for clk_period;
        report "Data after reset from address 0: " & integer'image(to_integer(unsigned(dout)));

        addr <= "0001";
        wait for clk_period;
        report "Data after reset from address 1: " & integer'image(to_integer(unsigned(dout)));

        -- Finish the simulation
        wait;
    end process stim_proc;

end behavior;
