library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pres_counter is
    Port(
        clk : in std_logic;
        rst : in std_logic;
        load : in std_logic;
        sens : in std_logic;
        en : in std_logic;
        din : in std_logic_vector(7 downto 0);
        dout : out std_logic_vector(7 downto 0)
    );
end pres_counter;

architecture Behavioral of pres_counter is
    
    signal clk_internal : std_logic := '0';
    
    -- Composant compteur_heightbits
    component counter_heightbits is
        port(
            clk : in std_logic;
            rst : in std_logic;
            load : in std_logic;
            sens : in std_logic;
            en : in std_logic;
            din : in std_logic_vector(7 downto 0);
            dout : out std_logic_vector(7 downto 0)
        );
    end component;
    
    -- Composant clock_divider
    component clock_divider is
        port(
            clk_in : in std_logic;
            clk_out : out std_logic
        );
    end component;

begin

    divider: clock_divider
    port map(
        clk_in => clk,
        clk_out => clk_internal
    );
    
    counter: counter_heightbits
    port map(
        clk => clk_internal,
        rst => rst,
        load => load,
        sens => sens,
        en => en,
        din => din,
        dout => dout
    );

end Behavioral;
