library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_gate is
    port(
        a : in std_logic;
        b : in std_logic;
        o : out std_logic
    );
end or_gate;

architecture Behavioral of or_gate is
begin
    o <= (a or b);
end Behavioral;