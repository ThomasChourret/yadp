----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.04.2025 11:09:44
-- Design Name: 
-- Module Name: tb_registers - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
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

entity tb_registers is
end tb_registers;

architecture Behavioral of tb_registers is
       signal addr_a, addr_b, addr_w : std_logic_vector(3 downto 0);
       signal w, rst, clk : std_logic;
       signal data : std_logic_vector(7 downto 0);
       signal a, b : std_logic_vector(7 downto 0);
       
begin

    uut: entity work.registers
        Port Map (
            addr_a => addr_a,
            addr_b => addr_b,
            addr_w => addr_w,
            w => w,
            rst => rst,
            clk => clk,
            data => data,
            a => a,
            b => b
        );
        
    process
    begin
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;
    
    process
    begin
        rst <= '0';
        wait for 50ns;
        rst <= '1';
        wait for 50ns;
        
        addr_w <= "0000";
        data <= "00001111";
        w <= '1';
        wait for 50ns;
        w <= '0';
        wait for 50ns;
        
        addr_a <= "0000";
        wait for 50ns;
        
        addr_w <= "0000";
        data <= "00000101";
        w <= '1';
        wait for 50ns;
        w <= '0';
        wait for 50ns;
        
        rst <= '0';
        wait for 50ns;
        rst <= '1';
        wait for 50ns;
        
    end process;

end Behavioral;
