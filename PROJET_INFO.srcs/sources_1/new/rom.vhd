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
        rst : in std_logic
    );
end rom;

architecture Behavioral of rom is

signal regs : rom_array(0 to 255) := (
    5 => x"06000500", -- AFC 00 05 00,
    6 => x"06010400", -- AFC 01 04 00,
    7 => x"01020001", -- ADD 02 00 01
    8 => x"0c020000", -- PRI 02 00 00,
    --7 => x"06010100",
    others => (others => '0')
);


begin

    process (clk)
    begin
        if rising_edge(clk) then
        if rst = '1' then
            dout <= regs(to_integer(unsigned(addr)));
        end if;
        end if;
        
    end process;

end Behavioral;
