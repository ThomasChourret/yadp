library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL; 
use IEEE.numeric_std.ALL;

entity alu is
    Port(
        din_a : in std_logic_vector(7 downto 0);
        din_b : in std_logic_vector(7 downto 0);
        dout : out std_logic_vector(7 downto 0);
        op : in std_logic_vector(3 downto 0);
        
        fcarry : out std_logic;
        foverflow : out std_logic;
        fnegative : out std_logic;
        fzero : out std_logic
    );
end alu;

architecture Behavioral of alu is
    signal tmp : std_logic_vector(7 downto 0) := (others => '0');
begin

    tmp <=  din_a + din_b    when op = "0001" else -- Add
            din_a - din_b   when op = "0011" else -- Sub
            std_logic_vector(resize(unsigned(din_a) * unsigned(din_b), 8)) when op = "0010" else
            std_logic_vector(resize(unsigned(din_a) / unsigned(din_b), 8)) when op = "0100"  else
            std_logic_vector(to_unsigned(boolean'pos(unsigned(din_a) < unsigned(din_b)), 8)) when op = "1001" else
            std_logic_vector(to_unsigned(boolean'pos(unsigned(din_a) > unsigned(din_b)), 8)) when op = "1010" else
            std_logic_vector(to_unsigned(boolean'pos(unsigned(din_a) = unsigned(din_b)), 8)) when op = "1011" else
            --din_a and din_b when op = "000" else -- AND
            --din_a or din_b  when op = "101" else  -- OR
            --din_a xor din_b when op = "110" else -- XOR
            --not din_a       when op = "111" else -- NOT
            X"00";
            
    fcarry <= '1' when (('0' & din_a) + ('0' & din_b)) > "11111111" and op = "0001" else '0';
    foverflow <= '1' when std_logic_vector(unsigned(din_a) * unsigned(din_b)) > "0000000011111111" and op = "0010" else '0';
    fnegative <= '1' when din_a < din_b and op = "0011" else '0';
    fzero <= '1' when tmp = "00000000" else '0';
    
    dout <= tmp;
          
end Behavioral;
