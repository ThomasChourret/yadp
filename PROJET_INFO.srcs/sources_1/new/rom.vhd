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
        0 => x"06000500", -- [@0] <- 5
        1 => x"06010300", -- [@1] <- 3
        2 => x"01020001", -- [@2] <- [@0]+[@1]
        3 => x"02030001", -- [@3] <- [@0]*[@1]
        4 => x"03040001", -- [@4] <- [@0]-[@1]
        5 => x"04050001", -- [@5] <- [@0]/[@1]
        6 => x"05060000", -- [@6] <- [@0]
        7 => x"0a070001", -- [@7] <- [@0]<[@1]
        8 => x"080f0700",
        9 => x"0c000000",
        10 => x"0a080001", -- [@8] <- [@0]>[@1]
        11 => x"0b090006", -- [@9] <- [@0]==[@6]
        12 => x"0d070000", -- test IMP 7
        13 => x"11000000", -- store into M[@0+7] <= [@0]
        14 => x"0e070000", -- DMP 7
        15 => x"11010000", -- store M[@1] <= [@0]
        16 => x"0f000000",
        17 => x"100f0100", -- load [@0f] <= M[@1]
        18 => x"11000f00", -- store M[@0] <= [@f]
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
