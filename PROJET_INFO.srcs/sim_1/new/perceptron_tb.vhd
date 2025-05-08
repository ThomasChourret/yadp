library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_signed.ALL;
use IEEE.numeric_std.ALL;

use work.perceptron_pkg.all;

entity perceptron_tb is
end perceptron_tb;

architecture testbench of perceptron_tb is

    constant size : positive := 4;
    signal din : std_logic_vector(31 downto 0);
    signal dout : std_logic_vector(31 downto 0);
    signal temp_mul : std_logic_vector(63 downto 0);
    signal enable, clk, reset, valid : std_logic;
    
    constant weights : weight := (
        x"00000001", x"00000002", x"00000003", x"00000004"
    );
    
    component perceptron
        Generic (
            size : positive;
            weights : weight
        );
        Port (
            din : in std_logic_vector(31 downto 0);
            dout : out std_logic_vector(31 downto 0);
            temp_mul : out std_logic_vector(63 downto 0);
            enable : in std_logic;
            clk : in std_logic;
            reset : in std_logic;
            valid : out std_logic
        );
    end component;
    
begin

    uut: perceptron
        Generic Map (
            size => size,
            weights => weights
        )
        Port Map (
            din => din,
            dout => dout,
            temp_mul => temp_mul,
            enable => enable,
            clk => clk,
            reset => reset,
            valid => valid
        );

    process
    begin
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;

    process
    begin
        reset <= '1';
        enable <= '0';
        din <= (others => '0');
        wait for 50 ns;
        
        reset <= '0';
        enable <= '1';
        
        din <= x"00000001";
        wait for 20 ns;
        
        enable <= '0';
        din <= x"00000002";
        wait for 20 ns;
        din <= x"00000003";
        wait for 20 ns;
        din <= x"00000004";
        wait for 20 ns;
        
        enable <= '0';
        wait for 50 ns;
        
        report "Testbench completed";
        wait;
    end process;

end testbench;
