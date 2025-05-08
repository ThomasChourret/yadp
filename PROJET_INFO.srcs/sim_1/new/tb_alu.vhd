library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_alu is
end tb_alu;

architecture Behavioral of tb_alu is

    signal din_a, din_b, dout : std_logic_vector(7 downto 0);
    signal op : std_logic_vector(3 downto 0);  -- Adjusted to 4 bits
    signal fcarry, foverflow, fnegative, fzero : std_logic;
    
begin

    uut: entity work.alu port map (
        din_a => din_a,
        din_b => din_b,
        dout => dout,
        op => op,
        fcarry => fcarry,
        foverflow => foverflow,
        fnegative => fnegative,
        fzero => fzero
    );

    process
    begin
        -- Test case 1: Addition (5 + 10)
        din_a <= "00000101";  -- 5
        din_b <= "00001010";  -- 10
        op <= "0001";         -- Add
        wait for 10 ns;
        
        -- Test case 2: Subtraction (15 - 20)
        din_a <= "00001111";  -- 15
        din_b <= "00010100";  -- 20
        op <= "0011";         -- Sub
        wait for 10 ns;
        
        -- Test case 3: Multiplication (3 * 4)
        din_a <= "00000011";  -- 3
        din_b <= "00000100";  -- 4
        op <= "0010";         -- Multiply
        wait for 10 ns;
        
        -- Test case 4: Multiplication (255 * 1)
        din_a <= "11111111";  -- 255
        din_b <= "00000001";  -- 1
        op <= "0010";         -- Multiply
        wait for 10 ns;
        
        -- Test case 5: Multiplication (0 * 4)
        din_a <= "00000000";  -- 0
        din_b <= "00000100";  -- 4
        op <= "0010";         -- Multiply
        wait for 10 ns;
        
        -- Test case 6: Multiplication (129 * 2)
        din_a <= "10000001";  -- 129
        din_b <= "00000010";  -- 2
        op <= "0010";         -- Multiply
        wait for 10 ns;
        
        -- Test case 7: Division (255 / 2)
        din_a <= "11111111";  -- 255
        din_b <= "00000010";  -- 2
        op <= "0100";         -- Division
        wait for 10 ns;
        
        -- Test case 8: Comparison (din_a < din_b)
        din_a <= "00000001";  -- 1
        din_b <= "00000010";  -- 2
        op <= "1001";         -- din_a < din_b (should return 1)
        wait for 10 ns;
        
        -- Test case 9: Comparison (din_a > din_b)
        din_a <= "00000011";  -- 3
        din_b <= "00000101";  -- 5
        op <= "1010";         -- din_a > din_b (should return 0)
        wait for 10 ns;
        
        -- Test case 10: Comparison (din_a == din_b)
        din_a <= "00000101";  -- 5
        din_b <= "00000101";  -- 5
        op <= "1011";         -- din_a == din_b (should return 1)
        wait for 10 ns;
        
        -- Test case 11: AND (10101010 AND 11001100)
        din_a <= "10101010";
        din_b <= "11001100";
        op <= "0000";         -- AND
        wait for 10 ns;
        
        -- Test case 12: OR (10101010 OR 11001100)
        op <= "0101";         -- OR
        wait for 10 ns;
        
        -- Test case 13: XOR (10101010 XOR 11001100)
        op <= "0110";         -- XOR
        wait for 10 ns;
        
        -- Test case 14: NOT (NOT 10101010)
        op <= "0111";         -- NOT
        wait for 10 ns;
        
        -- End of test
        wait;
    end process;
    
end Behavioral;
