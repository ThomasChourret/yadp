-- file : opcode_pkg.vhd
library ieee;
use ieee.std_logic_1164.all;

package opcode_pkg is
    constant OP_NOP : std_logic_vector(7 downto 0) := x"00";
    constant OP_ADD : std_logic_vector(7 downto 0) := x"01";
    constant OP_MUL : std_logic_vector(7 downto 0) := x"02";
    constant OP_SOU : std_logic_vector(7 downto 0) := x"03";
    constant OP_DIV : std_logic_vector(7 downto 0) := x"04";
    constant OP_COP : std_logic_vector(7 downto 0) := x"05";
    constant OP_AFC : std_logic_vector(7 downto 0) := x"06";
    constant OP_JMP : std_logic_vector(7 downto 0) := x"07";
    constant OP_JMF : std_logic_vector(7 downto 0) := x"08";
    constant OP_INF : std_logic_vector(7 downto 0) := x"09";
    constant OP_SUP : std_logic_vector(7 downto 0) := x"0A";
    constant OP_EQU : std_logic_vector(7 downto 0) := x"0B";
    constant OP_PRI : std_logic_vector(7 downto 0) := x"0C";
    constant OP_IMP : std_logic_vector(7 downto 0) := x"0D";
    constant OP_DMP : std_logic_vector(7 downto 0) := x"0E";
    constant OP_JMPM : std_logic_vector(7 downto 0) := x"0F";
    constant OP_LOAD : std_logic_vector(7 downto 0) := x"10";
    constant OP_STORE : std_logic_vector(7 downto 0) := x"11";
end package;
