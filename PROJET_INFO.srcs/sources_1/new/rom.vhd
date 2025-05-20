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
    0 => x"070a0000", -- JMP 0a 00 00,
    1 => x"10010100", -- LOAD 01 01 00,
    2 => x"10020200", -- LOAD 02 02 00,
    3 => x"01000102", -- ADD 00 01 02,
    4 => x"11030000", -- STORE 03 00 00,
    5 => x"10000300", -- LOAD 00 03 00,
    6 => x"11000000", -- STORE 00 00 00,
    7 => x"0e010000", -- DMP 01 00 00,
    8 => x"10000000", -- LOAD 00 00 00,
    9 => x"0f000000", -- JMPM 00 00 00,
    10 => x"06000200", -- AFC 00 02 00,
    11 => x"11000000", -- STORE 00 00 00,
    12 => x"06000100", -- AFC 00 01 00,
    13 => x"11010000", -- STORE 01 00 00,
    14 => x"06000500", -- AFC 00 05 00,
    15 => x"11020000", -- STORE 02 00 00,
    16 => x"10010000", -- LOAD 01 00 00,
    17 => x"10020200", -- LOAD 02 02 00,
    18 => x"09000102", -- INF 00 01 02,
    19 => x"11030000", -- STORE 03 00 00,
    20 => x"10000300", -- LOAD 00 03 00,
    21 => x"08240000", -- JMF 24 00 00,
    22 => x"10000000", -- LOAD 00 00 00,
    23 => x"11060000", -- STORE 06 00 00,
    24 => x"10000100", -- LOAD 00 01 00,
    25 => x"11070000", -- STORE 07 00 00,
    26 => x"06001e00", -- AFC 00 1e 00,
    27 => x"11040000", -- STORE 04 00 00,
    28 => x"0d050000", -- IMP 05 00 00,
    29 => x"07010000", -- JMP 01 00 00,
    30 => x"0e040000", -- DMP 04 00 00,
    31 => x"10000500", -- LOAD 00 05 00,
    32 => x"11000000", -- STORE 00 00 00,
    33 => x"10000000", -- LOAD 00 00 00,
    34 => x"0c000000", -- PRI 00 00 00,
    35 => x"07100000", -- JMP 10 00 00,
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
