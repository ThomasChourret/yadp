----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.04.2025 10:29:56
-- Design Name: 
-- Module Name: registers - Behavioral
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
use IEEE.numeric_std.ALL;

use work.registers_pkg.all;

entity registers is

    Port ( 
        addr_a, addr_b, addr_w : in std_logic_vector(3 downto 0);
        w, rst, clk : in std_logic;
        data : in std_logic_vector(7 downto 0);
        a, b : out std_logic_vector(7 downto 0)
    );
end registers;

architecture Behavioral of registers is

    signal regs : register_array(0 to 15) := (
        3 => x"05",         -- Valeur arbitraire à l'index 3
        4 => x"06",         -- Valeur arbitraire à l'index 4
        others => (others => '0')
    );


begin

    process (clk)
    begin
        if rising_edge(clk) then
            if (rst = '0') then
                for i in 0 to 15 loop
                    regs(i) <= (others => '0');
                end loop;            
            elsif (w = '1') then
                regs(to_integer(unsigned(addr_w))) <= data;
            end if;
        end if;
        
    end process;

    a <= data when addr_w = addr_a else regs(to_integer(unsigned(addr_a)));
    b <= data when addr_w = addr_b else regs(to_integer(unsigned(addr_b)));

end Behavioral;
