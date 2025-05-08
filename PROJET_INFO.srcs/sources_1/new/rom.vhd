----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.04.2025 17:50:07
-- Design Name: 
-- Module Name: rom - Behavioral
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

entity rom is

    Port ( 
        addr : in std_logic_vector(7 downto 0);
        clk : in std_logic;
        dout : out std_logic_vector(31 downto 0);
        dout_plus1 : out std_logic_vector(31 downto 0)
    );
end rom;

architecture Behavioral of rom is

    signal regs : rom_array(0 to 255) := (
        0 => x"06040100",
        1 => x"06050a00",
        2 => x"01020304",  -- valeur "au pif"
        others => (others => '0')
    );


begin

    process (clk)
    begin
        if rising_edge(clk) then
            dout <= regs(to_integer(unsigned(addr)));
            dout_plus1 <= regs(to_integer(unsigned(addr))+1);
        end if;
        
    end process;

end Behavioral;
