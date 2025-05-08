library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nor_gate is
    port(
        a : in std_logic;
        b : in std_logic;
        o : out std_logic
    );
end nor_gate;

architecture Behavioral of nor_gate is
begin
    o <= a nor b;
end Behavioral;