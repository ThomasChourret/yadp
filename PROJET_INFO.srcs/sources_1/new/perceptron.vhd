library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

use work.perceptron_pkg.all; 

entity perceptron is

    Generic (
        size : positive;
        weights : weight
    );

    Port (
        din : in std_logic_vector(31 downto 0);
        dout : out std_logic_vector(31 downto 0);
        
        enable : in std_logic;
        clk : in std_logic;
        reset : in std_logic;
        valid : out std_logic;
        
        temp_mul : out std_logic_vector(63 downto 0)
    );
end perceptron;

architecture Behavioral of perceptron is

    signal i : integer range 1 to size := 1;
    signal add_enable : std_logic := '0';
    signal tmp_valid : std_logic := '0';
    signal tmp_out : std_logic_vector(31 downto 0) := (others => '0'); 
    signal mul : std_logic_vector(63 downto 0) := (others => '0');
    signal add : std_logic_vector(31 downto 0) := (others => '0');

begin

    temp_mul <= mul;

    process (clk)
    begin
    
        if rising_edge(clk) then
            if i = size+1 then
                i <= 1;
            elsif (enable = '1' or i > 1) then
                mul <= std_logic_vector(signed(din) * signed(weights(i-1)));
                i <= i + 1;
            end if;
        end if;
        
        if rising_edge(clk) then
            if i = 1 then
                add <= (others => '0');
            else
                add <= std_logic_vector(signed(mul(31 downto 0)) + signed(add));
            end if;
        end if; 
        
        if rising_edge(clk) then
            if signed(add) < 0 then
                tmp_out <= (others => '0');
            else
                tmp_out <= add;
            end if;
        end if;
    
    end process;

    valid <= '1' when i = size else '0';
    dout <= tmp_out;

end Behavioral;
