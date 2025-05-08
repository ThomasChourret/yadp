library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nand_gate is
    port(
        a : in std_logic;
        b : in std_logic;
        o : out std_logic
    );
end nand_gate;

architecture Behavioral of nand_gate is
begin
    o <= a nand b;
end Behavioral;