-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Mon May 19 18:56:05 2025
-- Host        : PC-PORTABLE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/chour/Documents/INSA/yadp/PROJET_INFO.sim/sim_1/impl/func/xsim/tb_micro_func_impl.vhd
-- Design      : micro
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticpg236-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clock_divider is
  port (
    clk_led_OBUF : out STD_LOGIC;
    clk_external_IBUF_BUFG : in STD_LOGIC
  );
end clock_divider;

architecture STRUCTURE of clock_divider is
  signal clk_i_1_n_0 : STD_LOGIC;
  signal \^clk_led_obuf\ : STD_LOGIC;
  signal internal : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \internal[0]_i_1_n_0\ : STD_LOGIC;
  signal \internal[1]_i_1_n_0\ : STD_LOGIC;
  signal \internal[2]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of clk_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \internal[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \internal[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \internal[2]_i_1\ : label is "soft_lutpair0";
begin
  clk_led_OBUF <= \^clk_led_obuf\;
clk_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAB8"
    )
        port map (
      I0 => \^clk_led_obuf\,
      I1 => internal(2),
      I2 => internal(1),
      I3 => internal(0),
      O => clk_i_1_n_0
    );
clk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_external_IBUF_BUFG,
      CE => '1',
      D => clk_i_1_n_0,
      Q => \^clk_led_obuf\,
      R => '0'
    );
\internal[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => internal(1),
      I1 => internal(2),
      I2 => internal(0),
      O => \internal[0]_i_1_n_0\
    );
\internal[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => internal(1),
      I1 => internal(0),
      O => \internal[1]_i_1_n_0\
    );
\internal[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"68"
    )
        port map (
      I0 => internal(1),
      I1 => internal(2),
      I2 => internal(0),
      O => \internal[2]_i_1_n_0\
    );
\internal_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_external_IBUF_BUFG,
      CE => '1',
      D => \internal[0]_i_1_n_0\,
      Q => internal(0),
      R => '0'
    );
\internal_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_external_IBUF_BUFG,
      CE => '1',
      D => \internal[1]_i_1_n_0\,
      Q => internal(1),
      R => '0'
    );
\internal_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_external_IBUF_BUFG,
      CE => '1',
      D => \internal[2]_i_1_n_0\,
      Q => internal(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity counter_heightbits is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    dout0 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \out\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_led_OBUF_BUFG : in STD_LOGIC
  );
end counter_heightbits;

architecture STRUCTURE of counter_heightbits is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \dout[27]_i_3_n_0\ : STD_LOGIC;
  signal internal_counter : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \internal_counter[6]_i_2_n_0\ : STD_LOGIC;
  signal \internal_counter[7]_i_2_n_0\ : STD_LOGIC;
  signal program_counter : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dout[16]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \dout[24]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \dout[25]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \dout[26]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dout[27]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dout[27]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \dout[8]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \internal_counter[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \internal_counter[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \internal_counter[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \internal_counter[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \internal_counter[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \internal_counter[6]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \internal_counter[7]_i_1\ : label is "soft_lutpair6";
begin
  E(0) <= \^e\(0);
  Q(6 downto 0) <= \^q\(6 downto 0);
\dout[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \dout[27]_i_3_n_0\,
      O => dout0(1)
    );
\dout[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \dout[27]_i_3_n_0\,
      O => dout0(2)
    );
\dout[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00404000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \dout[27]_i_3_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => dout0(3)
    );
\dout[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00202008"
    )
        port map (
      I0 => \dout[27]_i_3_n_0\,
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => dout0(4)
    );
\dout[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \dout[27]_i_3_n_0\,
      O => dout0(5)
    );
\dout[27]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      I2 => program_counter(7),
      I3 => \^q\(6),
      O => \dout[27]_i_3_n_0\
    );
\dout[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \dout[27]_i_3_n_0\,
      O => dout0(0)
    );
\internal_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => internal_counter(0)
    );
\internal_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => internal_counter(1)
    );
\internal_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => internal_counter(2)
    );
\internal_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => internal_counter(3)
    );
\internal_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(3),
      O => internal_counter(4)
    );
\internal_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => internal_counter(5)
    );
\internal_counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \internal_counter[6]_i_2_n_0\,
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => internal_counter(6)
    );
\internal_counter[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \internal_counter[6]_i_2_n_0\
    );
\internal_counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => program_counter(7),
      I1 => \internal_counter[7]_i_2_n_0\,
      I2 => \^q\(6),
      O => internal_counter(7)
    );
\internal_counter[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \internal_counter[7]_i_2_n_0\
    );
\internal_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \^e\(0),
      D => internal_counter(0),
      Q => \^q\(0),
      R => SR(0)
    );
\internal_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \^e\(0),
      D => internal_counter(1),
      Q => \^q\(1),
      R => SR(0)
    );
\internal_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \^e\(0),
      D => internal_counter(2),
      Q => \^q\(2),
      R => SR(0)
    );
\internal_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \^e\(0),
      D => internal_counter(3),
      Q => \^q\(3),
      R => SR(0)
    );
\internal_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \^e\(0),
      D => internal_counter(4),
      Q => \^q\(4),
      R => SR(0)
    );
\internal_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \^e\(0),
      D => internal_counter(5),
      Q => \^q\(5),
      R => SR(0)
    );
\internal_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \^e\(0),
      D => internal_counter(6),
      Q => \^q\(6),
      R => SR(0)
    );
\internal_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \^e\(0),
      D => internal_counter(7),
      Q => program_counter(7),
      R => SR(0)
    );
\rom_fetched[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \out\,
      O => \^e\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ram is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    in0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \out\ : in STD_LOGIC;
    \regs_reg[14][0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \regs_reg[255][0]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \dout_reg[0]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_led_OBUF_BUFG : in STD_LOGIC;
    \regs_reg[254][7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \regs_reg[170][7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    mem_base_pointer_way : in STD_LOGIC;
    \base_pointer_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end ram;

architecture STRUCTURE of ram is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  \^q\(7 downto 0) <= Q(7 downto 0);
  in0(7 downto 0) <= \^q\(7 downto 0);
\dout[27]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \out\,
      O => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity registers is
  port (
    \reg_w_op_reg[4]\ : out STD_LOGIC;
    \reg_w_op_reg[4]_0\ : out STD_LOGIC;
    in0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    register_b : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \regs_reg[0][0]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    di_in_b : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    di_in_c : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_led_OBUF_BUFG : in STD_LOGIC
  );
end registers;

architecture STRUCTURE of registers is
  signal register_a_inferred_i_11_n_0 : STD_LOGIC;
  signal register_a_inferred_i_13_n_0 : STD_LOGIC;
  signal register_a_inferred_i_15_n_0 : STD_LOGIC;
  signal register_a_inferred_i_17_n_0 : STD_LOGIC;
  signal register_a_inferred_i_19_n_0 : STD_LOGIC;
  signal register_a_inferred_i_21_n_0 : STD_LOGIC;
  signal register_a_inferred_i_23_n_0 : STD_LOGIC;
  signal register_a_inferred_i_25_n_0 : STD_LOGIC;
  signal register_a_inferred_i_28_n_0 : STD_LOGIC;
  signal register_a_inferred_i_32_n_0 : STD_LOGIC;
  signal register_a_inferred_i_36_n_0 : STD_LOGIC;
  signal register_a_inferred_i_40_n_0 : STD_LOGIC;
  signal register_a_inferred_i_44_n_0 : STD_LOGIC;
  signal register_a_inferred_i_48_n_0 : STD_LOGIC;
  signal register_a_inferred_i_52_n_0 : STD_LOGIC;
  signal register_a_inferred_i_56_n_0 : STD_LOGIC;
  signal register_a_inferred_i_9_n_0 : STD_LOGIC;
  signal register_b_inferred_i_11_n_0 : STD_LOGIC;
  signal register_b_inferred_i_13_n_0 : STD_LOGIC;
  signal register_b_inferred_i_15_n_0 : STD_LOGIC;
  signal register_b_inferred_i_17_n_0 : STD_LOGIC;
  signal register_b_inferred_i_19_n_0 : STD_LOGIC;
  signal register_b_inferred_i_21_n_0 : STD_LOGIC;
  signal register_b_inferred_i_23_n_0 : STD_LOGIC;
  signal register_b_inferred_i_25_n_0 : STD_LOGIC;
  signal register_b_inferred_i_28_n_0 : STD_LOGIC;
  signal register_b_inferred_i_32_n_0 : STD_LOGIC;
  signal register_b_inferred_i_36_n_0 : STD_LOGIC;
  signal register_b_inferred_i_40_n_0 : STD_LOGIC;
  signal register_b_inferred_i_44_n_0 : STD_LOGIC;
  signal register_b_inferred_i_48_n_0 : STD_LOGIC;
  signal register_b_inferred_i_52_n_0 : STD_LOGIC;
  signal register_b_inferred_i_56_n_0 : STD_LOGIC;
  signal register_b_inferred_i_9_n_0 : STD_LOGIC;
  signal \regs[0][7]_i_1_n_0\ : STD_LOGIC;
  signal \regs[0][7]_i_2_n_0\ : STD_LOGIC;
  signal \regs[1]_16\ : STD_LOGIC;
  signal \regs[2]_17\ : STD_LOGIC;
  signal \regs[3]_18\ : STD_LOGIC;
  signal \regs_reg[0]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regs_reg[1]_1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regs_reg[2]_2\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \regs_reg[3]_3\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of register_a_inferred_i_1 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_a_inferred_i_11 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_a_inferred_i_13 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_a_inferred_i_15 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_a_inferred_i_17 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_a_inferred_i_19 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_a_inferred_i_2 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_a_inferred_i_21 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_a_inferred_i_23 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_a_inferred_i_25 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_a_inferred_i_3 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_a_inferred_i_4 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_a_inferred_i_5 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_a_inferred_i_6 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_a_inferred_i_7 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_a_inferred_i_8 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_a_inferred_i_9 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_b_inferred_i_1 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_b_inferred_i_11 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_b_inferred_i_13 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_b_inferred_i_15 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_b_inferred_i_17 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_b_inferred_i_19 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_b_inferred_i_2 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_b_inferred_i_21 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_b_inferred_i_23 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_b_inferred_i_25 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_b_inferred_i_28 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_b_inferred_i_3 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_b_inferred_i_32 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_b_inferred_i_36 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_b_inferred_i_4 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_b_inferred_i_40 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_b_inferred_i_44 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_b_inferred_i_48 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_b_inferred_i_5 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_b_inferred_i_52 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_b_inferred_i_56 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_b_inferred_i_6 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_b_inferred_i_7 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_b_inferred_i_8 : label is "PROPCONST";
  attribute OPT_MODIFIED of register_b_inferred_i_9 : label is "PROPCONST";
  attribute OPT_MODIFIED of \regs[0][7]_i_1\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \regs[0][7]_i_2\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \regs[1][7]_i_1\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \regs[2][7]_i_1\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \regs[3][7]_i_1\ : label is "PROPCONST";
begin
register_a_inferred_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => register_a_inferred_i_9_n_0,
      I1 => \out\(7),
      I2 => register_a_inferred_i_11_n_0,
      O => in0(7)
    );
register_a_inferred_i_11: unisim.vcomponents.MUXF7
     port map (
      I0 => register_a_inferred_i_28_n_0,
      I1 => '0',
      O => register_a_inferred_i_11_n_0,
      S => di_in_b(2)
    );
register_a_inferred_i_13: unisim.vcomponents.MUXF7
     port map (
      I0 => register_a_inferred_i_32_n_0,
      I1 => '0',
      O => register_a_inferred_i_13_n_0,
      S => di_in_b(2)
    );
register_a_inferred_i_15: unisim.vcomponents.MUXF7
     port map (
      I0 => register_a_inferred_i_36_n_0,
      I1 => '0',
      O => register_a_inferred_i_15_n_0,
      S => di_in_b(2)
    );
register_a_inferred_i_17: unisim.vcomponents.MUXF7
     port map (
      I0 => register_a_inferred_i_40_n_0,
      I1 => '0',
      O => register_a_inferred_i_17_n_0,
      S => di_in_b(2)
    );
register_a_inferred_i_19: unisim.vcomponents.MUXF7
     port map (
      I0 => register_a_inferred_i_44_n_0,
      I1 => '0',
      O => register_a_inferred_i_19_n_0,
      S => di_in_b(2)
    );
register_a_inferred_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => register_a_inferred_i_9_n_0,
      I1 => \out\(6),
      I2 => register_a_inferred_i_13_n_0,
      O => in0(6)
    );
register_a_inferred_i_21: unisim.vcomponents.MUXF7
     port map (
      I0 => register_a_inferred_i_48_n_0,
      I1 => '0',
      O => register_a_inferred_i_21_n_0,
      S => di_in_b(2)
    );
register_a_inferred_i_23: unisim.vcomponents.MUXF7
     port map (
      I0 => register_a_inferred_i_52_n_0,
      I1 => '0',
      O => register_a_inferred_i_23_n_0,
      S => di_in_b(2)
    );
register_a_inferred_i_25: unisim.vcomponents.MUXF7
     port map (
      I0 => register_a_inferred_i_56_n_0,
      I1 => '0',
      O => register_a_inferred_i_25_n_0,
      S => di_in_b(2)
    );
register_a_inferred_i_28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regs_reg[3]_3\(7),
      I1 => \regs_reg[2]_2\(7),
      I2 => di_in_b(1),
      I3 => \regs_reg[1]_1\(7),
      I4 => di_in_b(0),
      I5 => \regs_reg[0]_0\(7),
      O => register_a_inferred_i_28_n_0
    );
register_a_inferred_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => register_a_inferred_i_9_n_0,
      I1 => \out\(5),
      I2 => register_a_inferred_i_15_n_0,
      O => in0(5)
    );
register_a_inferred_i_32: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regs_reg[3]_3\(6),
      I1 => \regs_reg[2]_2\(6),
      I2 => di_in_b(1),
      I3 => \regs_reg[1]_1\(6),
      I4 => di_in_b(0),
      I5 => \regs_reg[0]_0\(6),
      O => register_a_inferred_i_32_n_0
    );
register_a_inferred_i_36: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regs_reg[3]_3\(5),
      I1 => \regs_reg[2]_2\(5),
      I2 => di_in_b(1),
      I3 => \regs_reg[1]_1\(5),
      I4 => di_in_b(0),
      I5 => \regs_reg[0]_0\(5),
      O => register_a_inferred_i_36_n_0
    );
register_a_inferred_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => register_a_inferred_i_9_n_0,
      I1 => \out\(4),
      I2 => register_a_inferred_i_17_n_0,
      O => in0(4)
    );
register_a_inferred_i_40: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regs_reg[3]_3\(4),
      I1 => \regs_reg[2]_2\(4),
      I2 => di_in_b(1),
      I3 => \regs_reg[1]_1\(4),
      I4 => di_in_b(0),
      I5 => \regs_reg[0]_0\(4),
      O => register_a_inferred_i_40_n_0
    );
register_a_inferred_i_44: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regs_reg[3]_3\(3),
      I1 => \regs_reg[2]_2\(3),
      I2 => di_in_b(1),
      I3 => \regs_reg[1]_1\(3),
      I4 => di_in_b(0),
      I5 => \regs_reg[0]_0\(3),
      O => register_a_inferred_i_44_n_0
    );
register_a_inferred_i_48: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regs_reg[3]_3\(2),
      I1 => \regs_reg[2]_2\(2),
      I2 => di_in_b(1),
      I3 => \regs_reg[1]_1\(2),
      I4 => di_in_b(0),
      I5 => \regs_reg[0]_0\(2),
      O => register_a_inferred_i_48_n_0
    );
register_a_inferred_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => register_a_inferred_i_9_n_0,
      I1 => \out\(3),
      I2 => register_a_inferred_i_19_n_0,
      O => in0(3)
    );
register_a_inferred_i_52: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regs_reg[3]_3\(1),
      I1 => \regs_reg[2]_2\(1),
      I2 => di_in_b(1),
      I3 => \regs_reg[1]_1\(1),
      I4 => di_in_b(0),
      I5 => \regs_reg[0]_0\(1),
      O => register_a_inferred_i_52_n_0
    );
register_a_inferred_i_56: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \regs_reg[3]_3\(0),
      I1 => \regs_reg[2]_2\(0),
      I2 => di_in_b(1),
      I3 => \regs_reg[1]_1\(0),
      I4 => di_in_b(0),
      I5 => \regs_reg[0]_0\(0),
      O => register_a_inferred_i_56_n_0
    );
register_a_inferred_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => register_a_inferred_i_9_n_0,
      I1 => \out\(2),
      I2 => register_a_inferred_i_21_n_0,
      O => in0(2)
    );
register_a_inferred_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => register_a_inferred_i_9_n_0,
      I1 => \out\(1),
      I2 => register_a_inferred_i_23_n_0,
      O => in0(1)
    );
register_a_inferred_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => register_a_inferred_i_9_n_0,
      I1 => \out\(0),
      I2 => register_a_inferred_i_25_n_0,
      O => in0(0)
    );
register_a_inferred_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09000009"
    )
        port map (
      I0 => \regs_reg[0][0]_0\(0),
      I1 => di_in_b(0),
      I2 => di_in_b(2),
      I3 => di_in_b(1),
      I4 => \regs_reg[0][0]_0\(1),
      O => register_a_inferred_i_9_n_0
    );
register_b_inferred_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => register_b_inferred_i_9_n_0,
      I1 => \out\(7),
      I2 => register_b_inferred_i_11_n_0,
      O => register_b(7)
    );
register_b_inferred_i_11: unisim.vcomponents.MUXF7
     port map (
      I0 => register_b_inferred_i_28_n_0,
      I1 => '0',
      O => register_b_inferred_i_11_n_0,
      S => di_in_c(2)
    );
register_b_inferred_i_13: unisim.vcomponents.MUXF7
     port map (
      I0 => register_b_inferred_i_32_n_0,
      I1 => '0',
      O => register_b_inferred_i_13_n_0,
      S => di_in_c(2)
    );
register_b_inferred_i_15: unisim.vcomponents.MUXF7
     port map (
      I0 => register_b_inferred_i_36_n_0,
      I1 => '0',
      O => register_b_inferred_i_15_n_0,
      S => di_in_c(2)
    );
register_b_inferred_i_17: unisim.vcomponents.MUXF7
     port map (
      I0 => register_b_inferred_i_40_n_0,
      I1 => '0',
      O => register_b_inferred_i_17_n_0,
      S => di_in_c(2)
    );
register_b_inferred_i_19: unisim.vcomponents.MUXF7
     port map (
      I0 => register_b_inferred_i_44_n_0,
      I1 => '0',
      O => register_b_inferred_i_19_n_0,
      S => di_in_c(2)
    );
register_b_inferred_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => register_b_inferred_i_9_n_0,
      I1 => \out\(6),
      I2 => register_b_inferred_i_13_n_0,
      O => register_b(6)
    );
register_b_inferred_i_21: unisim.vcomponents.MUXF7
     port map (
      I0 => register_b_inferred_i_48_n_0,
      I1 => '0',
      O => register_b_inferred_i_21_n_0,
      S => di_in_c(2)
    );
register_b_inferred_i_23: unisim.vcomponents.MUXF7
     port map (
      I0 => register_b_inferred_i_52_n_0,
      I1 => '0',
      O => register_b_inferred_i_23_n_0,
      S => di_in_c(2)
    );
register_b_inferred_i_25: unisim.vcomponents.MUXF7
     port map (
      I0 => register_b_inferred_i_56_n_0,
      I1 => '0',
      O => register_b_inferred_i_25_n_0,
      S => di_in_c(2)
    );
register_b_inferred_i_28: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regs_reg[1]_1\(7),
      I1 => di_in_c(0),
      I2 => \regs_reg[0]_0\(7),
      O => register_b_inferred_i_28_n_0
    );
register_b_inferred_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => register_b_inferred_i_9_n_0,
      I1 => \out\(5),
      I2 => register_b_inferred_i_15_n_0,
      O => register_b(5)
    );
register_b_inferred_i_32: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regs_reg[1]_1\(6),
      I1 => di_in_c(0),
      I2 => \regs_reg[0]_0\(6),
      O => register_b_inferred_i_32_n_0
    );
register_b_inferred_i_36: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regs_reg[1]_1\(5),
      I1 => di_in_c(0),
      I2 => \regs_reg[0]_0\(5),
      O => register_b_inferred_i_36_n_0
    );
register_b_inferred_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => register_b_inferred_i_9_n_0,
      I1 => \out\(4),
      I2 => register_b_inferred_i_17_n_0,
      O => register_b(4)
    );
register_b_inferred_i_40: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regs_reg[1]_1\(4),
      I1 => di_in_c(0),
      I2 => \regs_reg[0]_0\(4),
      O => register_b_inferred_i_40_n_0
    );
register_b_inferred_i_44: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regs_reg[1]_1\(3),
      I1 => di_in_c(0),
      I2 => \regs_reg[0]_0\(3),
      O => register_b_inferred_i_44_n_0
    );
register_b_inferred_i_48: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regs_reg[1]_1\(2),
      I1 => di_in_c(0),
      I2 => \regs_reg[0]_0\(2),
      O => register_b_inferred_i_48_n_0
    );
register_b_inferred_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => register_b_inferred_i_9_n_0,
      I1 => \out\(3),
      I2 => register_b_inferred_i_19_n_0,
      O => register_b(3)
    );
register_b_inferred_i_52: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regs_reg[1]_1\(1),
      I1 => di_in_c(0),
      I2 => \regs_reg[0]_0\(1),
      O => register_b_inferred_i_52_n_0
    );
register_b_inferred_i_56: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \regs_reg[1]_1\(0),
      I1 => di_in_c(0),
      I2 => \regs_reg[0]_0\(0),
      O => register_b_inferred_i_56_n_0
    );
register_b_inferred_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => register_b_inferred_i_9_n_0,
      I1 => \out\(2),
      I2 => register_b_inferred_i_21_n_0,
      O => register_b(2)
    );
register_b_inferred_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => register_b_inferred_i_9_n_0,
      I1 => \out\(1),
      I2 => register_b_inferred_i_23_n_0,
      O => register_b(1)
    );
register_b_inferred_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => register_b_inferred_i_9_n_0,
      I1 => \out\(0),
      I2 => register_b_inferred_i_25_n_0,
      O => register_b(0)
    );
register_b_inferred_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \regs_reg[0][0]_0\(0),
      I1 => di_in_c(0),
      I2 => \regs_reg[0][0]_0\(1),
      O => register_b_inferred_i_9_n_0
    );
\regs[0][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \regs[0][7]_i_2_n_0\,
      I1 => \regs_reg[0][0]_0\(0),
      I2 => \regs_reg[0][0]_0\(1),
      O => \regs[0][7]_i_1_n_0\
    );
\regs[0][7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3774"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      O => \regs[0][7]_i_2_n_0\
    );
\regs[1][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \regs[0][7]_i_2_n_0\,
      I1 => \regs_reg[0][0]_0\(1),
      I2 => \regs_reg[0][0]_0\(0),
      O => \regs[1]_16\
    );
\regs[2][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \regs[0][7]_i_2_n_0\,
      I1 => \regs_reg[0][0]_0\(0),
      I2 => \regs_reg[0][0]_0\(1),
      O => \regs[2]_17\
    );
\regs[3][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \regs[0][7]_i_2_n_0\,
      I1 => \regs_reg[0][0]_0\(0),
      I2 => \regs_reg[0][0]_0\(1),
      O => \regs[3]_18\
    );
\regs_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[0][7]_i_1_n_0\,
      D => \out\(0),
      Q => \regs_reg[0]_0\(0),
      R => SR(0)
    );
\regs_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[0][7]_i_1_n_0\,
      D => \out\(1),
      Q => \regs_reg[0]_0\(1),
      R => SR(0)
    );
\regs_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[0][7]_i_1_n_0\,
      D => \out\(2),
      Q => \regs_reg[0]_0\(2),
      R => SR(0)
    );
\regs_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[0][7]_i_1_n_0\,
      D => \out\(3),
      Q => \regs_reg[0]_0\(3),
      R => SR(0)
    );
\regs_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[0][7]_i_1_n_0\,
      D => \out\(4),
      Q => \regs_reg[0]_0\(4),
      R => SR(0)
    );
\regs_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[0][7]_i_1_n_0\,
      D => \out\(5),
      Q => \regs_reg[0]_0\(5),
      R => SR(0)
    );
\regs_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[0][7]_i_1_n_0\,
      D => \out\(6),
      Q => \regs_reg[0]_0\(6),
      R => SR(0)
    );
\regs_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[0][7]_i_1_n_0\,
      D => \out\(7),
      Q => \regs_reg[0]_0\(7),
      R => SR(0)
    );
\regs_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[1]_16\,
      D => \out\(0),
      Q => \regs_reg[1]_1\(0),
      R => SR(0)
    );
\regs_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[1]_16\,
      D => \out\(1),
      Q => \regs_reg[1]_1\(1),
      R => SR(0)
    );
\regs_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[1]_16\,
      D => \out\(2),
      Q => \regs_reg[1]_1\(2),
      R => SR(0)
    );
\regs_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[1]_16\,
      D => \out\(3),
      Q => \regs_reg[1]_1\(3),
      R => SR(0)
    );
\regs_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[1]_16\,
      D => \out\(4),
      Q => \regs_reg[1]_1\(4),
      R => SR(0)
    );
\regs_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[1]_16\,
      D => \out\(5),
      Q => \regs_reg[1]_1\(5),
      R => SR(0)
    );
\regs_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[1]_16\,
      D => \out\(6),
      Q => \regs_reg[1]_1\(6),
      R => SR(0)
    );
\regs_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[1]_16\,
      D => \out\(7),
      Q => \regs_reg[1]_1\(7),
      R => SR(0)
    );
\regs_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[2]_17\,
      D => \out\(0),
      Q => \regs_reg[2]_2\(0),
      R => SR(0)
    );
\regs_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[2]_17\,
      D => \out\(1),
      Q => \regs_reg[2]_2\(1),
      R => SR(0)
    );
\regs_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[2]_17\,
      D => \out\(2),
      Q => \regs_reg[2]_2\(2),
      R => SR(0)
    );
\regs_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[2]_17\,
      D => \out\(3),
      Q => \regs_reg[2]_2\(3),
      R => SR(0)
    );
\regs_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[2]_17\,
      D => \out\(4),
      Q => \regs_reg[2]_2\(4),
      R => SR(0)
    );
\regs_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[2]_17\,
      D => \out\(5),
      Q => \regs_reg[2]_2\(5),
      R => SR(0)
    );
\regs_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[2]_17\,
      D => \out\(6),
      Q => \regs_reg[2]_2\(6),
      R => SR(0)
    );
\regs_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[2]_17\,
      D => \out\(7),
      Q => \regs_reg[2]_2\(7),
      R => SR(0)
    );
\regs_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[3]_18\,
      D => \out\(0),
      Q => \regs_reg[3]_3\(0),
      R => SR(0)
    );
\regs_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[3]_18\,
      D => \out\(1),
      Q => \regs_reg[3]_3\(1),
      R => SR(0)
    );
\regs_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[3]_18\,
      D => \out\(2),
      Q => \regs_reg[3]_3\(2),
      R => SR(0)
    );
\regs_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[3]_18\,
      D => \out\(3),
      Q => \regs_reg[3]_3\(3),
      R => SR(0)
    );
\regs_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[3]_18\,
      D => \out\(4),
      Q => \regs_reg[3]_3\(4),
      R => SR(0)
    );
\regs_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[3]_18\,
      D => \out\(5),
      Q => \regs_reg[3]_3\(5),
      R => SR(0)
    );
\regs_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[3]_18\,
      D => \out\(6),
      Q => \regs_reg[3]_3\(6),
      R => SR(0)
    );
\regs_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \regs[3]_18\,
      D => \out\(7),
      Q => \regs_reg[3]_3\(7),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rom is
  port (
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 5 downto 0 );
    clk_led_OBUF_BUFG : in STD_LOGIC
  );
end rom;

architecture STRUCTURE of rom is
begin
\dout_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => SR(0)
    );
\dout_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => D(2),
      Q => Q(2),
      R => SR(0)
    );
\dout_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => D(3),
      Q => Q(3),
      R => SR(0)
    );
\dout_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => D(4),
      Q => Q(4),
      R => SR(0)
    );
\dout_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => D(5),
      Q => Q(5),
      R => SR(0)
    );
\dout_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => D(0),
      Q => Q(0),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity seven_seg_controller is
  port (
    an_OBUF : out STD_LOGIC_VECTOR ( 3 downto 0 );
    seg_OBUF : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clk_external_IBUF_BUFG : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \seg_OBUF[0]_inst_i_1_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end seven_seg_controller;

architecture STRUCTURE of seven_seg_controller is
  signal \counter[0]_i_2_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal digit_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \digit_sel[0]_i_1_n_0\ : STD_LOGIC;
  signal \digit_sel[1]_i_1_n_0\ : STD_LOGIC;
  signal \digit_sel[1]_i_3_n_0\ : STD_LOGIC;
  signal \digit_sel[1]_i_4_n_0\ : STD_LOGIC;
  signal \digit_sel[1]_i_5_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_reg[0]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_counter_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \an_OBUF[0]_inst_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \an_OBUF[1]_inst_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \an_OBUF[2]_inst_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \an_OBUF[3]_inst_i_1\ : label is "soft_lutpair19";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \digit_sel[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \digit_sel[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \seg_OBUF[0]_inst_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \seg_OBUF[1]_inst_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \seg_OBUF[2]_inst_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \seg_OBUF[3]_inst_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \seg_OBUF[4]_inst_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \seg_OBUF[5]_inst_i_1\ : label is "soft_lutpair16";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \seg_OBUF[6]_inst_i_2\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \seg_OBUF[6]_inst_i_3\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \seg_OBUF[6]_inst_i_4\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \seg_OBUF[6]_inst_i_5\ : label is "PROPCONST";
begin
\an_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => digit_sel(1),
      I1 => digit_sel(0),
      O => an_OBUF(0)
    );
\an_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => digit_sel(0),
      I1 => digit_sel(1),
      O => an_OBUF(1)
    );
\an_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => digit_sel(1),
      I1 => digit_sel(0),
      O => an_OBUF(2)
    );
\an_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => digit_sel(1),
      I1 => digit_sel(0),
      O => an_OBUF(3)
    );
\counter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      O => \counter[0]_i_2_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_external_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[0]_i_1_n_7\,
      Q => counter_reg(0),
      R => '0'
    );
\counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_1_n_0\,
      CO(2 downto 0) => \NLW_counter_reg[0]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_reg[0]_i_1_n_4\,
      O(2) => \counter_reg[0]_i_1_n_5\,
      O(1) => \counter_reg[0]_i_1_n_6\,
      O(0) => \counter_reg[0]_i_1_n_7\,
      S(3 downto 1) => counter_reg(3 downto 1),
      S(0) => \counter[0]_i_2_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_external_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[8]_i_1_n_5\,
      Q => counter_reg(10),
      R => '0'
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_external_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[8]_i_1_n_4\,
      Q => counter_reg(11),
      R => '0'
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_external_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[12]_i_1_n_7\,
      Q => counter_reg(12),
      R => '0'
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \counter_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_counter_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => counter_reg(15 downto 12)
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_external_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[12]_i_1_n_6\,
      Q => counter_reg(13),
      R => '0'
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_external_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[12]_i_1_n_5\,
      Q => counter_reg(14),
      R => '0'
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_external_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[12]_i_1_n_4\,
      Q => counter_reg(15),
      R => '0'
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_external_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[16]_i_1_n_7\,
      Q => counter_reg(16),
      R => '0'
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_counter_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[16]_i_1_n_4\,
      O(2) => \counter_reg[16]_i_1_n_5\,
      O(1) => \counter_reg[16]_i_1_n_6\,
      O(0) => \counter_reg[16]_i_1_n_7\,
      S(3 downto 0) => counter_reg(19 downto 16)
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_external_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[16]_i_1_n_6\,
      Q => counter_reg(17),
      R => '0'
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_external_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[16]_i_1_n_5\,
      Q => counter_reg(18),
      R => '0'
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_external_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[16]_i_1_n_4\,
      Q => counter_reg(19),
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_external_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[0]_i_1_n_6\,
      Q => counter_reg(1),
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_external_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[0]_i_1_n_5\,
      Q => counter_reg(2),
      R => '0'
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_external_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[0]_i_1_n_4\,
      Q => counter_reg(3),
      R => '0'
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_external_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[4]_i_1_n_7\,
      Q => counter_reg(4),
      R => '0'
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_1_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_counter_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_reg(7 downto 4)
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_external_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[4]_i_1_n_6\,
      Q => counter_reg(5),
      R => '0'
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_external_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[4]_i_1_n_5\,
      Q => counter_reg(6),
      R => '0'
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_external_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[4]_i_1_n_4\,
      Q => counter_reg(7),
      R => '0'
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_external_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[8]_i_1_n_7\,
      Q => counter_reg(8),
      R => '0'
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_counter_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_reg(11 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_external_IBUF_BUFG,
      CE => '1',
      D => \counter_reg[8]_i_1_n_6\,
      Q => counter_reg(9),
      R => '0'
    );
\digit_sel[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in,
      I1 => digit_sel(0),
      O => \digit_sel[0]_i_1_n_0\
    );
\digit_sel[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => digit_sel(0),
      I1 => p_0_in,
      I2 => digit_sel(1),
      O => \digit_sel[1]_i_1_n_0\
    );
\digit_sel[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \digit_sel[1]_i_3_n_0\,
      I1 => \digit_sel[1]_i_4_n_0\,
      I2 => \digit_sel[1]_i_5_n_0\,
      I3 => counter_reg(0),
      I4 => counter_reg(1),
      O => p_0_in
    );
\digit_sel[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => counter_reg(16),
      I1 => counter_reg(17),
      I2 => counter_reg(14),
      I3 => counter_reg(15),
      I4 => counter_reg(19),
      I5 => counter_reg(18),
      O => \digit_sel[1]_i_3_n_0\
    );
\digit_sel[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => counter_reg(4),
      I1 => counter_reg(5),
      I2 => counter_reg(2),
      I3 => counter_reg(3),
      I4 => counter_reg(7),
      I5 => counter_reg(6),
      O => \digit_sel[1]_i_4_n_0\
    );
\digit_sel[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => counter_reg(10),
      I1 => counter_reg(11),
      I2 => counter_reg(8),
      I3 => counter_reg(9),
      I4 => counter_reg(13),
      I5 => counter_reg(12),
      O => \digit_sel[1]_i_5_n_0\
    );
\digit_sel_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_external_IBUF_BUFG,
      CE => '1',
      D => \digit_sel[0]_i_1_n_0\,
      Q => digit_sel(0),
      R => '0'
    );
\digit_sel_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_external_IBUF_BUFG,
      CE => '1',
      D => \digit_sel[1]_i_1_n_0\,
      Q => digit_sel(1),
      R => '0'
    );
\seg_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      O => seg_OBUF(0)
    );
\seg_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5390"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      O => seg_OBUF(1)
    );
\seg_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      O => seg_OBUF(2)
    );
\seg_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C014"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      O => seg_OBUF(3)
    );
\seg_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      O => seg_OBUF(4)
    );
\seg_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AC48"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      O => seg_OBUF(5)
    );
\seg_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      O => seg_OBUF(6)
    );
\seg_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CA00"
    )
        port map (
      I0 => \out\(3),
      I1 => \seg_OBUF[0]_inst_i_1_0\(3),
      I2 => digit_sel(1),
      I3 => digit_sel(0),
      O => sel0(3)
    );
\seg_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CA00"
    )
        port map (
      I0 => \out\(2),
      I1 => \seg_OBUF[0]_inst_i_1_0\(2),
      I2 => digit_sel(1),
      I3 => digit_sel(0),
      O => sel0(2)
    );
\seg_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CA00"
    )
        port map (
      I0 => \out\(0),
      I1 => \seg_OBUF[0]_inst_i_1_0\(0),
      I2 => digit_sel(1),
      I3 => digit_sel(0),
      O => sel0(0)
    );
\seg_OBUF[6]_inst_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CA00"
    )
        port map (
      I0 => \out\(1),
      I1 => \seg_OBUF[0]_inst_i_1_0\(1),
      I2 => digit_sel(1),
      I3 => digit_sel(0),
      O => sel0(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity micro is
  port (
    clk_external : in STD_LOGIC;
    rst : in STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pc_leds : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clk_led : out STD_LOGIC;
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of micro : entity is true;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ of micro : entity is std.standard.true;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ of micro : entity is std.standard.true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of micro : entity is "3d142dda";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of micro : entity is "yes";
end micro;

architecture STRUCTURE of micro is
  signal \alu_inst/data0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \alu_inst/data1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \alu_inst/data3\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \alu_inst/data5\ : STD_LOGIC;
  signal \alu_inst/ltOp\ : STD_LOGIC;
  signal an_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clear : STD_LOGIC;
  signal clk_external_IBUF : STD_LOGIC;
  signal clk_external_IBUF_BUFG : STD_LOGIC;
  signal clk_led_OBUF : STD_LOGIC;
  signal clk_led_OBUF_BUFG : STD_LOGIC;
  signal \di_in_a[7]_i_1_n_0\ : STD_LOGIC;
  signal \di_in_a_reg_n_0_[0]\ : STD_LOGIC;
  signal \di_in_a_reg_n_0_[1]\ : STD_LOGIC;
  signal di_in_b : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal di_in_c : STD_LOGIC_VECTOR ( 0 to 0 );
  signal di_in_op : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of di_in_op : signal is "true";
  signal ex_in_a : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ex_in_b : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ex_in_b[0]_i_1_n_0\ : STD_LOGIC;
  signal \ex_in_b[0]_i_2_n_0\ : STD_LOGIC;
  signal \ex_in_b[1]_i_1_n_0\ : STD_LOGIC;
  signal \ex_in_b[1]_i_2_n_0\ : STD_LOGIC;
  signal \ex_in_b[2]_i_1_n_0\ : STD_LOGIC;
  signal \ex_in_b[2]_i_2_n_0\ : STD_LOGIC;
  signal \ex_in_b[3]_i_1_n_0\ : STD_LOGIC;
  signal \ex_in_b[3]_i_2_n_0\ : STD_LOGIC;
  signal \ex_in_b[4]_i_1_n_0\ : STD_LOGIC;
  signal \ex_in_b[4]_i_2_n_0\ : STD_LOGIC;
  signal \ex_in_b[5]_i_2_n_0\ : STD_LOGIC;
  signal \ex_in_b[6]_i_1_n_0\ : STD_LOGIC;
  signal \ex_in_b[6]_i_2_n_0\ : STD_LOGIC;
  signal \ex_in_b[6]_i_3_n_0\ : STD_LOGIC;
  signal \ex_in_b[6]_i_4_n_0\ : STD_LOGIC;
  signal \ex_in_b[6]_i_5_n_0\ : STD_LOGIC;
  signal \ex_in_b[7]_i_3_n_0\ : STD_LOGIC;
  signal \ex_in_b[7]_i_4_n_0\ : STD_LOGIC;
  signal \ex_in_b_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal ex_in_c : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ex_in_op : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \leds[7]_i_1_n_0\ : STD_LOGIC;
  signal leds_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mem_in_a : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mem_in_b : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \mem_in_b[0]_i_10_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_11_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_12_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_13_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_14_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_15_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_16_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_17_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_18_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_19_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_1_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_20_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_21_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_22_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_23_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_24_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_25_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_26_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_27_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_28_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_29_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_30_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_32_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_33_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_34_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_35_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_37_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_39_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_3_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_40_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_41_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_42_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_43_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_44_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_45_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_46_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_4_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_6_n_0\ : STD_LOGIC;
  signal \mem_in_b[0]_i_8_n_0\ : STD_LOGIC;
  signal \mem_in_b[1]_i_10_n_0\ : STD_LOGIC;
  signal \mem_in_b[1]_i_11_n_0\ : STD_LOGIC;
  signal \mem_in_b[1]_i_12_n_0\ : STD_LOGIC;
  signal \mem_in_b[1]_i_13_n_0\ : STD_LOGIC;
  signal \mem_in_b[1]_i_14_n_0\ : STD_LOGIC;
  signal \mem_in_b[1]_i_15_n_0\ : STD_LOGIC;
  signal \mem_in_b[1]_i_2_n_0\ : STD_LOGIC;
  signal \mem_in_b[1]_i_3_n_0\ : STD_LOGIC;
  signal \mem_in_b[1]_i_6_n_0\ : STD_LOGIC;
  signal \mem_in_b[1]_i_7_n_0\ : STD_LOGIC;
  signal \mem_in_b[1]_i_9_n_0\ : STD_LOGIC;
  signal \mem_in_b[2]_i_10_n_0\ : STD_LOGIC;
  signal \mem_in_b[2]_i_11_n_0\ : STD_LOGIC;
  signal \mem_in_b[2]_i_12_n_0\ : STD_LOGIC;
  signal \mem_in_b[2]_i_13_n_0\ : STD_LOGIC;
  signal \mem_in_b[2]_i_14_n_0\ : STD_LOGIC;
  signal \mem_in_b[2]_i_15_n_0\ : STD_LOGIC;
  signal \mem_in_b[2]_i_17_n_0\ : STD_LOGIC;
  signal \mem_in_b[2]_i_18_n_0\ : STD_LOGIC;
  signal \mem_in_b[2]_i_19_n_0\ : STD_LOGIC;
  signal \mem_in_b[2]_i_20_n_0\ : STD_LOGIC;
  signal \mem_in_b[2]_i_21_n_0\ : STD_LOGIC;
  signal \mem_in_b[2]_i_22_n_0\ : STD_LOGIC;
  signal \mem_in_b[2]_i_23_n_0\ : STD_LOGIC;
  signal \mem_in_b[2]_i_24_n_0\ : STD_LOGIC;
  signal \mem_in_b[2]_i_2_n_0\ : STD_LOGIC;
  signal \mem_in_b[2]_i_3_n_0\ : STD_LOGIC;
  signal \mem_in_b[2]_i_7_n_0\ : STD_LOGIC;
  signal \mem_in_b[2]_i_8_n_0\ : STD_LOGIC;
  signal \mem_in_b[2]_i_9_n_0\ : STD_LOGIC;
  signal \mem_in_b[3]_i_10_n_0\ : STD_LOGIC;
  signal \mem_in_b[3]_i_11_n_0\ : STD_LOGIC;
  signal \mem_in_b[3]_i_12_n_0\ : STD_LOGIC;
  signal \mem_in_b[3]_i_13_n_0\ : STD_LOGIC;
  signal \mem_in_b[3]_i_14_n_0\ : STD_LOGIC;
  signal \mem_in_b[3]_i_15_n_0\ : STD_LOGIC;
  signal \mem_in_b[3]_i_16_n_0\ : STD_LOGIC;
  signal \mem_in_b[3]_i_17_n_0\ : STD_LOGIC;
  signal \mem_in_b[3]_i_19_n_0\ : STD_LOGIC;
  signal \mem_in_b[3]_i_20_n_0\ : STD_LOGIC;
  signal \mem_in_b[3]_i_21_n_0\ : STD_LOGIC;
  signal \mem_in_b[3]_i_22_n_0\ : STD_LOGIC;
  signal \mem_in_b[3]_i_23_n_0\ : STD_LOGIC;
  signal \mem_in_b[3]_i_24_n_0\ : STD_LOGIC;
  signal \mem_in_b[3]_i_25_n_0\ : STD_LOGIC;
  signal \mem_in_b[3]_i_2_n_0\ : STD_LOGIC;
  signal \mem_in_b[3]_i_3_n_0\ : STD_LOGIC;
  signal \mem_in_b[3]_i_8_n_0\ : STD_LOGIC;
  signal \mem_in_b[3]_i_9_n_0\ : STD_LOGIC;
  signal \mem_in_b[4]_i_10_n_0\ : STD_LOGIC;
  signal \mem_in_b[4]_i_11_n_0\ : STD_LOGIC;
  signal \mem_in_b[4]_i_12_n_0\ : STD_LOGIC;
  signal \mem_in_b[4]_i_13_n_0\ : STD_LOGIC;
  signal \mem_in_b[4]_i_14_n_0\ : STD_LOGIC;
  signal \mem_in_b[4]_i_15_n_0\ : STD_LOGIC;
  signal \mem_in_b[4]_i_2_n_0\ : STD_LOGIC;
  signal \mem_in_b[4]_i_3_n_0\ : STD_LOGIC;
  signal \mem_in_b[4]_i_6_n_0\ : STD_LOGIC;
  signal \mem_in_b[4]_i_7_n_0\ : STD_LOGIC;
  signal \mem_in_b[4]_i_9_n_0\ : STD_LOGIC;
  signal \mem_in_b[5]_i_10_n_0\ : STD_LOGIC;
  signal \mem_in_b[5]_i_11_n_0\ : STD_LOGIC;
  signal \mem_in_b[5]_i_12_n_0\ : STD_LOGIC;
  signal \mem_in_b[5]_i_13_n_0\ : STD_LOGIC;
  signal \mem_in_b[5]_i_14_n_0\ : STD_LOGIC;
  signal \mem_in_b[5]_i_15_n_0\ : STD_LOGIC;
  signal \mem_in_b[5]_i_2_n_0\ : STD_LOGIC;
  signal \mem_in_b[5]_i_3_n_0\ : STD_LOGIC;
  signal \mem_in_b[5]_i_6_n_0\ : STD_LOGIC;
  signal \mem_in_b[5]_i_7_n_0\ : STD_LOGIC;
  signal \mem_in_b[5]_i_9_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_11_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_12_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_13_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_14_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_16_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_17_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_18_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_19_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_20_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_21_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_22_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_23_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_25_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_26_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_27_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_28_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_29_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_2_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_30_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_31_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_32_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_33_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_34_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_35_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_36_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_37_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_38_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_39_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_3_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_40_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_41_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_42_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_43_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_44_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_45_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_46_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_47_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_48_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_49_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_50_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_51_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_52_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_53_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_7_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_8_n_0\ : STD_LOGIC;
  signal \mem_in_b[6]_i_9_n_0\ : STD_LOGIC;
  signal \mem_in_b[7]_i_11_n_0\ : STD_LOGIC;
  signal \mem_in_b[7]_i_12_n_0\ : STD_LOGIC;
  signal \mem_in_b[7]_i_13_n_0\ : STD_LOGIC;
  signal \mem_in_b[7]_i_14_n_0\ : STD_LOGIC;
  signal \mem_in_b[7]_i_15_n_0\ : STD_LOGIC;
  signal \mem_in_b[7]_i_16_n_0\ : STD_LOGIC;
  signal \mem_in_b[7]_i_17_n_0\ : STD_LOGIC;
  signal \mem_in_b[7]_i_18_n_0\ : STD_LOGIC;
  signal \mem_in_b[7]_i_19_n_0\ : STD_LOGIC;
  signal \mem_in_b[7]_i_20_n_0\ : STD_LOGIC;
  signal \mem_in_b[7]_i_22_n_0\ : STD_LOGIC;
  signal \mem_in_b[7]_i_23_n_0\ : STD_LOGIC;
  signal \mem_in_b[7]_i_24_n_0\ : STD_LOGIC;
  signal \mem_in_b[7]_i_25_n_0\ : STD_LOGIC;
  signal \mem_in_b[7]_i_3_n_0\ : STD_LOGIC;
  signal \mem_in_b[7]_i_4_n_0\ : STD_LOGIC;
  signal \mem_in_b[7]_i_5_n_0\ : STD_LOGIC;
  signal \mem_in_b[7]_i_7_n_0\ : STD_LOGIC;
  signal \mem_in_b[7]_i_9_n_0\ : STD_LOGIC;
  signal \mem_in_b_reg[0]_i_36_n_0\ : STD_LOGIC;
  signal \mem_in_b_reg[0]_i_38_n_0\ : STD_LOGIC;
  signal \mem_in_b_reg[0]_i_9_n_0\ : STD_LOGIC;
  signal \mem_in_b_reg[1]_i_4_n_7\ : STD_LOGIC;
  signal \mem_in_b_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \mem_in_b_reg[1]_i_5_n_4\ : STD_LOGIC;
  signal \mem_in_b_reg[1]_i_5_n_5\ : STD_LOGIC;
  signal \mem_in_b_reg[1]_i_5_n_6\ : STD_LOGIC;
  signal \mem_in_b_reg[1]_i_5_n_7\ : STD_LOGIC;
  signal \mem_in_b_reg[1]_i_8_n_0\ : STD_LOGIC;
  signal \mem_in_b_reg[1]_i_8_n_4\ : STD_LOGIC;
  signal \mem_in_b_reg[1]_i_8_n_5\ : STD_LOGIC;
  signal \mem_in_b_reg[1]_i_8_n_6\ : STD_LOGIC;
  signal \mem_in_b_reg[2]_i_16_n_0\ : STD_LOGIC;
  signal \mem_in_b_reg[2]_i_16_n_4\ : STD_LOGIC;
  signal \mem_in_b_reg[2]_i_16_n_5\ : STD_LOGIC;
  signal \mem_in_b_reg[2]_i_16_n_6\ : STD_LOGIC;
  signal \mem_in_b_reg[2]_i_4_n_7\ : STD_LOGIC;
  signal \mem_in_b_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \mem_in_b_reg[2]_i_5_n_4\ : STD_LOGIC;
  signal \mem_in_b_reg[2]_i_5_n_5\ : STD_LOGIC;
  signal \mem_in_b_reg[2]_i_5_n_6\ : STD_LOGIC;
  signal \mem_in_b_reg[2]_i_5_n_7\ : STD_LOGIC;
  signal \mem_in_b_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \mem_in_b_reg[2]_i_6_n_4\ : STD_LOGIC;
  signal \mem_in_b_reg[2]_i_6_n_5\ : STD_LOGIC;
  signal \mem_in_b_reg[2]_i_6_n_6\ : STD_LOGIC;
  signal \mem_in_b_reg[2]_i_6_n_7\ : STD_LOGIC;
  signal \mem_in_b_reg[3]_i_18_n_0\ : STD_LOGIC;
  signal \mem_in_b_reg[3]_i_18_n_4\ : STD_LOGIC;
  signal \mem_in_b_reg[3]_i_18_n_5\ : STD_LOGIC;
  signal \mem_in_b_reg[3]_i_18_n_6\ : STD_LOGIC;
  signal \mem_in_b_reg[3]_i_4_n_7\ : STD_LOGIC;
  signal \mem_in_b_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \mem_in_b_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \mem_in_b_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \mem_in_b_reg[3]_i_7_n_4\ : STD_LOGIC;
  signal \mem_in_b_reg[3]_i_7_n_5\ : STD_LOGIC;
  signal \mem_in_b_reg[3]_i_7_n_6\ : STD_LOGIC;
  signal \mem_in_b_reg[3]_i_7_n_7\ : STD_LOGIC;
  signal \mem_in_b_reg[4]_i_4_n_7\ : STD_LOGIC;
  signal \mem_in_b_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \mem_in_b_reg[4]_i_5_n_4\ : STD_LOGIC;
  signal \mem_in_b_reg[4]_i_5_n_5\ : STD_LOGIC;
  signal \mem_in_b_reg[4]_i_5_n_6\ : STD_LOGIC;
  signal \mem_in_b_reg[4]_i_5_n_7\ : STD_LOGIC;
  signal \mem_in_b_reg[4]_i_8_n_0\ : STD_LOGIC;
  signal \mem_in_b_reg[4]_i_8_n_4\ : STD_LOGIC;
  signal \mem_in_b_reg[4]_i_8_n_5\ : STD_LOGIC;
  signal \mem_in_b_reg[4]_i_8_n_6\ : STD_LOGIC;
  signal \mem_in_b_reg[5]_i_4_n_7\ : STD_LOGIC;
  signal \mem_in_b_reg[5]_i_5_n_0\ : STD_LOGIC;
  signal \mem_in_b_reg[5]_i_5_n_4\ : STD_LOGIC;
  signal \mem_in_b_reg[5]_i_5_n_5\ : STD_LOGIC;
  signal \mem_in_b_reg[5]_i_5_n_6\ : STD_LOGIC;
  signal \mem_in_b_reg[5]_i_5_n_7\ : STD_LOGIC;
  signal \mem_in_b_reg[5]_i_8_n_0\ : STD_LOGIC;
  signal \mem_in_b_reg[5]_i_8_n_4\ : STD_LOGIC;
  signal \mem_in_b_reg[5]_i_8_n_5\ : STD_LOGIC;
  signal \mem_in_b_reg[5]_i_8_n_6\ : STD_LOGIC;
  signal \mem_in_b_reg[6]_i_10_n_4\ : STD_LOGIC;
  signal \mem_in_b_reg[6]_i_10_n_5\ : STD_LOGIC;
  signal \mem_in_b_reg[6]_i_10_n_6\ : STD_LOGIC;
  signal \mem_in_b_reg[6]_i_10_n_7\ : STD_LOGIC;
  signal \mem_in_b_reg[6]_i_15_n_0\ : STD_LOGIC;
  signal \mem_in_b_reg[6]_i_15_n_4\ : STD_LOGIC;
  signal \mem_in_b_reg[6]_i_15_n_5\ : STD_LOGIC;
  signal \mem_in_b_reg[6]_i_15_n_6\ : STD_LOGIC;
  signal \mem_in_b_reg[6]_i_15_n_7\ : STD_LOGIC;
  signal \mem_in_b_reg[6]_i_24_n_0\ : STD_LOGIC;
  signal \mem_in_b_reg[6]_i_24_n_4\ : STD_LOGIC;
  signal \mem_in_b_reg[6]_i_24_n_5\ : STD_LOGIC;
  signal \mem_in_b_reg[6]_i_24_n_6\ : STD_LOGIC;
  signal \mem_in_b_reg[6]_i_24_n_7\ : STD_LOGIC;
  signal \mem_in_b_reg[6]_i_5_n_0\ : STD_LOGIC;
  signal \mem_in_b_reg[6]_i_5_n_4\ : STD_LOGIC;
  signal \mem_in_b_reg[6]_i_5_n_5\ : STD_LOGIC;
  signal \mem_in_b_reg[6]_i_5_n_6\ : STD_LOGIC;
  signal \mem_in_b_reg[6]_i_5_n_7\ : STD_LOGIC;
  signal \mem_in_b_reg[6]_i_6_n_0\ : STD_LOGIC;
  signal \mem_in_b_reg[6]_i_6_n_4\ : STD_LOGIC;
  signal \mem_in_b_reg[6]_i_6_n_5\ : STD_LOGIC;
  signal \mem_in_b_reg[6]_i_6_n_6\ : STD_LOGIC;
  signal \mem_in_b_reg[6]_i_6_n_7\ : STD_LOGIC;
  signal \mem_in_b_reg[7]_i_21_n_7\ : STD_LOGIC;
  signal \mem_in_b_reg[7]_i_6_n_7\ : STD_LOGIC;
  signal mem_in_op : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ns : STD_LOGIC;
  signal pc_inst_n_0 : STD_LOGIC;
  signal pc_inst_n_10 : STD_LOGIC;
  signal pc_inst_n_11 : STD_LOGIC;
  signal pc_inst_n_12 : STD_LOGIC;
  signal pc_inst_n_13 : STD_LOGIC;
  signal pc_inst_n_8 : STD_LOGIC;
  signal pc_inst_n_9 : STD_LOGIC;
  signal pc_leds_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal reg_w_a : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal reg_w_a0 : STD_LOGIC;
  signal reg_w_c : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \reg_w_c[0]_i_1_n_0\ : STD_LOGIC;
  signal \reg_w_c[1]_i_1_n_0\ : STD_LOGIC;
  signal \reg_w_c[2]_i_1_n_0\ : STD_LOGIC;
  signal \reg_w_c[3]_i_1_n_0\ : STD_LOGIC;
  signal \reg_w_c[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg_w_c[5]_i_1_n_0\ : STD_LOGIC;
  signal \reg_w_c[6]_i_1_n_0\ : STD_LOGIC;
  signal \reg_w_c[7]_i_1_n_0\ : STD_LOGIC;
  signal \reg_w_c[7]_i_2_n_0\ : STD_LOGIC;
  signal reg_w_op : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal register_a : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP of register_a : signal is "true";
  signal register_b : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP of register_b : signal is "true";
  signal register_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP of register_data : signal is "true";
  signal reset_sync : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of reset_sync : signal is "true";
  signal reset_sync_i_1_n_0 : STD_LOGIC;
  signal rom_fetched : STD_LOGIC_VECTOR ( 27 downto 0 );
  attribute RTL_KEEP of rom_fetched : signal is "true";
  signal \rom_fetched[0]_i_1_n_0\ : STD_LOGIC;
  signal \rom_fetched[10]_i_1_n_0\ : STD_LOGIC;
  signal \rom_fetched[16]_i_1_n_0\ : STD_LOGIC;
  signal \rom_fetched[17]_i_1_n_0\ : STD_LOGIC;
  signal \rom_fetched[24]_i_1_n_0\ : STD_LOGIC;
  signal \rom_fetched[25]_i_1_n_0\ : STD_LOGIC;
  signal \rom_fetched[26]_i_1_n_0\ : STD_LOGIC;
  signal \rom_fetched[27]_i_1_n_0\ : STD_LOGIC;
  signal \rom_fetched[31]_i_12_n_0\ : STD_LOGIC;
  signal \rom_fetched[31]_i_14_n_0\ : STD_LOGIC;
  signal \rom_fetched[31]_i_20_n_0\ : STD_LOGIC;
  signal \rom_fetched[31]_i_22_n_0\ : STD_LOGIC;
  signal \rom_fetched[31]_i_3_n_0\ : STD_LOGIC;
  signal \rom_fetched[31]_i_4_n_0\ : STD_LOGIC;
  signal \rom_fetched[31]_i_5_n_0\ : STD_LOGIC;
  signal \rom_fetched[31]_i_7_n_0\ : STD_LOGIC;
  signal \rom_fetched[31]_i_9_n_0\ : STD_LOGIC;
  signal \rom_fetched[8]_i_1_n_0\ : STD_LOGIC;
  signal \rom_fetched[9]_i_1_n_0\ : STD_LOGIC;
  signal rom_output : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute RTL_KEEP of rom_output : signal is "true";
  signal rom_stall_fetched : STD_LOGIC_VECTOR ( 27 downto 0 );
  attribute RTL_KEEP of rom_stall_fetched : signal is "true";
  signal rom_stall_fetched_reg0 : STD_LOGIC;
  signal rst_IBUF : STD_LOGIC;
  signal seg_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal stall_pipeline : STD_LOGIC;
  attribute RTL_KEEP of stall_pipeline : signal is "true";
  signal stall_pipeline_delayed : STD_LOGIC;
  attribute RTL_KEEP of stall_pipeline_delayed : signal is "true";
  signal stall_pipeline_delayed_i_1_n_0 : STD_LOGIC;
  signal stall_pipeline_i_101_n_0 : STD_LOGIC;
  signal stall_pipeline_i_103_n_0 : STD_LOGIC;
  signal stall_pipeline_i_105_n_0 : STD_LOGIC;
  signal stall_pipeline_i_107_n_0 : STD_LOGIC;
  signal stall_pipeline_i_109_n_0 : STD_LOGIC;
  signal stall_pipeline_i_10_n_0 : STD_LOGIC;
  signal stall_pipeline_i_111_n_0 : STD_LOGIC;
  signal stall_pipeline_i_113_n_0 : STD_LOGIC;
  signal stall_pipeline_i_115_n_0 : STD_LOGIC;
  signal stall_pipeline_i_117_n_0 : STD_LOGIC;
  signal stall_pipeline_i_119_n_0 : STD_LOGIC;
  signal stall_pipeline_i_11_n_0 : STD_LOGIC;
  signal stall_pipeline_i_121_n_0 : STD_LOGIC;
  signal stall_pipeline_i_123_n_0 : STD_LOGIC;
  signal stall_pipeline_i_124_n_0 : STD_LOGIC;
  signal stall_pipeline_i_126_n_0 : STD_LOGIC;
  signal stall_pipeline_i_128_n_0 : STD_LOGIC;
  signal stall_pipeline_i_12_n_0 : STD_LOGIC;
  signal stall_pipeline_i_16_n_0 : STD_LOGIC;
  signal stall_pipeline_i_17_n_0 : STD_LOGIC;
  signal stall_pipeline_i_18_n_0 : STD_LOGIC;
  signal stall_pipeline_i_19_n_0 : STD_LOGIC;
  signal stall_pipeline_i_20_n_0 : STD_LOGIC;
  signal stall_pipeline_i_22_n_0 : STD_LOGIC;
  signal stall_pipeline_i_29_n_0 : STD_LOGIC;
  signal stall_pipeline_i_2_n_0 : STD_LOGIC;
  signal stall_pipeline_i_3_n_0 : STD_LOGIC;
  signal stall_pipeline_i_48_n_0 : STD_LOGIC;
  signal stall_pipeline_i_4_n_0 : STD_LOGIC;
  signal stall_pipeline_i_50_n_0 : STD_LOGIC;
  signal stall_pipeline_i_52_n_0 : STD_LOGIC;
  signal stall_pipeline_i_55_n_0 : STD_LOGIC;
  signal stall_pipeline_i_58_n_0 : STD_LOGIC;
  signal stall_pipeline_i_5_n_0 : STD_LOGIC;
  signal stall_pipeline_i_63_n_0 : STD_LOGIC;
  signal stall_pipeline_i_64_n_0 : STD_LOGIC;
  signal stall_pipeline_i_66_n_0 : STD_LOGIC;
  signal stall_pipeline_i_68_n_0 : STD_LOGIC;
  signal stall_pipeline_i_6_n_0 : STD_LOGIC;
  signal stall_pipeline_i_70_n_0 : STD_LOGIC;
  signal stall_pipeline_i_72_n_0 : STD_LOGIC;
  signal stall_pipeline_i_74_n_0 : STD_LOGIC;
  signal stall_pipeline_i_79_n_0 : STD_LOGIC;
  signal stall_pipeline_i_7_n_0 : STD_LOGIC;
  signal stall_pipeline_i_81_n_0 : STD_LOGIC;
  signal stall_pipeline_i_83_n_0 : STD_LOGIC;
  signal stall_pipeline_i_85_n_0 : STD_LOGIC;
  signal stall_pipeline_i_87_n_0 : STD_LOGIC;
  signal stall_pipeline_i_89_n_0 : STD_LOGIC;
  signal stall_pipeline_i_8_n_0 : STD_LOGIC;
  signal stall_pipeline_i_91_n_0 : STD_LOGIC;
  signal stall_pipeline_i_93_n_0 : STD_LOGIC;
  signal stall_pipeline_i_95_n_0 : STD_LOGIC;
  signal stall_pipeline_i_97_n_0 : STD_LOGIC;
  signal stall_pipeline_i_99_n_0 : STD_LOGIC;
  signal stall_pipeline_i_9_n_0 : STD_LOGIC;
  signal \NLW_mem_in_b_reg[0]_i_31_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_mem_in_b_reg[0]_i_31_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mem_in_b_reg[0]_i_36_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mem_in_b_reg[0]_i_36_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mem_in_b_reg[0]_i_38_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mem_in_b_reg[0]_i_38_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mem_in_b_reg[0]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mem_in_b_reg[0]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mem_in_b_reg[0]_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mem_in_b_reg[0]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mem_in_b_reg[1]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mem_in_b_reg[1]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_mem_in_b_reg[1]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mem_in_b_reg[1]_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mem_in_b_reg[1]_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_mem_in_b_reg[2]_i_16_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mem_in_b_reg[2]_i_16_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_mem_in_b_reg[2]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mem_in_b_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_mem_in_b_reg[2]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mem_in_b_reg[2]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mem_in_b_reg[3]_i_18_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mem_in_b_reg[3]_i_18_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_mem_in_b_reg[3]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mem_in_b_reg[3]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_mem_in_b_reg[3]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mem_in_b_reg[3]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mem_in_b_reg[3]_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mem_in_b_reg[4]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mem_in_b_reg[4]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_mem_in_b_reg[4]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mem_in_b_reg[4]_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mem_in_b_reg[4]_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_mem_in_b_reg[5]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mem_in_b_reg[5]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_mem_in_b_reg[5]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mem_in_b_reg[5]_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mem_in_b_reg[5]_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_mem_in_b_reg[6]_i_10_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mem_in_b_reg[6]_i_15_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mem_in_b_reg[6]_i_24_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mem_in_b_reg[6]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_mem_in_b_reg[6]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mem_in_b_reg[6]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mem_in_b_reg[6]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mem_in_b_reg[7]_i_10_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mem_in_b_reg[7]_i_21_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mem_in_b_reg[7]_i_21_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_mem_in_b_reg[7]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mem_in_b_reg[7]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_mem_in_b_reg[7]_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_inst_clk_led_OBUF_BUFG_UNCONNECTED : STD_LOGIC;
  signal \NLW_ram_inst_dout_reg[0]_0_UNCONNECTED\ : STD_LOGIC;
  signal NLW_ram_inst_mem_base_pointer_way_UNCONNECTED : STD_LOGIC;
  signal \NLW_ram_inst_regs_reg[14][0]_0_UNCONNECTED\ : STD_LOGIC;
  signal NLW_ram_inst_D_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_ram_inst_E_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_ram_inst_base_pointer_reg[7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_ram_inst_regs_reg[170][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_ram_inst_regs_reg[254][7]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_ram_inst_regs_reg[255][0]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_registers_inst_reg_w_op_reg[4]_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_registers_inst_reg_w_op_reg[4]_0_UNCONNECTED\ : STD_LOGIC;
  signal NLW_registers_inst_Q_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_registers_inst_di_in_b_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_registers_inst_di_in_c_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_registers_inst_regs_reg[0][0]_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_seven_seg_inst_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_seven_seg_inst_seg_OBUF[0]_inst_i_1_0_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of GND_1 : label is "PROPCONST";
  attribute KEEP : string;
  attribute KEEP of \di_in_op_reg[0]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \di_in_op_reg[0]\ : label is "no";
  attribute KEEP of \di_in_op_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \di_in_op_reg[1]\ : label is "no";
  attribute KEEP of \di_in_op_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \di_in_op_reg[2]\ : label is "no";
  attribute KEEP of \di_in_op_reg[3]\ : label is "yes";
  attribute equivalent_register_removal of \di_in_op_reg[3]\ : label is "no";
  attribute OPT_MODIFIED of \ex_in_b[0]_i_2\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \ex_in_b[1]_i_2\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \ex_in_b[2]_i_2\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \ex_in_b[3]_i_1\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \ex_in_b[3]_i_2\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \ex_in_b[4]_i_1\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \ex_in_b[4]_i_2\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \ex_in_b[5]_i_2\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \ex_in_b[6]_i_1\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \ex_in_b[6]_i_2\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \ex_in_b[6]_i_3\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \ex_in_b[6]_i_4\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \ex_in_b[6]_i_5\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \ex_in_b[7]_i_3\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \ex_in_b[7]_i_4\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \ex_in_b_reg[0]\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \ex_in_b_reg[1]\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \ex_in_b_reg[2]\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \ex_in_b_reg[3]\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \ex_in_b_reg[4]\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \ex_in_b_reg[5]\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \ex_in_b_reg[6]\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \ex_in_b_reg[7]\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \leds[7]_i_1\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \mem_in_b[0]_i_1\ : label is "PROPCONST";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mem_in_b[0]_i_10\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \mem_in_b[0]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \mem_in_b[0]_i_33\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \mem_in_b[0]_i_34\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \mem_in_b[0]_i_35\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \mem_in_b[0]_i_8\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \mem_in_b[2]_i_21\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \mem_in_b[6]_i_39\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \mem_in_b[6]_i_40\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \mem_in_b[6]_i_50\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \mem_in_b[6]_i_51\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \mem_in_b[6]_i_52\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \mem_in_b[6]_i_53\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \mem_in_b[7]_i_22\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \mem_in_b[7]_i_24\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \mem_in_b[7]_i_7\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \mem_in_b[7]_i_9\ : label is "soft_lutpair24";
  attribute OPT_MODIFIED of \mem_in_b_reg[0]\ : label is "PROPCONST";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \mem_in_b_reg[0]\ : label is "mem_in_b_reg[0]";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \mem_in_b_reg[0]_i_5\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \mem_in_b_reg[0]_i_7\ : label is 11;
  attribute OPT_MODIFIED of \mem_in_b_reg[1]\ : label is "PROPCONST";
  attribute ORIG_CELL_NAME of \mem_in_b_reg[1]\ : label is "mem_in_b_reg[1]";
  attribute OPT_MODIFIED of \mem_in_b_reg[2]\ : label is "PROPCONST";
  attribute ORIG_CELL_NAME of \mem_in_b_reg[2]\ : label is "mem_in_b_reg[2]";
  attribute OPT_MODIFIED of \mem_in_b_reg[2]_i_5\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \mem_in_b_reg[3]\ : label is "PROPCONST";
  attribute ORIG_CELL_NAME of \mem_in_b_reg[3]\ : label is "mem_in_b_reg[3]";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \mem_in_b_reg[3]_i_5\ : label is 35;
  attribute ADDER_THRESHOLD of \mem_in_b_reg[3]_i_6\ : label is 35;
  attribute OPT_MODIFIED of \mem_in_b_reg[4]\ : label is "PROPCONST";
  attribute ORIG_CELL_NAME of \mem_in_b_reg[4]\ : label is "mem_in_b_reg[4]";
  attribute OPT_MODIFIED of \mem_in_b_reg[5]\ : label is "PROPCONST";
  attribute ORIG_CELL_NAME of \mem_in_b_reg[5]\ : label is "mem_in_b_reg[5]";
  attribute OPT_MODIFIED of \mem_in_b_reg[6]\ : label is "PROPCONST";
  attribute ORIG_CELL_NAME of \mem_in_b_reg[6]\ : label is "mem_in_b_reg[6]";
  attribute OPT_MODIFIED of \mem_in_b_reg[6]_i_24\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \mem_in_b_reg[7]\ : label is "PROPCONST";
  attribute ORIG_CELL_NAME of \mem_in_b_reg[7]\ : label is "mem_in_b_reg[7]";
  attribute ADDER_THRESHOLD of \mem_in_b_reg[7]_i_10\ : label is 35;
  attribute ADDER_THRESHOLD of \mem_in_b_reg[7]_i_8\ : label is 35;
  attribute OPT_MODIFIED of \reg_w_a[7]_i_2\ : label is "RETARGET PROPCONST";
  attribute OPT_MODIFIED of \reg_w_c[0]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \reg_w_c[1]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \reg_w_c[2]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \reg_w_c[3]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \reg_w_c[4]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \reg_w_c[5]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \reg_w_c[6]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \reg_w_c[7]_i_1\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \reg_w_c[7]_i_2\ : label is "RETARGET";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of reset_sync_reg : label is std.standard.true;
  attribute KEEP of reset_sync_reg : label is "yes";
  attribute OPT_MODIFIED of \rom_fetched[17]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \rom_fetched[24]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \rom_fetched[25]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \rom_fetched[27]_i_1\ : label is "RETARGET";
  attribute OPT_MODIFIED of \rom_fetched[31]_i_12\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \rom_fetched[31]_i_14\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \rom_fetched[31]_i_20\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \rom_fetched[31]_i_22\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \rom_fetched[31]_i_3\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \rom_fetched[31]_i_4\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \rom_fetched[31]_i_5\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \rom_fetched[31]_i_7\ : label is "PROPCONST";
  attribute OPT_MODIFIED of \rom_fetched[31]_i_9\ : label is "PROPCONST";
  attribute KEEP of \rom_fetched_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \rom_fetched_reg[0]\ : label is "no";
  attribute KEEP of \rom_fetched_reg[10]\ : label is "yes";
  attribute equivalent_register_removal of \rom_fetched_reg[10]\ : label is "no";
  attribute KEEP of \rom_fetched_reg[16]\ : label is "yes";
  attribute equivalent_register_removal of \rom_fetched_reg[16]\ : label is "no";
  attribute KEEP of \rom_fetched_reg[17]\ : label is "yes";
  attribute equivalent_register_removal of \rom_fetched_reg[17]\ : label is "no";
  attribute KEEP of \rom_fetched_reg[24]\ : label is "yes";
  attribute equivalent_register_removal of \rom_fetched_reg[24]\ : label is "no";
  attribute KEEP of \rom_fetched_reg[25]\ : label is "yes";
  attribute equivalent_register_removal of \rom_fetched_reg[25]\ : label is "no";
  attribute KEEP of \rom_fetched_reg[26]\ : label is "yes";
  attribute equivalent_register_removal of \rom_fetched_reg[26]\ : label is "no";
  attribute KEEP of \rom_fetched_reg[27]\ : label is "yes";
  attribute equivalent_register_removal of \rom_fetched_reg[27]\ : label is "no";
  attribute KEEP of \rom_fetched_reg[8]\ : label is "yes";
  attribute equivalent_register_removal of \rom_fetched_reg[8]\ : label is "no";
  attribute KEEP of \rom_fetched_reg[9]\ : label is "yes";
  attribute equivalent_register_removal of \rom_fetched_reg[9]\ : label is "no";
  attribute KEEP of \rom_stall_fetched_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \rom_stall_fetched_reg[0]\ : label is "no";
  attribute KEEP of \rom_stall_fetched_reg[10]\ : label is "yes";
  attribute equivalent_register_removal of \rom_stall_fetched_reg[10]\ : label is "no";
  attribute KEEP of \rom_stall_fetched_reg[16]\ : label is "yes";
  attribute equivalent_register_removal of \rom_stall_fetched_reg[16]\ : label is "no";
  attribute KEEP of \rom_stall_fetched_reg[17]\ : label is "yes";
  attribute OPT_MODIFIED of \rom_stall_fetched_reg[17]\ : label is "RETARGET";
  attribute equivalent_register_removal of \rom_stall_fetched_reg[17]\ : label is "no";
  attribute KEEP of \rom_stall_fetched_reg[24]\ : label is "yes";
  attribute OPT_MODIFIED of \rom_stall_fetched_reg[24]\ : label is "RETARGET";
  attribute equivalent_register_removal of \rom_stall_fetched_reg[24]\ : label is "no";
  attribute KEEP of \rom_stall_fetched_reg[25]\ : label is "yes";
  attribute OPT_MODIFIED of \rom_stall_fetched_reg[25]\ : label is "RETARGET";
  attribute equivalent_register_removal of \rom_stall_fetched_reg[25]\ : label is "no";
  attribute KEEP of \rom_stall_fetched_reg[26]\ : label is "yes";
  attribute equivalent_register_removal of \rom_stall_fetched_reg[26]\ : label is "no";
  attribute KEEP of \rom_stall_fetched_reg[27]\ : label is "yes";
  attribute OPT_MODIFIED of \rom_stall_fetched_reg[27]\ : label is "RETARGET";
  attribute equivalent_register_removal of \rom_stall_fetched_reg[27]\ : label is "no";
  attribute KEEP of \rom_stall_fetched_reg[8]\ : label is "yes";
  attribute equivalent_register_removal of \rom_stall_fetched_reg[8]\ : label is "no";
  attribute KEEP of \rom_stall_fetched_reg[9]\ : label is "yes";
  attribute equivalent_register_removal of \rom_stall_fetched_reg[9]\ : label is "no";
  attribute KEEP of stall_pipeline_delayed_reg : label is "yes";
  attribute equivalent_register_removal of stall_pipeline_delayed_reg : label is "no";
  attribute OPT_MODIFIED of stall_pipeline_i_10 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_101 : label is "RETARGET PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_103 : label is "RETARGET PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_105 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_107 : label is "RETARGET PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_109 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_11 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_111 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_113 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_115 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_117 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_119 : label is "RETARGET PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_12 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_121 : label is "RETARGET PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_123 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_124 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_126 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_128 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_16 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_17 : label is "PROPCONST";
  attribute SOFT_HLUTNM of stall_pipeline_i_17 : label is "soft_lutpair21";
  attribute OPT_MODIFIED of stall_pipeline_i_18 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_19 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_20 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_22 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_29 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_3 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_4 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_48 : label is "RETARGET PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_5 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_50 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_52 : label is "RETARGET PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_55 : label is "PROPCONST";
  attribute SOFT_HLUTNM of stall_pipeline_i_58 : label is "soft_lutpair25";
  attribute OPT_MODIFIED of stall_pipeline_i_6 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_63 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_64 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_66 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_68 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_7 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_70 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_72 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_74 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_79 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_8 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_81 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_83 : label is "RETARGET PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_85 : label is "RETARGET PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_87 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_89 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_9 : label is "PROPCONST";
  attribute SOFT_HLUTNM of stall_pipeline_i_9 : label is "soft_lutpair21";
  attribute OPT_MODIFIED of stall_pipeline_i_91 : label is "RETARGET PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_93 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_95 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_97 : label is "PROPCONST";
  attribute OPT_MODIFIED of stall_pipeline_i_99 : label is "PROPCONST";
  attribute KEEP of stall_pipeline_reg : label is "yes";
  attribute equivalent_register_removal of stall_pipeline_reg : label is "no";
begin
GND_1: unisim.vcomponents.GND
     port map (
      G => rom_stall_fetched(7)
    );
\an_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => an_OBUF(0),
      O => an(0)
    );
\an_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => an_OBUF(1),
      O => an(1)
    );
\an_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => an_OBUF(2),
      O => an(2)
    );
\an_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => an_OBUF(3),
      O => an(3)
    );
clk_div_inst: entity work.clock_divider
     port map (
      clk_external_IBUF_BUFG => clk_external_IBUF_BUFG,
      clk_led_OBUF => clk_led_OBUF
    );
clk_external_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_external_IBUF,
      O => clk_external_IBUF_BUFG
    );
clk_external_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk_external,
      O => clk_external_IBUF
    );
clk_led_OBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_led_OBUF,
      O => clk_led_OBUF_BUFG
    );
clk_led_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => clk_led_OBUF_BUFG,
      O => clk_led
    );
\di_in_a[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBABABA"
    )
        port map (
      I0 => \rom_fetched[31]_i_3_n_0\,
      I1 => \rom_fetched[31]_i_4_n_0\,
      I2 => \rom_fetched[31]_i_5_n_0\,
      I3 => stall_pipeline_delayed,
      I4 => stall_pipeline,
      O => \di_in_a[7]_i_1_n_0\
    );
\di_in_a_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => rom_fetched(16),
      Q => \di_in_a_reg_n_0_[0]\,
      R => \di_in_a[7]_i_1_n_0\
    );
\di_in_a_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => rom_fetched(17),
      Q => \di_in_a_reg_n_0_[1]\,
      R => \di_in_a[7]_i_1_n_0\
    );
\di_in_b_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => rom_fetched(8),
      Q => di_in_b(0),
      R => \di_in_a[7]_i_1_n_0\
    );
\di_in_b_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => rom_fetched(9),
      Q => di_in_b(1),
      R => \di_in_a[7]_i_1_n_0\
    );
\di_in_b_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => rom_fetched(10),
      Q => di_in_b(2),
      R => \di_in_a[7]_i_1_n_0\
    );
\di_in_c_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => rom_fetched(0),
      Q => di_in_c(0),
      R => \di_in_a[7]_i_1_n_0\
    );
\di_in_op_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => rom_fetched(24),
      Q => di_in_op(0),
      R => \di_in_a[7]_i_1_n_0\
    );
\di_in_op_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => rom_fetched(25),
      Q => di_in_op(1),
      R => \di_in_a[7]_i_1_n_0\
    );
\di_in_op_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => rom_fetched(26),
      Q => di_in_op(2),
      R => \di_in_a[7]_i_1_n_0\
    );
\di_in_op_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => rom_fetched(27),
      Q => di_in_op(3),
      R => \di_in_a[7]_i_1_n_0\
    );
\ex_in_a_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => \di_in_a_reg_n_0_[0]\,
      Q => ex_in_a(0),
      R => '0'
    );
\ex_in_a_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => \di_in_a_reg_n_0_[1]\,
      Q => ex_in_a(1),
      R => '0'
    );
\ex_in_b[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEEFFEEEE"
    )
        port map (
      I0 => \ex_in_b[0]_i_2_n_0\,
      I1 => di_in_b(0),
      I2 => \ex_in_b[6]_i_3_n_0\,
      I3 => \ex_in_b[6]_i_4_n_0\,
      I4 => register_a(0),
      I5 => \ex_in_b[6]_i_5_n_0\,
      O => \ex_in_b[0]_i_1_n_0\
    );
\ex_in_b[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04444440"
    )
        port map (
      I0 => di_in_op(1),
      I1 => register_a(0),
      I2 => di_in_op(0),
      I3 => di_in_op(2),
      I4 => di_in_op(3),
      O => \ex_in_b[0]_i_2_n_0\
    );
\ex_in_b[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEEFFEEEE"
    )
        port map (
      I0 => \ex_in_b[1]_i_2_n_0\,
      I1 => di_in_b(1),
      I2 => \ex_in_b[6]_i_3_n_0\,
      I3 => \ex_in_b[6]_i_4_n_0\,
      I4 => register_a(1),
      I5 => \ex_in_b[6]_i_5_n_0\,
      O => \ex_in_b[1]_i_1_n_0\
    );
\ex_in_b[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04444440"
    )
        port map (
      I0 => di_in_op(1),
      I1 => register_a(1),
      I2 => di_in_op(0),
      I3 => di_in_op(2),
      I4 => di_in_op(3),
      O => \ex_in_b[1]_i_2_n_0\
    );
\ex_in_b[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEEFFEEEE"
    )
        port map (
      I0 => \ex_in_b[2]_i_2_n_0\,
      I1 => di_in_b(2),
      I2 => \ex_in_b[6]_i_3_n_0\,
      I3 => \ex_in_b[6]_i_4_n_0\,
      I4 => register_a(2),
      I5 => \ex_in_b[6]_i_5_n_0\,
      O => \ex_in_b[2]_i_1_n_0\
    );
\ex_in_b[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04444440"
    )
        port map (
      I0 => di_in_op(1),
      I1 => register_a(2),
      I2 => di_in_op(0),
      I3 => di_in_op(2),
      I4 => di_in_op(3),
      O => \ex_in_b[2]_i_2_n_0\
    );
\ex_in_b[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \ex_in_b[3]_i_2_n_0\,
      I1 => \ex_in_b[6]_i_4_n_0\,
      I2 => register_a(3),
      O => \ex_in_b[3]_i_1_n_0\
    );
\ex_in_b[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04444440"
    )
        port map (
      I0 => di_in_op(1),
      I1 => register_a(3),
      I2 => di_in_op(0),
      I3 => di_in_op(2),
      I4 => di_in_op(3),
      O => \ex_in_b[3]_i_2_n_0\
    );
\ex_in_b[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \ex_in_b[4]_i_2_n_0\,
      I1 => \ex_in_b[6]_i_4_n_0\,
      I2 => register_a(4),
      O => \ex_in_b[4]_i_1_n_0\
    );
\ex_in_b[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04444440"
    )
        port map (
      I0 => di_in_op(1),
      I1 => register_a(4),
      I2 => di_in_op(0),
      I3 => di_in_op(2),
      I4 => di_in_op(3),
      O => \ex_in_b[4]_i_2_n_0\
    );
\ex_in_b[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82AA22A8"
    )
        port map (
      I0 => register_a(5),
      I1 => di_in_op(1),
      I2 => di_in_op(0),
      I3 => di_in_op(2),
      I4 => di_in_op(3),
      O => \ex_in_b[5]_i_2_n_0\
    );
\ex_in_b[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \ex_in_b[6]_i_2_n_0\,
      I1 => \ex_in_b[6]_i_4_n_0\,
      I2 => register_a(6),
      O => \ex_in_b[6]_i_1_n_0\
    );
\ex_in_b[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04444440"
    )
        port map (
      I0 => di_in_op(1),
      I1 => register_a(6),
      I2 => di_in_op(0),
      I3 => di_in_op(2),
      I4 => di_in_op(3),
      O => \ex_in_b[6]_i_2_n_0\
    );
\ex_in_b[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => di_in_op(1),
      I1 => di_in_op(0),
      I2 => di_in_op(2),
      I3 => di_in_op(3),
      O => \ex_in_b[6]_i_3_n_0\
    );
\ex_in_b[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AFF"
    )
        port map (
      I0 => di_in_op(2),
      I1 => di_in_op(3),
      I2 => di_in_op(0),
      I3 => di_in_op(1),
      O => \ex_in_b[6]_i_4_n_0\
    );
\ex_in_b[6]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F777"
    )
        port map (
      I0 => di_in_op(1),
      I1 => di_in_op(2),
      I2 => di_in_op(3),
      I3 => di_in_op(0),
      O => \ex_in_b[6]_i_5_n_0\
    );
\ex_in_b[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7E00"
    )
        port map (
      I0 => di_in_op(3),
      I1 => di_in_op(2),
      I2 => di_in_op(0),
      I3 => register_a(7),
      O => \ex_in_b[7]_i_3_n_0\
    );
\ex_in_b[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A222"
    )
        port map (
      I0 => register_a(7),
      I1 => di_in_op(2),
      I2 => di_in_op(3),
      I3 => di_in_op(0),
      O => \ex_in_b[7]_i_4_n_0\
    );
\ex_in_b_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => \ex_in_b[0]_i_1_n_0\,
      Q => ex_in_b(0),
      R => rom_stall_fetched(7)
    );
\ex_in_b_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => \ex_in_b[1]_i_1_n_0\,
      Q => ex_in_b(1),
      R => rom_stall_fetched(7)
    );
\ex_in_b_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => \ex_in_b[2]_i_1_n_0\,
      Q => ex_in_b(2),
      R => rom_stall_fetched(7)
    );
\ex_in_b_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => \ex_in_b[3]_i_1_n_0\,
      Q => ex_in_b(3),
      R => rom_stall_fetched(7)
    );
\ex_in_b_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => \ex_in_b[4]_i_1_n_0\,
      Q => ex_in_b(4),
      R => rom_stall_fetched(7)
    );
\ex_in_b_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => \ex_in_b[5]_i_2_n_0\,
      Q => ex_in_b(5),
      R => rom_stall_fetched(7)
    );
\ex_in_b_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => \ex_in_b[6]_i_1_n_0\,
      Q => ex_in_b(6),
      R => rom_stall_fetched(7)
    );
\ex_in_b_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => \ex_in_b_reg[7]_i_2_n_0\,
      Q => ex_in_b(7),
      R => rom_stall_fetched(7)
    );
\ex_in_b_reg[7]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ex_in_b[7]_i_3_n_0\,
      I1 => \ex_in_b[7]_i_4_n_0\,
      O => \ex_in_b_reg[7]_i_2_n_0\,
      S => di_in_op(1)
    );
\ex_in_c_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => register_b(0),
      Q => ex_in_c(0),
      R => '0'
    );
\ex_in_c_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => register_b(1),
      Q => ex_in_c(1),
      R => '0'
    );
\ex_in_c_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => register_b(2),
      Q => ex_in_c(2),
      R => '0'
    );
\ex_in_c_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => register_b(3),
      Q => ex_in_c(3),
      R => '0'
    );
\ex_in_c_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => register_b(4),
      Q => ex_in_c(4),
      R => '0'
    );
\ex_in_c_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => register_b(5),
      Q => ex_in_c(5),
      R => '0'
    );
\ex_in_c_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => register_b(6),
      Q => ex_in_c(6),
      R => '0'
    );
\ex_in_c_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => register_b(7),
      Q => ex_in_c(7),
      R => '0'
    );
\ex_in_op_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => di_in_op(0),
      Q => ex_in_op(0),
      R => '0'
    );
\ex_in_op_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => di_in_op(1),
      Q => ex_in_op(1),
      R => '0'
    );
\ex_in_op_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => di_in_op(2),
      Q => ex_in_op(2),
      R => '0'
    );
\ex_in_op_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => di_in_op(3),
      Q => ex_in_op(3),
      R => '0'
    );
\leds[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => ex_in_op(0),
      I1 => ex_in_op(1),
      I2 => ex_in_op(2),
      I3 => ex_in_op(3),
      O => \leds[7]_i_1_n_0\
    );
\leds_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => leds_OBUF(0),
      O => leds(0)
    );
\leds_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => leds_OBUF(1),
      O => leds(1)
    );
\leds_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => leds_OBUF(2),
      O => leds(2)
    );
\leds_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => leds_OBUF(3),
      O => leds(3)
    );
\leds_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => leds_OBUF(4),
      O => leds(4)
    );
\leds_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => leds_OBUF(5),
      O => leds(5)
    );
\leds_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => leds_OBUF(6),
      O => leds(6)
    );
\leds_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => leds_OBUF(7),
      O => leds(7)
    );
\leds_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \leds[7]_i_1_n_0\,
      D => ex_in_b(0),
      Q => leds_OBUF(0),
      S => clear
    );
\leds_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \leds[7]_i_1_n_0\,
      D => ex_in_b(1),
      Q => leds_OBUF(1),
      S => clear
    );
\leds_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \leds[7]_i_1_n_0\,
      D => ex_in_b(2),
      Q => leds_OBUF(2),
      S => clear
    );
\leds_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \leds[7]_i_1_n_0\,
      D => ex_in_b(3),
      Q => leds_OBUF(3),
      S => clear
    );
\leds_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \leds[7]_i_1_n_0\,
      D => ex_in_b(4),
      Q => leds_OBUF(4),
      S => clear
    );
\leds_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \leds[7]_i_1_n_0\,
      D => ex_in_b(5),
      Q => leds_OBUF(5),
      S => clear
    );
\leds_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \leds[7]_i_1_n_0\,
      D => ex_in_b(6),
      Q => leds_OBUF(6),
      S => clear
    );
\leds_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \leds[7]_i_1_n_0\,
      D => ex_in_b(7),
      Q => leds_OBUF(7),
      S => clear
    );
\mem_in_a_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => ex_in_a(0),
      Q => mem_in_a(0),
      R => '0'
    );
\mem_in_a_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => ex_in_a(1),
      Q => mem_in_a(1),
      R => '0'
    );
\mem_in_b[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \mem_in_b[0]_i_3_n_0\,
      I1 => ex_in_b(0),
      I2 => \mem_in_b[0]_i_4_n_0\,
      O => \mem_in_b[0]_i_1_n_0\
    );
\mem_in_b[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE03"
    )
        port map (
      I0 => ex_in_op(3),
      I1 => ex_in_op(1),
      I2 => ex_in_op(0),
      I3 => ex_in_op(2),
      O => \mem_in_b[0]_i_10_n_0\
    );
\mem_in_b[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => ex_in_c(6),
      I1 => ex_in_b(6),
      I2 => ex_in_b(7),
      I3 => ex_in_c(7),
      O => \mem_in_b[0]_i_11_n_0\
    );
\mem_in_b[0]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => ex_in_c(4),
      I1 => ex_in_b(4),
      I2 => ex_in_b(5),
      I3 => ex_in_c(5),
      O => \mem_in_b[0]_i_12_n_0\
    );
\mem_in_b[0]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => ex_in_c(2),
      I1 => ex_in_b(2),
      I2 => ex_in_b(3),
      I3 => ex_in_c(3),
      O => \mem_in_b[0]_i_13_n_0\
    );
\mem_in_b[0]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => ex_in_c(0),
      I1 => ex_in_b(0),
      I2 => ex_in_b(1),
      I3 => ex_in_c(1),
      O => \mem_in_b[0]_i_14_n_0\
    );
\mem_in_b[0]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ex_in_c(6),
      I1 => ex_in_b(6),
      I2 => ex_in_c(7),
      I3 => ex_in_b(7),
      O => \mem_in_b[0]_i_15_n_0\
    );
\mem_in_b[0]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ex_in_c(4),
      I1 => ex_in_b(4),
      I2 => ex_in_c(5),
      I3 => ex_in_b(5),
      O => \mem_in_b[0]_i_16_n_0\
    );
\mem_in_b[0]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ex_in_c(2),
      I1 => ex_in_b(2),
      I2 => ex_in_c(3),
      I3 => ex_in_b(3),
      O => \mem_in_b[0]_i_17_n_0\
    );
\mem_in_b[0]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ex_in_c(0),
      I1 => ex_in_b(0),
      I2 => ex_in_c(1),
      I3 => ex_in_b(1),
      O => \mem_in_b[0]_i_18_n_0\
    );
\mem_in_b[0]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => ex_in_b(6),
      I1 => ex_in_c(6),
      I2 => ex_in_c(7),
      I3 => ex_in_b(7),
      O => \mem_in_b[0]_i_19_n_0\
    );
\mem_in_b[0]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => ex_in_b(4),
      I1 => ex_in_c(4),
      I2 => ex_in_c(5),
      I3 => ex_in_b(5),
      O => \mem_in_b[0]_i_20_n_0\
    );
\mem_in_b[0]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => ex_in_b(2),
      I1 => ex_in_c(2),
      I2 => ex_in_c(3),
      I3 => ex_in_b(3),
      O => \mem_in_b[0]_i_21_n_0\
    );
\mem_in_b[0]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => ex_in_b(0),
      I1 => ex_in_c(0),
      I2 => ex_in_c(1),
      I3 => ex_in_b(1),
      O => \mem_in_b[0]_i_22_n_0\
    );
\mem_in_b[0]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ex_in_c(6),
      I1 => ex_in_b(6),
      I2 => ex_in_c(7),
      I3 => ex_in_b(7),
      O => \mem_in_b[0]_i_23_n_0\
    );
\mem_in_b[0]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ex_in_c(4),
      I1 => ex_in_b(4),
      I2 => ex_in_c(5),
      I3 => ex_in_b(5),
      O => \mem_in_b[0]_i_24_n_0\
    );
\mem_in_b[0]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ex_in_c(2),
      I1 => ex_in_b(2),
      I2 => ex_in_c(3),
      I3 => ex_in_b(3),
      O => \mem_in_b[0]_i_25_n_0\
    );
\mem_in_b[0]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ex_in_c(0),
      I1 => ex_in_b(0),
      I2 => ex_in_c(1),
      I3 => ex_in_b(1),
      O => \mem_in_b[0]_i_26_n_0\
    );
\mem_in_b[0]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => ex_in_op(1),
      I1 => ex_in_op(0),
      I2 => ex_in_op(2),
      I3 => ex_in_op(3),
      I4 => \mem_in_b[0]_i_29_n_0\,
      I5 => \mem_in_b[0]_i_30_n_0\,
      O => \mem_in_b[0]_i_27_n_0\
    );
\mem_in_b[0]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_inst/data3\(0),
      I1 => \mem_in_b_reg[2]_i_5_n_7\,
      I2 => \mem_in_b[7]_i_7_n_0\,
      I3 => \alu_inst/data1\(0),
      I4 => \mem_in_b[7]_i_9_n_0\,
      I5 => \alu_inst/data0\(0),
      O => \mem_in_b[0]_i_28_n_0\
    );
\mem_in_b[0]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFEFFFFFFFF"
    )
        port map (
      I0 => \mem_in_b[0]_i_32_n_0\,
      I1 => \mem_in_b[0]_i_33_n_0\,
      I2 => ex_in_c(2),
      I3 => ex_in_b(2),
      I4 => \mem_in_b[0]_i_34_n_0\,
      I5 => \mem_in_b[0]_i_35_n_0\,
      O => \mem_in_b[0]_i_29_n_0\
    );
\mem_in_b[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FD"
    )
        port map (
      I0 => ex_in_op(3),
      I1 => ex_in_op(1),
      I2 => ex_in_op(0),
      I3 => ex_in_op(2),
      O => \mem_in_b[0]_i_3_n_0\
    );
\mem_in_b[0]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ex_in_c(6),
      I1 => ex_in_b(6),
      I2 => ex_in_c(7),
      I3 => ex_in_b(7),
      O => \mem_in_b[0]_i_30_n_0\
    );
\mem_in_b[0]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ex_in_b(0),
      I1 => ex_in_c(0),
      O => \mem_in_b[0]_i_32_n_0\
    );
\mem_in_b[0]_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ex_in_b(1),
      I1 => ex_in_c(1),
      O => \mem_in_b[0]_i_33_n_0\
    );
\mem_in_b[0]_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ex_in_b(3),
      I1 => ex_in_c(3),
      O => \mem_in_b[0]_i_34_n_0\
    );
\mem_in_b[0]_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ex_in_c(4),
      I1 => ex_in_b(4),
      I2 => ex_in_c(5),
      I3 => ex_in_b(5),
      O => \mem_in_b[0]_i_35_n_0\
    );
\mem_in_b[0]_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \alu_inst/data3\(1),
      I1 => \mem_in_b_reg[1]_i_4_n_7\,
      O => \mem_in_b[0]_i_37_n_0\
    );
\mem_in_b[0]_i_39\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(1),
      I1 => ex_in_c(7),
      I2 => \mem_in_b_reg[1]_i_5_n_4\,
      O => \mem_in_b[0]_i_39_n_0\
    );
\mem_in_b[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \alu_inst/ltOp\,
      I1 => \mem_in_b[0]_i_6_n_0\,
      I2 => \alu_inst/data5\,
      I3 => \mem_in_b[0]_i_8_n_0\,
      I4 => \mem_in_b_reg[0]_i_9_n_0\,
      I5 => \mem_in_b[0]_i_10_n_0\,
      O => \mem_in_b[0]_i_4_n_0\
    );
\mem_in_b[0]_i_40\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(1),
      I1 => ex_in_c(6),
      I2 => \mem_in_b_reg[1]_i_5_n_5\,
      O => \mem_in_b[0]_i_40_n_0\
    );
\mem_in_b[0]_i_41\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(1),
      I1 => ex_in_c(5),
      I2 => \mem_in_b_reg[1]_i_5_n_6\,
      O => \mem_in_b[0]_i_41_n_0\
    );
\mem_in_b[0]_i_42\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(1),
      I1 => ex_in_c(4),
      I2 => \mem_in_b_reg[1]_i_5_n_7\,
      O => \mem_in_b[0]_i_42_n_0\
    );
\mem_in_b[0]_i_43\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(1),
      I1 => ex_in_c(3),
      I2 => \mem_in_b_reg[1]_i_8_n_4\,
      O => \mem_in_b[0]_i_43_n_0\
    );
\mem_in_b[0]_i_44\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(1),
      I1 => ex_in_c(2),
      I2 => \mem_in_b_reg[1]_i_8_n_5\,
      O => \mem_in_b[0]_i_44_n_0\
    );
\mem_in_b[0]_i_45\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(1),
      I1 => ex_in_c(1),
      I2 => \mem_in_b_reg[1]_i_8_n_6\,
      O => \mem_in_b[0]_i_45_n_0\
    );
\mem_in_b[0]_i_46\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(1),
      I1 => ex_in_c(0),
      I2 => ex_in_b(0),
      O => \mem_in_b[0]_i_46_n_0\
    );
\mem_in_b[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"041E"
    )
        port map (
      I0 => ex_in_op(0),
      I1 => ex_in_op(1),
      I2 => ex_in_op(2),
      I3 => ex_in_op(3),
      O => \mem_in_b[0]_i_6_n_0\
    );
\mem_in_b[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F9FF"
    )
        port map (
      I0 => ex_in_op(0),
      I1 => ex_in_op(1),
      I2 => ex_in_op(2),
      I3 => ex_in_op(3),
      O => \mem_in_b[0]_i_8_n_0\
    );
\mem_in_b[1]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(2),
      I1 => ex_in_c(5),
      I2 => \mem_in_b_reg[2]_i_6_n_6\,
      O => \mem_in_b[1]_i_10_n_0\
    );
\mem_in_b[1]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(2),
      I1 => ex_in_c(4),
      I2 => \mem_in_b_reg[2]_i_6_n_7\,
      O => \mem_in_b[1]_i_11_n_0\
    );
\mem_in_b[1]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(2),
      I1 => ex_in_c(3),
      I2 => \mem_in_b_reg[2]_i_16_n_4\,
      O => \mem_in_b[1]_i_12_n_0\
    );
\mem_in_b[1]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(2),
      I1 => ex_in_c(2),
      I2 => \mem_in_b_reg[2]_i_16_n_5\,
      O => \mem_in_b[1]_i_13_n_0\
    );
\mem_in_b[1]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(2),
      I1 => ex_in_c(1),
      I2 => \mem_in_b_reg[2]_i_16_n_6\,
      O => \mem_in_b[1]_i_14_n_0\
    );
\mem_in_b[1]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(2),
      I1 => ex_in_c(0),
      I2 => ex_in_b(1),
      O => \mem_in_b[1]_i_15_n_0\
    );
\mem_in_b[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAB3338AAA80008"
    )
        port map (
      I0 => ex_in_b(1),
      I1 => ex_in_op(3),
      I2 => ex_in_op(1),
      I3 => ex_in_op(0),
      I4 => ex_in_op(2),
      I5 => \mem_in_b[1]_i_3_n_0\,
      O => \mem_in_b[1]_i_2_n_0\
    );
\mem_in_b[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_inst/data3\(1),
      I1 => \mem_in_b_reg[2]_i_5_n_6\,
      I2 => \mem_in_b[7]_i_7_n_0\,
      I3 => \alu_inst/data1\(1),
      I4 => \mem_in_b[7]_i_9_n_0\,
      I5 => \alu_inst/data0\(1),
      O => \mem_in_b[1]_i_3_n_0\
    );
\mem_in_b[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \alu_inst/data3\(2),
      I1 => \mem_in_b_reg[2]_i_4_n_7\,
      O => \mem_in_b[1]_i_6_n_0\
    );
\mem_in_b[1]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(2),
      I1 => ex_in_c(7),
      I2 => \mem_in_b_reg[2]_i_6_n_4\,
      O => \mem_in_b[1]_i_7_n_0\
    );
\mem_in_b[1]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(2),
      I1 => ex_in_c(6),
      I2 => \mem_in_b_reg[2]_i_6_n_5\,
      O => \mem_in_b[1]_i_9_n_0\
    );
\mem_in_b[2]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => ex_in_c(1),
      I1 => ex_in_b(1),
      I2 => ex_in_c(2),
      I3 => ex_in_b(0),
      O => \mem_in_b[2]_i_10_n_0\
    );
\mem_in_b[2]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ex_in_c(0),
      I1 => ex_in_b(1),
      O => \mem_in_b[2]_i_11_n_0\
    );
\mem_in_b[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99C369C399339933"
    )
        port map (
      I0 => ex_in_b(2),
      I1 => \mem_in_b[2]_i_21_n_0\,
      I2 => ex_in_b(1),
      I3 => ex_in_c(1),
      I4 => ex_in_b(0),
      I5 => ex_in_c(2),
      O => \mem_in_b[2]_i_12_n_0\
    );
\mem_in_b[2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => ex_in_b(0),
      I1 => ex_in_c(2),
      I2 => ex_in_b(1),
      I3 => ex_in_c(1),
      I4 => ex_in_c(0),
      I5 => ex_in_b(2),
      O => \mem_in_b[2]_i_13_n_0\
    );
\mem_in_b[2]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => ex_in_c(0),
      I1 => ex_in_b(1),
      I2 => ex_in_c(1),
      I3 => ex_in_b(0),
      O => \mem_in_b[2]_i_14_n_0\
    );
\mem_in_b[2]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ex_in_b(0),
      I1 => ex_in_c(0),
      O => \mem_in_b[2]_i_15_n_0\
    );
\mem_in_b[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(3),
      I1 => ex_in_c(6),
      I2 => \mem_in_b_reg[3]_i_7_n_5\,
      O => \mem_in_b[2]_i_17_n_0\
    );
\mem_in_b[2]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(3),
      I1 => ex_in_c(5),
      I2 => \mem_in_b_reg[3]_i_7_n_6\,
      O => \mem_in_b[2]_i_18_n_0\
    );
\mem_in_b[2]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(3),
      I1 => ex_in_c(4),
      I2 => \mem_in_b_reg[3]_i_7_n_7\,
      O => \mem_in_b[2]_i_19_n_0\
    );
\mem_in_b[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAB3338AAA80008"
    )
        port map (
      I0 => ex_in_b(2),
      I1 => ex_in_op(3),
      I2 => ex_in_op(1),
      I3 => ex_in_op(0),
      I4 => ex_in_op(2),
      I5 => \mem_in_b[2]_i_3_n_0\,
      O => \mem_in_b[2]_i_2_n_0\
    );
\mem_in_b[2]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(3),
      I1 => ex_in_c(3),
      I2 => \mem_in_b_reg[3]_i_18_n_4\,
      O => \mem_in_b[2]_i_20_n_0\
    );
\mem_in_b[2]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ex_in_b(3),
      I1 => ex_in_c(0),
      O => \mem_in_b[2]_i_21_n_0\
    );
\mem_in_b[2]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(3),
      I1 => ex_in_c(2),
      I2 => \mem_in_b_reg[3]_i_18_n_5\,
      O => \mem_in_b[2]_i_22_n_0\
    );
\mem_in_b[2]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(3),
      I1 => ex_in_c(1),
      I2 => \mem_in_b_reg[3]_i_18_n_6\,
      O => \mem_in_b[2]_i_23_n_0\
    );
\mem_in_b[2]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(3),
      I1 => ex_in_c(0),
      I2 => ex_in_b(2),
      O => \mem_in_b[2]_i_24_n_0\
    );
\mem_in_b[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_inst/data3\(2),
      I1 => \mem_in_b_reg[2]_i_5_n_5\,
      I2 => \mem_in_b[7]_i_7_n_0\,
      I3 => \alu_inst/data1\(2),
      I4 => \mem_in_b[7]_i_9_n_0\,
      I5 => \alu_inst/data0\(2),
      O => \mem_in_b[2]_i_3_n_0\
    );
\mem_in_b[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \alu_inst/data3\(3),
      I1 => \mem_in_b_reg[3]_i_4_n_7\,
      O => \mem_in_b[2]_i_7_n_0\
    );
\mem_in_b[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(3),
      I1 => ex_in_c(7),
      I2 => \mem_in_b_reg[3]_i_7_n_4\,
      O => \mem_in_b[2]_i_8_n_0\
    );
\mem_in_b[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => ex_in_c(1),
      I1 => ex_in_b(2),
      I2 => ex_in_c(2),
      I3 => ex_in_b(1),
      I4 => ex_in_b(3),
      I5 => ex_in_c(0),
      O => \mem_in_b[2]_i_9_n_0\
    );
\mem_in_b[3]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => ex_in_c(3),
      I1 => ex_in_b(3),
      O => \mem_in_b[3]_i_10_n_0\
    );
\mem_in_b[3]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => ex_in_c(2),
      I1 => ex_in_b(2),
      O => \mem_in_b[3]_i_11_n_0\
    );
\mem_in_b[3]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => ex_in_c(1),
      I1 => ex_in_b(1),
      O => \mem_in_b[3]_i_12_n_0\
    );
\mem_in_b[3]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => ex_in_c(0),
      I1 => ex_in_b(0),
      O => \mem_in_b[3]_i_13_n_0\
    );
\mem_in_b[3]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ex_in_b(3),
      I1 => ex_in_c(3),
      O => \mem_in_b[3]_i_14_n_0\
    );
\mem_in_b[3]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ex_in_b(2),
      I1 => ex_in_c(2),
      O => \mem_in_b[3]_i_15_n_0\
    );
\mem_in_b[3]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ex_in_b(1),
      I1 => ex_in_c(1),
      O => \mem_in_b[3]_i_16_n_0\
    );
\mem_in_b[3]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ex_in_b(0),
      I1 => ex_in_c(0),
      O => \mem_in_b[3]_i_17_n_0\
    );
\mem_in_b[3]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(4),
      I1 => ex_in_c(6),
      I2 => \mem_in_b_reg[4]_i_5_n_5\,
      O => \mem_in_b[3]_i_19_n_0\
    );
\mem_in_b[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAB3338AAA80008"
    )
        port map (
      I0 => ex_in_b(3),
      I1 => ex_in_op(3),
      I2 => ex_in_op(1),
      I3 => ex_in_op(0),
      I4 => ex_in_op(2),
      I5 => \mem_in_b[3]_i_3_n_0\,
      O => \mem_in_b[3]_i_2_n_0\
    );
\mem_in_b[3]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(4),
      I1 => ex_in_c(5),
      I2 => \mem_in_b_reg[4]_i_5_n_6\,
      O => \mem_in_b[3]_i_20_n_0\
    );
\mem_in_b[3]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(4),
      I1 => ex_in_c(4),
      I2 => \mem_in_b_reg[4]_i_5_n_7\,
      O => \mem_in_b[3]_i_21_n_0\
    );
\mem_in_b[3]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(4),
      I1 => ex_in_c(3),
      I2 => \mem_in_b_reg[4]_i_8_n_4\,
      O => \mem_in_b[3]_i_22_n_0\
    );
\mem_in_b[3]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(4),
      I1 => ex_in_c(2),
      I2 => \mem_in_b_reg[4]_i_8_n_5\,
      O => \mem_in_b[3]_i_23_n_0\
    );
\mem_in_b[3]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(4),
      I1 => ex_in_c(1),
      I2 => \mem_in_b_reg[4]_i_8_n_6\,
      O => \mem_in_b[3]_i_24_n_0\
    );
\mem_in_b[3]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(4),
      I1 => ex_in_c(0),
      I2 => ex_in_b(3),
      O => \mem_in_b[3]_i_25_n_0\
    );
\mem_in_b[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_inst/data3\(3),
      I1 => \mem_in_b_reg[6]_i_5_n_7\,
      I2 => \mem_in_b[7]_i_7_n_0\,
      I3 => \alu_inst/data1\(3),
      I4 => \mem_in_b[7]_i_9_n_0\,
      I5 => \alu_inst/data0\(3),
      O => \mem_in_b[3]_i_3_n_0\
    );
\mem_in_b[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \alu_inst/data3\(4),
      I1 => \mem_in_b_reg[4]_i_4_n_7\,
      O => \mem_in_b[3]_i_8_n_0\
    );
\mem_in_b[3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(4),
      I1 => ex_in_c(7),
      I2 => \mem_in_b_reg[4]_i_5_n_4\,
      O => \mem_in_b[3]_i_9_n_0\
    );
\mem_in_b[4]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(5),
      I1 => ex_in_c(5),
      I2 => \mem_in_b_reg[5]_i_5_n_6\,
      O => \mem_in_b[4]_i_10_n_0\
    );
\mem_in_b[4]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(5),
      I1 => ex_in_c(4),
      I2 => \mem_in_b_reg[5]_i_5_n_7\,
      O => \mem_in_b[4]_i_11_n_0\
    );
\mem_in_b[4]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(5),
      I1 => ex_in_c(3),
      I2 => \mem_in_b_reg[5]_i_8_n_4\,
      O => \mem_in_b[4]_i_12_n_0\
    );
\mem_in_b[4]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(5),
      I1 => ex_in_c(2),
      I2 => \mem_in_b_reg[5]_i_8_n_5\,
      O => \mem_in_b[4]_i_13_n_0\
    );
\mem_in_b[4]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(5),
      I1 => ex_in_c(1),
      I2 => \mem_in_b_reg[5]_i_8_n_6\,
      O => \mem_in_b[4]_i_14_n_0\
    );
\mem_in_b[4]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(5),
      I1 => ex_in_c(0),
      I2 => ex_in_b(4),
      O => \mem_in_b[4]_i_15_n_0\
    );
\mem_in_b[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAB3338AAA80008"
    )
        port map (
      I0 => ex_in_b(4),
      I1 => ex_in_op(3),
      I2 => ex_in_op(1),
      I3 => ex_in_op(0),
      I4 => ex_in_op(2),
      I5 => \mem_in_b[4]_i_3_n_0\,
      O => \mem_in_b[4]_i_2_n_0\
    );
\mem_in_b[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_inst/data3\(4),
      I1 => \mem_in_b_reg[6]_i_5_n_6\,
      I2 => \mem_in_b[7]_i_7_n_0\,
      I3 => \alu_inst/data1\(4),
      I4 => \mem_in_b[7]_i_9_n_0\,
      I5 => \alu_inst/data0\(4),
      O => \mem_in_b[4]_i_3_n_0\
    );
\mem_in_b[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \alu_inst/data3\(5),
      I1 => \mem_in_b_reg[5]_i_4_n_7\,
      O => \mem_in_b[4]_i_6_n_0\
    );
\mem_in_b[4]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(5),
      I1 => ex_in_c(7),
      I2 => \mem_in_b_reg[5]_i_5_n_4\,
      O => \mem_in_b[4]_i_7_n_0\
    );
\mem_in_b[4]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(5),
      I1 => ex_in_c(6),
      I2 => \mem_in_b_reg[5]_i_5_n_5\,
      O => \mem_in_b[4]_i_9_n_0\
    );
\mem_in_b[5]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(6),
      I1 => ex_in_c(5),
      I2 => \mem_in_b_reg[6]_i_6_n_7\,
      O => \mem_in_b[5]_i_10_n_0\
    );
\mem_in_b[5]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(6),
      I1 => ex_in_c(4),
      I2 => \mem_in_b_reg[6]_i_15_n_4\,
      O => \mem_in_b[5]_i_11_n_0\
    );
\mem_in_b[5]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(6),
      I1 => ex_in_c(3),
      I2 => \mem_in_b_reg[6]_i_15_n_5\,
      O => \mem_in_b[5]_i_12_n_0\
    );
\mem_in_b[5]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(6),
      I1 => ex_in_c(2),
      I2 => \mem_in_b_reg[6]_i_15_n_6\,
      O => \mem_in_b[5]_i_13_n_0\
    );
\mem_in_b[5]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(6),
      I1 => ex_in_c(1),
      I2 => \mem_in_b_reg[6]_i_15_n_7\,
      O => \mem_in_b[5]_i_14_n_0\
    );
\mem_in_b[5]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(6),
      I1 => ex_in_c(0),
      I2 => ex_in_b(5),
      O => \mem_in_b[5]_i_15_n_0\
    );
\mem_in_b[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAB3338AAA80008"
    )
        port map (
      I0 => ex_in_b(5),
      I1 => ex_in_op(3),
      I2 => ex_in_op(1),
      I3 => ex_in_op(0),
      I4 => ex_in_op(2),
      I5 => \mem_in_b[5]_i_3_n_0\,
      O => \mem_in_b[5]_i_2_n_0\
    );
\mem_in_b[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_inst/data3\(5),
      I1 => \mem_in_b_reg[6]_i_5_n_5\,
      I2 => \mem_in_b[7]_i_7_n_0\,
      I3 => \alu_inst/data1\(5),
      I4 => \mem_in_b[7]_i_9_n_0\,
      I5 => \alu_inst/data0\(5),
      O => \mem_in_b[5]_i_3_n_0\
    );
\mem_in_b[5]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \alu_inst/data3\(6),
      I1 => \mem_in_b_reg[6]_i_6_n_4\,
      O => \mem_in_b[5]_i_6_n_0\
    );
\mem_in_b[5]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(6),
      I1 => ex_in_c(7),
      I2 => \mem_in_b_reg[6]_i_6_n_5\,
      O => \mem_in_b[5]_i_7_n_0\
    );
\mem_in_b[5]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \alu_inst/data3\(6),
      I1 => ex_in_c(6),
      I2 => \mem_in_b_reg[6]_i_6_n_6\,
      O => \mem_in_b[5]_i_9_n_0\
    );
\mem_in_b[6]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => \mem_in_b_reg[6]_i_24_n_4\,
      I1 => \mem_in_b_reg[6]_i_10_n_5\,
      I2 => ex_in_c(6),
      I3 => ex_in_b(0),
      O => \mem_in_b[6]_i_11_n_0\
    );
\mem_in_b[6]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mem_in_b_reg[6]_i_10_n_6\,
      I1 => \mem_in_b_reg[6]_i_24_n_5\,
      O => \mem_in_b[6]_i_12_n_0\
    );
\mem_in_b[6]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mem_in_b_reg[6]_i_10_n_7\,
      I1 => \mem_in_b_reg[6]_i_24_n_6\,
      O => \mem_in_b[6]_i_13_n_0\
    );
\mem_in_b[6]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mem_in_b_reg[2]_i_5_n_4\,
      I1 => \mem_in_b_reg[6]_i_24_n_7\,
      O => \mem_in_b[6]_i_14_n_0\
    );
\mem_in_b[6]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ex_in_c(7),
      I1 => \mem_in_b[7]_i_5_n_0\,
      O => \mem_in_b[6]_i_16_n_0\
    );
\mem_in_b[6]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ex_in_c(6),
      I1 => \mem_in_b[7]_i_5_n_0\,
      O => \mem_in_b[6]_i_17_n_0\
    );
\mem_in_b[6]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ex_in_c(5),
      I1 => \mem_in_b[7]_i_5_n_0\,
      O => \mem_in_b[6]_i_18_n_0\
    );
\mem_in_b[6]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ex_in_c(4),
      I1 => \mem_in_b[7]_i_5_n_0\,
      O => \mem_in_b[6]_i_19_n_0\
    );
\mem_in_b[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAB3338AAA80008"
    )
        port map (
      I0 => ex_in_b(6),
      I1 => ex_in_op(3),
      I2 => ex_in_op(1),
      I3 => ex_in_op(0),
      I4 => ex_in_op(2),
      I5 => \mem_in_b[6]_i_3_n_0\,
      O => \mem_in_b[6]_i_2_n_0\
    );
\mem_in_b[6]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9979"
    )
        port map (
      I0 => ex_in_c(7),
      I1 => ex_in_c(6),
      I2 => \mem_in_b[7]_i_11_n_0\,
      I3 => ex_in_c(5),
      O => \mem_in_b[6]_i_20_n_0\
    );
\mem_in_b[6]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5BA5"
    )
        port map (
      I0 => ex_in_c(6),
      I1 => ex_in_c(7),
      I2 => ex_in_c(5),
      I3 => \mem_in_b[7]_i_11_n_0\,
      O => \mem_in_b[6]_i_21_n_0\
    );
\mem_in_b[6]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33CDCC33"
    )
        port map (
      I0 => ex_in_c(6),
      I1 => ex_in_c(5),
      I2 => ex_in_c(7),
      I3 => ex_in_c(4),
      I4 => \mem_in_b[6]_i_39_n_0\,
      O => \mem_in_b[6]_i_22_n_0\
    );
\mem_in_b[6]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333CCCDCCCC3333"
    )
        port map (
      I0 => ex_in_c(6),
      I1 => ex_in_c(4),
      I2 => ex_in_c(5),
      I3 => ex_in_c(7),
      I4 => ex_in_c(3),
      I5 => \mem_in_b[6]_i_40_n_0\,
      O => \mem_in_b[6]_i_23_n_0\
    );
\mem_in_b[6]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => ex_in_c(2),
      I1 => ex_in_b(3),
      I2 => ex_in_c(1),
      I3 => ex_in_b(4),
      I4 => ex_in_c(0),
      I5 => ex_in_b(5),
      O => \mem_in_b[6]_i_25_n_0\
    );
\mem_in_b[6]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => ex_in_c(2),
      I1 => ex_in_b(2),
      I2 => ex_in_c(1),
      I3 => ex_in_b(3),
      I4 => ex_in_c(0),
      I5 => ex_in_b(4),
      O => \mem_in_b[6]_i_26_n_0\
    );
\mem_in_b[6]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => ex_in_c(2),
      I1 => ex_in_b(1),
      I2 => ex_in_c(1),
      I3 => ex_in_b(2),
      I4 => ex_in_c(0),
      I5 => ex_in_b(3),
      O => \mem_in_b[6]_i_27_n_0\
    );
\mem_in_b[6]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F08080870F7F7F7"
    )
        port map (
      I0 => ex_in_b(6),
      I1 => ex_in_c(0),
      I2 => \mem_in_b[6]_i_48_n_0\,
      I3 => ex_in_b(4),
      I4 => ex_in_c(2),
      I5 => \mem_in_b[6]_i_49_n_0\,
      O => \mem_in_b[6]_i_28_n_0\
    );
\mem_in_b[6]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"956A6A956A956A95"
    )
        port map (
      I0 => \mem_in_b[6]_i_25_n_0\,
      I1 => ex_in_c(1),
      I2 => ex_in_b(5),
      I3 => \mem_in_b[6]_i_50_n_0\,
      I4 => ex_in_b(6),
      I5 => ex_in_c(0),
      O => \mem_in_b[6]_i_29_n_0\
    );
\mem_in_b[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \alu_inst/data3\(6),
      I1 => \mem_in_b_reg[6]_i_5_n_4\,
      I2 => \mem_in_b[7]_i_7_n_0\,
      I3 => \alu_inst/data1\(6),
      I4 => \mem_in_b[7]_i_9_n_0\,
      I5 => \alu_inst/data0\(6),
      O => \mem_in_b[6]_i_3_n_0\
    );
\mem_in_b[6]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"956A6A956A956A95"
    )
        port map (
      I0 => \mem_in_b[6]_i_26_n_0\,
      I1 => ex_in_c(1),
      I2 => ex_in_b(4),
      I3 => \mem_in_b[6]_i_51_n_0\,
      I4 => ex_in_b(5),
      I5 => ex_in_c(0),
      O => \mem_in_b[6]_i_30_n_0\
    );
\mem_in_b[6]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"956A6A956A956A95"
    )
        port map (
      I0 => \mem_in_b[6]_i_27_n_0\,
      I1 => ex_in_c(1),
      I2 => ex_in_b(3),
      I3 => \mem_in_b[6]_i_52_n_0\,
      I4 => ex_in_b(4),
      I5 => ex_in_c(0),
      O => \mem_in_b[6]_i_31_n_0\
    );
\mem_in_b[6]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ex_in_c(3),
      I1 => \mem_in_b[7]_i_5_n_0\,
      O => \mem_in_b[6]_i_32_n_0\
    );
\mem_in_b[6]_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ex_in_c(2),
      I1 => \mem_in_b[7]_i_5_n_0\,
      O => \mem_in_b[6]_i_33_n_0\
    );
\mem_in_b[6]_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ex_in_c(1),
      I1 => \mem_in_b[7]_i_5_n_0\,
      O => \mem_in_b[6]_i_34_n_0\
    );
\mem_in_b[6]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969696996966996"
    )
        port map (
      I0 => \mem_in_b[7]_i_5_n_0\,
      I1 => ex_in_c(3),
      I2 => ex_in_c(2),
      I3 => ex_in_c(0),
      I4 => ex_in_b(7),
      I5 => ex_in_c(1),
      O => \mem_in_b[6]_i_35_n_0\
    );
\mem_in_b[6]_i_36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96699696"
    )
        port map (
      I0 => \mem_in_b[7]_i_5_n_0\,
      I1 => ex_in_c(2),
      I2 => ex_in_c(1),
      I3 => ex_in_b(7),
      I4 => ex_in_c(0),
      O => \mem_in_b[6]_i_36_n_0\
    );
\mem_in_b[6]_i_37\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \mem_in_b[7]_i_5_n_0\,
      I1 => ex_in_c(1),
      I2 => ex_in_b(7),
      I3 => ex_in_c(0),
      O => \mem_in_b[6]_i_37_n_0\
    );
\mem_in_b[6]_i_38\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \mem_in_b[7]_i_5_n_0\,
      I1 => ex_in_c(0),
      I2 => ex_in_b(6),
      O => \mem_in_b[6]_i_38_n_0\
    );
\mem_in_b[6]_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000051"
    )
        port map (
      I0 => ex_in_c(2),
      I1 => ex_in_c(0),
      I2 => ex_in_b(7),
      I3 => ex_in_c(1),
      I4 => ex_in_c(3),
      O => \mem_in_b[6]_i_39_n_0\
    );
\mem_in_b[6]_i_40\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0045"
    )
        port map (
      I0 => ex_in_c(1),
      I1 => ex_in_b(7),
      I2 => ex_in_c(0),
      I3 => ex_in_c(2),
      O => \mem_in_b[6]_i_40_n_0\
    );
\mem_in_b[6]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => ex_in_c(4),
      I1 => ex_in_b(2),
      I2 => ex_in_c(5),
      I3 => ex_in_b(1),
      I4 => ex_in_b(3),
      I5 => ex_in_c(3),
      O => \mem_in_b[6]_i_41_n_0\
    );
\mem_in_b[6]_i_42\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => ex_in_c(4),
      I1 => ex_in_b(1),
      I2 => ex_in_c(5),
      I3 => ex_in_b(0),
      O => \mem_in_b[6]_i_42_n_0\
    );
\mem_in_b[6]_i_43\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ex_in_c(3),
      I1 => ex_in_b(1),
      O => \mem_in_b[6]_i_43_n_0\
    );
\mem_in_b[6]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99C369C399339933"
    )
        port map (
      I0 => ex_in_b(2),
      I1 => \mem_in_b[6]_i_53_n_0\,
      I2 => ex_in_b(1),
      I3 => ex_in_c(4),
      I4 => ex_in_b(0),
      I5 => ex_in_c(5),
      O => \mem_in_b[6]_i_44_n_0\
    );
\mem_in_b[6]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => ex_in_b(0),
      I1 => ex_in_c(5),
      I2 => ex_in_b(1),
      I3 => ex_in_c(4),
      I4 => ex_in_c(3),
      I5 => ex_in_b(2),
      O => \mem_in_b[6]_i_45_n_0\
    );
\mem_in_b[6]_i_46\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => ex_in_c(3),
      I1 => ex_in_b(1),
      I2 => ex_in_c(4),
      I3 => ex_in_b(0),
      O => \mem_in_b[6]_i_46_n_0\
    );
\mem_in_b[6]_i_47\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ex_in_b(0),
      I1 => ex_in_c(3),
      O => \mem_in_b[6]_i_47_n_0\
    );
\mem_in_b[6]_i_48\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ex_in_b(5),
      I1 => ex_in_c(1),
      O => \mem_in_b[6]_i_48_n_0\
    );
\mem_in_b[6]_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7888877787778777"
    )
        port map (
      I0 => ex_in_c(0),
      I1 => ex_in_b(7),
      I2 => ex_in_b(5),
      I3 => ex_in_c(2),
      I4 => ex_in_b(6),
      I5 => ex_in_c(1),
      O => \mem_in_b[6]_i_49_n_0\
    );
\mem_in_b[6]_i_50\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ex_in_b(4),
      I1 => ex_in_c(2),
      O => \mem_in_b[6]_i_50_n_0\
    );
\mem_in_b[6]_i_51\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ex_in_b(3),
      I1 => ex_in_c(2),
      O => \mem_in_b[6]_i_51_n_0\
    );
\mem_in_b[6]_i_52\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ex_in_b(2),
      I1 => ex_in_c(2),
      O => \mem_in_b[6]_i_52_n_0\
    );
\mem_in_b[6]_i_53\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ex_in_b(3),
      I1 => ex_in_c(3),
      O => \mem_in_b[6]_i_53_n_0\
    );
\mem_in_b[6]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => ex_in_c(6),
      I1 => \mem_in_b[7]_i_11_n_0\,
      I2 => ex_in_c(5),
      I3 => ex_in_c(7),
      O => \mem_in_b[6]_i_7_n_0\
    );
\mem_in_b[6]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5575"
    )
        port map (
      I0 => ex_in_c(7),
      I1 => ex_in_c(5),
      I2 => \mem_in_b[7]_i_11_n_0\,
      I3 => ex_in_c(6),
      O => \mem_in_b[6]_i_8_n_0\
    );
\mem_in_b[6]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mem_in_b_reg[6]_i_10_n_5\,
      I1 => \mem_in_b_reg[6]_i_24_n_4\,
      O => \mem_in_b[6]_i_9_n_0\
    );
\mem_in_b[7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001011"
    )
        port map (
      I0 => ex_in_c(3),
      I1 => ex_in_c(1),
      I2 => ex_in_b(7),
      I3 => ex_in_c(0),
      I4 => ex_in_c(2),
      I5 => ex_in_c(4),
      O => \mem_in_b[7]_i_11_n_0\
    );
\mem_in_b[7]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96666999"
    )
        port map (
      I0 => \mem_in_b_reg[6]_i_10_n_4\,
      I1 => \mem_in_b_reg[7]_i_21_n_7\,
      I2 => ex_in_b(0),
      I3 => ex_in_c(7),
      I4 => \mem_in_b[7]_i_22_n_0\,
      O => \mem_in_b[7]_i_12_n_0\
    );
\mem_in_b[7]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => ex_in_c(7),
      I1 => ex_in_b(7),
      O => \mem_in_b[7]_i_13_n_0\
    );
\mem_in_b[7]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => ex_in_c(6),
      I1 => ex_in_b(6),
      O => \mem_in_b[7]_i_14_n_0\
    );
\mem_in_b[7]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => ex_in_c(5),
      I1 => ex_in_b(5),
      O => \mem_in_b[7]_i_15_n_0\
    );
\mem_in_b[7]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => ex_in_c(4),
      I1 => ex_in_b(4),
      O => \mem_in_b[7]_i_16_n_0\
    );
\mem_in_b[7]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ex_in_b(7),
      I1 => ex_in_c(7),
      O => \mem_in_b[7]_i_17_n_0\
    );
\mem_in_b[7]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ex_in_b(6),
      I1 => ex_in_c(6),
      O => \mem_in_b[7]_i_18_n_0\
    );
\mem_in_b[7]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ex_in_b(5),
      I1 => ex_in_c(5),
      O => \mem_in_b[7]_i_19_n_0\
    );
\mem_in_b[7]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ex_in_b(4),
      I1 => ex_in_c(4),
      O => \mem_in_b[7]_i_20_n_0\
    );
\mem_in_b[7]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8777"
    )
        port map (
      I0 => \mem_in_b_reg[6]_i_10_n_5\,
      I1 => \mem_in_b_reg[6]_i_24_n_4\,
      I2 => ex_in_c(6),
      I3 => ex_in_b(1),
      O => \mem_in_b[7]_i_22_n_0\
    );
\mem_in_b[7]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F08080870F7F7F7"
    )
        port map (
      I0 => ex_in_b(3),
      I1 => ex_in_c(3),
      I2 => \mem_in_b[7]_i_24_n_0\,
      I3 => ex_in_b(1),
      I4 => ex_in_c(5),
      I5 => \mem_in_b[7]_i_25_n_0\,
      O => \mem_in_b[7]_i_23_n_0\
    );
\mem_in_b[7]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ex_in_b(2),
      I1 => ex_in_c(4),
      O => \mem_in_b[7]_i_24_n_0\
    );
\mem_in_b[7]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7888877787778777"
    )
        port map (
      I0 => ex_in_c(3),
      I1 => ex_in_b(4),
      I2 => ex_in_b(2),
      I3 => ex_in_c(5),
      I4 => ex_in_b(3),
      I5 => ex_in_c(4),
      O => \mem_in_b[7]_i_25_n_0\
    );
\mem_in_b[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAB3338AAA80008"
    )
        port map (
      I0 => ex_in_b(7),
      I1 => ex_in_op(3),
      I2 => ex_in_op(1),
      I3 => ex_in_op(0),
      I4 => ex_in_op(2),
      I5 => \mem_in_b[7]_i_4_n_0\,
      O => \mem_in_b[7]_i_3_n_0\
    );
\mem_in_b[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_in_b[7]_i_5_n_0\,
      I1 => \mem_in_b_reg[7]_i_6_n_7\,
      I2 => \mem_in_b[7]_i_7_n_0\,
      I3 => \alu_inst/data1\(7),
      I4 => \mem_in_b[7]_i_9_n_0\,
      I5 => \alu_inst/data0\(7),
      O => \mem_in_b[7]_i_4_n_0\
    );
\mem_in_b[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => ex_in_c(6),
      I1 => \mem_in_b[7]_i_11_n_0\,
      I2 => ex_in_c(5),
      I3 => ex_in_c(7),
      O => \mem_in_b[7]_i_5_n_0\
    );
\mem_in_b[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EABF"
    )
        port map (
      I0 => ex_in_op(2),
      I1 => ex_in_op(1),
      I2 => ex_in_op(3),
      I3 => ex_in_op(0),
      O => \mem_in_b[7]_i_7_n_0\
    );
\mem_in_b[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0418"
    )
        port map (
      I0 => ex_in_op(0),
      I1 => ex_in_op(1),
      I2 => ex_in_op(2),
      I3 => ex_in_op(3),
      O => \mem_in_b[7]_i_9_n_0\
    );
\mem_in_b_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => \mem_in_b[0]_i_1_n_0\,
      Q => mem_in_b(0),
      R => rom_stall_fetched(7)
    );
\mem_in_b_reg[0]_i_31\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_in_b_reg[0]_i_36_n_0\,
      CO(3 downto 1) => \NLW_mem_in_b_reg[0]_i_31_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \alu_inst/data3\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \alu_inst/data3\(1),
      O(3 downto 0) => \NLW_mem_in_b_reg[0]_i_31_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \mem_in_b[0]_i_37_n_0\
    );
\mem_in_b_reg[0]_i_36\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_in_b_reg[0]_i_38_n_0\,
      CO(3) => \mem_in_b_reg[0]_i_36_n_0\,
      CO(2 downto 0) => \NLW_mem_in_b_reg[0]_i_36_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \mem_in_b_reg[1]_i_5_n_4\,
      DI(2) => \mem_in_b_reg[1]_i_5_n_5\,
      DI(1) => \mem_in_b_reg[1]_i_5_n_6\,
      DI(0) => \mem_in_b_reg[1]_i_5_n_7\,
      O(3 downto 0) => \NLW_mem_in_b_reg[0]_i_36_O_UNCONNECTED\(3 downto 0),
      S(3) => \mem_in_b[0]_i_39_n_0\,
      S(2) => \mem_in_b[0]_i_40_n_0\,
      S(1) => \mem_in_b[0]_i_41_n_0\,
      S(0) => \mem_in_b[0]_i_42_n_0\
    );
\mem_in_b_reg[0]_i_38\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mem_in_b_reg[0]_i_38_n_0\,
      CO(2 downto 0) => \NLW_mem_in_b_reg[0]_i_38_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \alu_inst/data3\(1),
      DI(3) => \mem_in_b_reg[1]_i_8_n_4\,
      DI(2) => \mem_in_b_reg[1]_i_8_n_5\,
      DI(1) => \mem_in_b_reg[1]_i_8_n_6\,
      DI(0) => ex_in_b(0),
      O(3 downto 0) => \NLW_mem_in_b_reg[0]_i_38_O_UNCONNECTED\(3 downto 0),
      S(3) => \mem_in_b[0]_i_43_n_0\,
      S(2) => \mem_in_b[0]_i_44_n_0\,
      S(1) => \mem_in_b[0]_i_45_n_0\,
      S(0) => \mem_in_b[0]_i_46_n_0\
    );
\mem_in_b_reg[0]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \alu_inst/ltOp\,
      CO(2 downto 0) => \NLW_mem_in_b_reg[0]_i_5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \mem_in_b[0]_i_11_n_0\,
      DI(2) => \mem_in_b[0]_i_12_n_0\,
      DI(1) => \mem_in_b[0]_i_13_n_0\,
      DI(0) => \mem_in_b[0]_i_14_n_0\,
      O(3 downto 0) => \NLW_mem_in_b_reg[0]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \mem_in_b[0]_i_15_n_0\,
      S(2) => \mem_in_b[0]_i_16_n_0\,
      S(1) => \mem_in_b[0]_i_17_n_0\,
      S(0) => \mem_in_b[0]_i_18_n_0\
    );
\mem_in_b_reg[0]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \alu_inst/data5\,
      CO(2 downto 0) => \NLW_mem_in_b_reg[0]_i_7_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \mem_in_b[0]_i_19_n_0\,
      DI(2) => \mem_in_b[0]_i_20_n_0\,
      DI(1) => \mem_in_b[0]_i_21_n_0\,
      DI(0) => \mem_in_b[0]_i_22_n_0\,
      O(3 downto 0) => \NLW_mem_in_b_reg[0]_i_7_O_UNCONNECTED\(3 downto 0),
      S(3) => \mem_in_b[0]_i_23_n_0\,
      S(2) => \mem_in_b[0]_i_24_n_0\,
      S(1) => \mem_in_b[0]_i_25_n_0\,
      S(0) => \mem_in_b[0]_i_26_n_0\
    );
\mem_in_b_reg[0]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mem_in_b[0]_i_27_n_0\,
      I1 => \mem_in_b[0]_i_28_n_0\,
      O => \mem_in_b_reg[0]_i_9_n_0\,
      S => \mem_in_b[0]_i_6_n_0\
    );
\mem_in_b_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => \mem_in_b[1]_i_2_n_0\,
      Q => mem_in_b(1),
      R => rom_stall_fetched(7)
    );
\mem_in_b_reg[1]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_in_b_reg[1]_i_5_n_0\,
      CO(3 downto 2) => \NLW_mem_in_b_reg[1]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \alu_inst/data3\(1),
      CO(0) => \NLW_mem_in_b_reg[1]_i_4_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \alu_inst/data3\(2),
      DI(0) => \mem_in_b_reg[2]_i_6_n_4\,
      O(3 downto 1) => \NLW_mem_in_b_reg[1]_i_4_O_UNCONNECTED\(3 downto 1),
      O(0) => \mem_in_b_reg[1]_i_4_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \mem_in_b[1]_i_6_n_0\,
      S(0) => \mem_in_b[1]_i_7_n_0\
    );
\mem_in_b_reg[1]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_in_b_reg[1]_i_8_n_0\,
      CO(3) => \mem_in_b_reg[1]_i_5_n_0\,
      CO(2 downto 0) => \NLW_mem_in_b_reg[1]_i_5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \mem_in_b_reg[2]_i_6_n_5\,
      DI(2) => \mem_in_b_reg[2]_i_6_n_6\,
      DI(1) => \mem_in_b_reg[2]_i_6_n_7\,
      DI(0) => \mem_in_b_reg[2]_i_16_n_4\,
      O(3) => \mem_in_b_reg[1]_i_5_n_4\,
      O(2) => \mem_in_b_reg[1]_i_5_n_5\,
      O(1) => \mem_in_b_reg[1]_i_5_n_6\,
      O(0) => \mem_in_b_reg[1]_i_5_n_7\,
      S(3) => \mem_in_b[1]_i_9_n_0\,
      S(2) => \mem_in_b[1]_i_10_n_0\,
      S(1) => \mem_in_b[1]_i_11_n_0\,
      S(0) => \mem_in_b[1]_i_12_n_0\
    );
\mem_in_b_reg[1]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mem_in_b_reg[1]_i_8_n_0\,
      CO(2 downto 0) => \NLW_mem_in_b_reg[1]_i_8_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \alu_inst/data3\(2),
      DI(3) => \mem_in_b_reg[2]_i_16_n_5\,
      DI(2) => \mem_in_b_reg[2]_i_16_n_6\,
      DI(1) => ex_in_b(1),
      DI(0) => '0',
      O(3) => \mem_in_b_reg[1]_i_8_n_4\,
      O(2) => \mem_in_b_reg[1]_i_8_n_5\,
      O(1) => \mem_in_b_reg[1]_i_8_n_6\,
      O(0) => \NLW_mem_in_b_reg[1]_i_8_O_UNCONNECTED\(0),
      S(3) => \mem_in_b[1]_i_13_n_0\,
      S(2) => \mem_in_b[1]_i_14_n_0\,
      S(1) => \mem_in_b[1]_i_15_n_0\,
      S(0) => '1'
    );
\mem_in_b_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => \mem_in_b[2]_i_2_n_0\,
      Q => mem_in_b(2),
      R => rom_stall_fetched(7)
    );
\mem_in_b_reg[2]_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mem_in_b_reg[2]_i_16_n_0\,
      CO(2 downto 0) => \NLW_mem_in_b_reg[2]_i_16_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \alu_inst/data3\(3),
      DI(3) => \mem_in_b_reg[3]_i_18_n_5\,
      DI(2) => \mem_in_b_reg[3]_i_18_n_6\,
      DI(1) => ex_in_b(2),
      DI(0) => '0',
      O(3) => \mem_in_b_reg[2]_i_16_n_4\,
      O(2) => \mem_in_b_reg[2]_i_16_n_5\,
      O(1) => \mem_in_b_reg[2]_i_16_n_6\,
      O(0) => \NLW_mem_in_b_reg[2]_i_16_O_UNCONNECTED\(0),
      S(3) => \mem_in_b[2]_i_22_n_0\,
      S(2) => \mem_in_b[2]_i_23_n_0\,
      S(1) => \mem_in_b[2]_i_24_n_0\,
      S(0) => '1'
    );
\mem_in_b_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_in_b_reg[2]_i_6_n_0\,
      CO(3 downto 2) => \NLW_mem_in_b_reg[2]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \alu_inst/data3\(2),
      CO(0) => \NLW_mem_in_b_reg[2]_i_4_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \alu_inst/data3\(3),
      DI(0) => \mem_in_b_reg[3]_i_7_n_4\,
      O(3 downto 1) => \NLW_mem_in_b_reg[2]_i_4_O_UNCONNECTED\(3 downto 1),
      O(0) => \mem_in_b_reg[2]_i_4_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \mem_in_b[2]_i_7_n_0\,
      S(0) => \mem_in_b[2]_i_8_n_0\
    );
\mem_in_b_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mem_in_b_reg[2]_i_5_n_0\,
      CO(2 downto 0) => \NLW_mem_in_b_reg[2]_i_5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \mem_in_b[2]_i_9_n_0\,
      DI(2) => \mem_in_b[2]_i_10_n_0\,
      DI(1) => \mem_in_b[2]_i_11_n_0\,
      DI(0) => '0',
      O(3) => \mem_in_b_reg[2]_i_5_n_4\,
      O(2) => \mem_in_b_reg[2]_i_5_n_5\,
      O(1) => \mem_in_b_reg[2]_i_5_n_6\,
      O(0) => \mem_in_b_reg[2]_i_5_n_7\,
      S(3) => \mem_in_b[2]_i_12_n_0\,
      S(2) => \mem_in_b[2]_i_13_n_0\,
      S(1) => \mem_in_b[2]_i_14_n_0\,
      S(0) => \mem_in_b[2]_i_15_n_0\
    );
\mem_in_b_reg[2]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_in_b_reg[2]_i_16_n_0\,
      CO(3) => \mem_in_b_reg[2]_i_6_n_0\,
      CO(2 downto 0) => \NLW_mem_in_b_reg[2]_i_6_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \mem_in_b_reg[3]_i_7_n_5\,
      DI(2) => \mem_in_b_reg[3]_i_7_n_6\,
      DI(1) => \mem_in_b_reg[3]_i_7_n_7\,
      DI(0) => \mem_in_b_reg[3]_i_18_n_4\,
      O(3) => \mem_in_b_reg[2]_i_6_n_4\,
      O(2) => \mem_in_b_reg[2]_i_6_n_5\,
      O(1) => \mem_in_b_reg[2]_i_6_n_6\,
      O(0) => \mem_in_b_reg[2]_i_6_n_7\,
      S(3) => \mem_in_b[2]_i_17_n_0\,
      S(2) => \mem_in_b[2]_i_18_n_0\,
      S(1) => \mem_in_b[2]_i_19_n_0\,
      S(0) => \mem_in_b[2]_i_20_n_0\
    );
\mem_in_b_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => \mem_in_b[3]_i_2_n_0\,
      Q => mem_in_b(3),
      R => rom_stall_fetched(7)
    );
\mem_in_b_reg[3]_i_18\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mem_in_b_reg[3]_i_18_n_0\,
      CO(2 downto 0) => \NLW_mem_in_b_reg[3]_i_18_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \alu_inst/data3\(4),
      DI(3) => \mem_in_b_reg[4]_i_8_n_5\,
      DI(2) => \mem_in_b_reg[4]_i_8_n_6\,
      DI(1) => ex_in_b(3),
      DI(0) => '0',
      O(3) => \mem_in_b_reg[3]_i_18_n_4\,
      O(2) => \mem_in_b_reg[3]_i_18_n_5\,
      O(1) => \mem_in_b_reg[3]_i_18_n_6\,
      O(0) => \NLW_mem_in_b_reg[3]_i_18_O_UNCONNECTED\(0),
      S(3) => \mem_in_b[3]_i_23_n_0\,
      S(2) => \mem_in_b[3]_i_24_n_0\,
      S(1) => \mem_in_b[3]_i_25_n_0\,
      S(0) => '1'
    );
\mem_in_b_reg[3]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_in_b_reg[3]_i_7_n_0\,
      CO(3 downto 2) => \NLW_mem_in_b_reg[3]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \alu_inst/data3\(3),
      CO(0) => \NLW_mem_in_b_reg[3]_i_4_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \alu_inst/data3\(4),
      DI(0) => \mem_in_b_reg[4]_i_5_n_4\,
      O(3 downto 1) => \NLW_mem_in_b_reg[3]_i_4_O_UNCONNECTED\(3 downto 1),
      O(0) => \mem_in_b_reg[3]_i_4_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \mem_in_b[3]_i_8_n_0\,
      S(0) => \mem_in_b[3]_i_9_n_0\
    );
\mem_in_b_reg[3]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mem_in_b_reg[3]_i_5_n_0\,
      CO(2 downto 0) => \NLW_mem_in_b_reg[3]_i_5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => ex_in_b(3 downto 0),
      O(3 downto 0) => \alu_inst/data1\(3 downto 0),
      S(3) => \mem_in_b[3]_i_10_n_0\,
      S(2) => \mem_in_b[3]_i_11_n_0\,
      S(1) => \mem_in_b[3]_i_12_n_0\,
      S(0) => \mem_in_b[3]_i_13_n_0\
    );
\mem_in_b_reg[3]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mem_in_b_reg[3]_i_6_n_0\,
      CO(2 downto 0) => \NLW_mem_in_b_reg[3]_i_6_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => ex_in_b(3 downto 0),
      O(3 downto 0) => \alu_inst/data0\(3 downto 0),
      S(3) => \mem_in_b[3]_i_14_n_0\,
      S(2) => \mem_in_b[3]_i_15_n_0\,
      S(1) => \mem_in_b[3]_i_16_n_0\,
      S(0) => \mem_in_b[3]_i_17_n_0\
    );
\mem_in_b_reg[3]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_in_b_reg[3]_i_18_n_0\,
      CO(3) => \mem_in_b_reg[3]_i_7_n_0\,
      CO(2 downto 0) => \NLW_mem_in_b_reg[3]_i_7_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \mem_in_b_reg[4]_i_5_n_5\,
      DI(2) => \mem_in_b_reg[4]_i_5_n_6\,
      DI(1) => \mem_in_b_reg[4]_i_5_n_7\,
      DI(0) => \mem_in_b_reg[4]_i_8_n_4\,
      O(3) => \mem_in_b_reg[3]_i_7_n_4\,
      O(2) => \mem_in_b_reg[3]_i_7_n_5\,
      O(1) => \mem_in_b_reg[3]_i_7_n_6\,
      O(0) => \mem_in_b_reg[3]_i_7_n_7\,
      S(3) => \mem_in_b[3]_i_19_n_0\,
      S(2) => \mem_in_b[3]_i_20_n_0\,
      S(1) => \mem_in_b[3]_i_21_n_0\,
      S(0) => \mem_in_b[3]_i_22_n_0\
    );
\mem_in_b_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => \mem_in_b[4]_i_2_n_0\,
      Q => mem_in_b(4),
      R => rom_stall_fetched(7)
    );
\mem_in_b_reg[4]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_in_b_reg[4]_i_5_n_0\,
      CO(3 downto 2) => \NLW_mem_in_b_reg[4]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \alu_inst/data3\(4),
      CO(0) => \NLW_mem_in_b_reg[4]_i_4_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \alu_inst/data3\(5),
      DI(0) => \mem_in_b_reg[5]_i_5_n_4\,
      O(3 downto 1) => \NLW_mem_in_b_reg[4]_i_4_O_UNCONNECTED\(3 downto 1),
      O(0) => \mem_in_b_reg[4]_i_4_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \mem_in_b[4]_i_6_n_0\,
      S(0) => \mem_in_b[4]_i_7_n_0\
    );
\mem_in_b_reg[4]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_in_b_reg[4]_i_8_n_0\,
      CO(3) => \mem_in_b_reg[4]_i_5_n_0\,
      CO(2 downto 0) => \NLW_mem_in_b_reg[4]_i_5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \mem_in_b_reg[5]_i_5_n_5\,
      DI(2) => \mem_in_b_reg[5]_i_5_n_6\,
      DI(1) => \mem_in_b_reg[5]_i_5_n_7\,
      DI(0) => \mem_in_b_reg[5]_i_8_n_4\,
      O(3) => \mem_in_b_reg[4]_i_5_n_4\,
      O(2) => \mem_in_b_reg[4]_i_5_n_5\,
      O(1) => \mem_in_b_reg[4]_i_5_n_6\,
      O(0) => \mem_in_b_reg[4]_i_5_n_7\,
      S(3) => \mem_in_b[4]_i_9_n_0\,
      S(2) => \mem_in_b[4]_i_10_n_0\,
      S(1) => \mem_in_b[4]_i_11_n_0\,
      S(0) => \mem_in_b[4]_i_12_n_0\
    );
\mem_in_b_reg[4]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mem_in_b_reg[4]_i_8_n_0\,
      CO(2 downto 0) => \NLW_mem_in_b_reg[4]_i_8_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \alu_inst/data3\(5),
      DI(3) => \mem_in_b_reg[5]_i_8_n_5\,
      DI(2) => \mem_in_b_reg[5]_i_8_n_6\,
      DI(1) => ex_in_b(4),
      DI(0) => '0',
      O(3) => \mem_in_b_reg[4]_i_8_n_4\,
      O(2) => \mem_in_b_reg[4]_i_8_n_5\,
      O(1) => \mem_in_b_reg[4]_i_8_n_6\,
      O(0) => \NLW_mem_in_b_reg[4]_i_8_O_UNCONNECTED\(0),
      S(3) => \mem_in_b[4]_i_13_n_0\,
      S(2) => \mem_in_b[4]_i_14_n_0\,
      S(1) => \mem_in_b[4]_i_15_n_0\,
      S(0) => '1'
    );
\mem_in_b_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => \mem_in_b[5]_i_2_n_0\,
      Q => mem_in_b(5),
      R => rom_stall_fetched(7)
    );
\mem_in_b_reg[5]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_in_b_reg[5]_i_5_n_0\,
      CO(3 downto 2) => \NLW_mem_in_b_reg[5]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \alu_inst/data3\(5),
      CO(0) => \NLW_mem_in_b_reg[5]_i_4_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \alu_inst/data3\(6),
      DI(0) => \mem_in_b_reg[6]_i_6_n_5\,
      O(3 downto 1) => \NLW_mem_in_b_reg[5]_i_4_O_UNCONNECTED\(3 downto 1),
      O(0) => \mem_in_b_reg[5]_i_4_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \mem_in_b[5]_i_6_n_0\,
      S(0) => \mem_in_b[5]_i_7_n_0\
    );
\mem_in_b_reg[5]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_in_b_reg[5]_i_8_n_0\,
      CO(3) => \mem_in_b_reg[5]_i_5_n_0\,
      CO(2 downto 0) => \NLW_mem_in_b_reg[5]_i_5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \mem_in_b_reg[6]_i_6_n_6\,
      DI(2) => \mem_in_b_reg[6]_i_6_n_7\,
      DI(1) => \mem_in_b_reg[6]_i_15_n_4\,
      DI(0) => \mem_in_b_reg[6]_i_15_n_5\,
      O(3) => \mem_in_b_reg[5]_i_5_n_4\,
      O(2) => \mem_in_b_reg[5]_i_5_n_5\,
      O(1) => \mem_in_b_reg[5]_i_5_n_6\,
      O(0) => \mem_in_b_reg[5]_i_5_n_7\,
      S(3) => \mem_in_b[5]_i_9_n_0\,
      S(2) => \mem_in_b[5]_i_10_n_0\,
      S(1) => \mem_in_b[5]_i_11_n_0\,
      S(0) => \mem_in_b[5]_i_12_n_0\
    );
\mem_in_b_reg[5]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mem_in_b_reg[5]_i_8_n_0\,
      CO(2 downto 0) => \NLW_mem_in_b_reg[5]_i_8_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \alu_inst/data3\(6),
      DI(3) => \mem_in_b_reg[6]_i_15_n_6\,
      DI(2) => \mem_in_b_reg[6]_i_15_n_7\,
      DI(1) => ex_in_b(5),
      DI(0) => '0',
      O(3) => \mem_in_b_reg[5]_i_8_n_4\,
      O(2) => \mem_in_b_reg[5]_i_8_n_5\,
      O(1) => \mem_in_b_reg[5]_i_8_n_6\,
      O(0) => \NLW_mem_in_b_reg[5]_i_8_O_UNCONNECTED\(0),
      S(3) => \mem_in_b[5]_i_13_n_0\,
      S(2) => \mem_in_b[5]_i_14_n_0\,
      S(1) => \mem_in_b[5]_i_15_n_0\,
      S(0) => '1'
    );
\mem_in_b_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => \mem_in_b[6]_i_2_n_0\,
      Q => mem_in_b(6),
      R => rom_stall_fetched(7)
    );
\mem_in_b_reg[6]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_in_b_reg[2]_i_5_n_0\,
      CO(3 downto 0) => \NLW_mem_in_b_reg[6]_i_10_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \mem_in_b[6]_i_25_n_0\,
      DI(1) => \mem_in_b[6]_i_26_n_0\,
      DI(0) => \mem_in_b[6]_i_27_n_0\,
      O(3) => \mem_in_b_reg[6]_i_10_n_4\,
      O(2) => \mem_in_b_reg[6]_i_10_n_5\,
      O(1) => \mem_in_b_reg[6]_i_10_n_6\,
      O(0) => \mem_in_b_reg[6]_i_10_n_7\,
      S(3) => \mem_in_b[6]_i_28_n_0\,
      S(2) => \mem_in_b[6]_i_29_n_0\,
      S(1) => \mem_in_b[6]_i_30_n_0\,
      S(0) => \mem_in_b[6]_i_31_n_0\
    );
\mem_in_b_reg[6]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mem_in_b_reg[6]_i_15_n_0\,
      CO(2 downto 0) => \NLW_mem_in_b_reg[6]_i_15_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \mem_in_b[7]_i_5_n_0\,
      DI(3) => \mem_in_b[6]_i_32_n_0\,
      DI(2) => \mem_in_b[6]_i_33_n_0\,
      DI(1) => \mem_in_b[6]_i_34_n_0\,
      DI(0) => ex_in_b(6),
      O(3) => \mem_in_b_reg[6]_i_15_n_4\,
      O(2) => \mem_in_b_reg[6]_i_15_n_5\,
      O(1) => \mem_in_b_reg[6]_i_15_n_6\,
      O(0) => \mem_in_b_reg[6]_i_15_n_7\,
      S(3) => \mem_in_b[6]_i_35_n_0\,
      S(2) => \mem_in_b[6]_i_36_n_0\,
      S(1) => \mem_in_b[6]_i_37_n_0\,
      S(0) => \mem_in_b[6]_i_38_n_0\
    );
\mem_in_b_reg[6]_i_24\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mem_in_b_reg[6]_i_24_n_0\,
      CO(2 downto 0) => \NLW_mem_in_b_reg[6]_i_24_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \mem_in_b[6]_i_41_n_0\,
      DI(2) => \mem_in_b[6]_i_42_n_0\,
      DI(1) => \mem_in_b[6]_i_43_n_0\,
      DI(0) => '0',
      O(3) => \mem_in_b_reg[6]_i_24_n_4\,
      O(2) => \mem_in_b_reg[6]_i_24_n_5\,
      O(1) => \mem_in_b_reg[6]_i_24_n_6\,
      O(0) => \mem_in_b_reg[6]_i_24_n_7\,
      S(3) => \mem_in_b[6]_i_44_n_0\,
      S(2) => \mem_in_b[6]_i_45_n_0\,
      S(1) => \mem_in_b[6]_i_46_n_0\,
      S(0) => \mem_in_b[6]_i_47_n_0\
    );
\mem_in_b_reg[6]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_in_b_reg[6]_i_6_n_0\,
      CO(3 downto 1) => \NLW_mem_in_b_reg[6]_i_4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \alu_inst/data3\(6),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \mem_in_b[6]_i_7_n_0\,
      O(3 downto 0) => \NLW_mem_in_b_reg[6]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \mem_in_b[6]_i_8_n_0\
    );
\mem_in_b_reg[6]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mem_in_b_reg[6]_i_5_n_0\,
      CO(2 downto 0) => \NLW_mem_in_b_reg[6]_i_5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \mem_in_b[6]_i_9_n_0\,
      DI(2) => \mem_in_b_reg[6]_i_10_n_6\,
      DI(1) => \mem_in_b_reg[6]_i_10_n_7\,
      DI(0) => \mem_in_b_reg[2]_i_5_n_4\,
      O(3) => \mem_in_b_reg[6]_i_5_n_4\,
      O(2) => \mem_in_b_reg[6]_i_5_n_5\,
      O(1) => \mem_in_b_reg[6]_i_5_n_6\,
      O(0) => \mem_in_b_reg[6]_i_5_n_7\,
      S(3) => \mem_in_b[6]_i_11_n_0\,
      S(2) => \mem_in_b[6]_i_12_n_0\,
      S(1) => \mem_in_b[6]_i_13_n_0\,
      S(0) => \mem_in_b[6]_i_14_n_0\
    );
\mem_in_b_reg[6]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_in_b_reg[6]_i_15_n_0\,
      CO(3) => \mem_in_b_reg[6]_i_6_n_0\,
      CO(2 downto 0) => \NLW_mem_in_b_reg[6]_i_6_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \mem_in_b[6]_i_16_n_0\,
      DI(2) => \mem_in_b[6]_i_17_n_0\,
      DI(1) => \mem_in_b[6]_i_18_n_0\,
      DI(0) => \mem_in_b[6]_i_19_n_0\,
      O(3) => \mem_in_b_reg[6]_i_6_n_4\,
      O(2) => \mem_in_b_reg[6]_i_6_n_5\,
      O(1) => \mem_in_b_reg[6]_i_6_n_6\,
      O(0) => \mem_in_b_reg[6]_i_6_n_7\,
      S(3) => \mem_in_b[6]_i_20_n_0\,
      S(2) => \mem_in_b[6]_i_21_n_0\,
      S(1) => \mem_in_b[6]_i_22_n_0\,
      S(0) => \mem_in_b[6]_i_23_n_0\
    );
\mem_in_b_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => \mem_in_b[7]_i_3_n_0\,
      Q => mem_in_b(7),
      R => rom_stall_fetched(7)
    );
\mem_in_b_reg[7]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_in_b_reg[3]_i_6_n_0\,
      CO(3 downto 0) => \NLW_mem_in_b_reg[7]_i_10_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => ex_in_b(6 downto 4),
      O(3 downto 0) => \alu_inst/data0\(7 downto 4),
      S(3) => \mem_in_b[7]_i_17_n_0\,
      S(2) => \mem_in_b[7]_i_18_n_0\,
      S(1) => \mem_in_b[7]_i_19_n_0\,
      S(0) => \mem_in_b[7]_i_20_n_0\
    );
\mem_in_b_reg[7]_i_21\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_in_b_reg[6]_i_24_n_0\,
      CO(3 downto 0) => \NLW_mem_in_b_reg[7]_i_21_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_mem_in_b_reg[7]_i_21_O_UNCONNECTED\(3 downto 1),
      O(0) => \mem_in_b_reg[7]_i_21_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \mem_in_b[7]_i_23_n_0\
    );
\mem_in_b_reg[7]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_in_b_reg[6]_i_5_n_0\,
      CO(3 downto 0) => \NLW_mem_in_b_reg[7]_i_6_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_mem_in_b_reg[7]_i_6_O_UNCONNECTED\(3 downto 1),
      O(0) => \mem_in_b_reg[7]_i_6_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \mem_in_b[7]_i_12_n_0\
    );
\mem_in_b_reg[7]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem_in_b_reg[3]_i_5_n_0\,
      CO(3 downto 0) => \NLW_mem_in_b_reg[7]_i_8_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => ex_in_b(6 downto 4),
      O(3 downto 0) => \alu_inst/data1\(7 downto 4),
      S(3) => \mem_in_b[7]_i_13_n_0\,
      S(2) => \mem_in_b[7]_i_14_n_0\,
      S(1) => \mem_in_b[7]_i_15_n_0\,
      S(0) => \mem_in_b[7]_i_16_n_0\
    );
\mem_in_op_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => ex_in_op(0),
      Q => mem_in_op(0),
      R => '0'
    );
\mem_in_op_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => ex_in_op(1),
      Q => mem_in_op(1),
      R => '0'
    );
\mem_in_op_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => ex_in_op(2),
      Q => mem_in_op(2),
      R => '0'
    );
\mem_in_op_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => ex_in_op(3),
      Q => mem_in_op(3),
      R => '0'
    );
pc_inst: entity work.counter_heightbits
     port map (
      E(0) => pc_inst_n_0,
      Q(6 downto 0) => pc_leds_OBUF(6 downto 0),
      SR(0) => clear,
      clk_led_OBUF_BUFG => clk_led_OBUF_BUFG,
      dout0(5) => pc_inst_n_8,
      dout0(4) => pc_inst_n_9,
      dout0(3) => pc_inst_n_10,
      dout0(2) => pc_inst_n_11,
      dout0(1) => pc_inst_n_12,
      dout0(0) => pc_inst_n_13,
      \out\ => stall_pipeline
    );
\pc_leds_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => pc_leds_OBUF(0),
      O => pc_leds(0)
    );
\pc_leds_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => pc_leds_OBUF(1),
      O => pc_leds(1)
    );
\pc_leds_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => pc_leds_OBUF(2),
      O => pc_leds(2)
    );
\pc_leds_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => pc_leds_OBUF(3),
      O => pc_leds(3)
    );
\pc_leds_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => pc_leds_OBUF(4),
      O => pc_leds(4)
    );
\pc_leds_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => pc_leds_OBUF(5),
      O => pc_leds(5)
    );
\pc_leds_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => pc_leds_OBUF(6),
      O => pc_leds(6)
    );
ram_inst: entity work.ram
     port map (
      D(7 downto 0) => NLW_ram_inst_D_UNCONNECTED(7 downto 0),
      E(0) => NLW_ram_inst_E_UNCONNECTED(0),
      Q(7 downto 0) => reg_w_c(7 downto 0),
      SR(0) => clear,
      \base_pointer_reg[7]_0\(7 downto 0) => \NLW_ram_inst_base_pointer_reg[7]_0_UNCONNECTED\(7 downto 0),
      clk_led_OBUF_BUFG => NLW_ram_inst_clk_led_OBUF_BUFG_UNCONNECTED,
      \dout_reg[0]_0\ => \NLW_ram_inst_dout_reg[0]_0_UNCONNECTED\,
      in0(7 downto 0) => register_data(7 downto 0),
      mem_base_pointer_way => NLW_ram_inst_mem_base_pointer_way_UNCONNECTED,
      \out\ => reset_sync,
      \regs_reg[14][0]_0\ => \NLW_ram_inst_regs_reg[14][0]_0_UNCONNECTED\,
      \regs_reg[170][7]_0\(7 downto 0) => \NLW_ram_inst_regs_reg[170][7]_0_UNCONNECTED\(7 downto 0),
      \regs_reg[254][7]_0\(7 downto 0) => \NLW_ram_inst_regs_reg[254][7]_0_UNCONNECTED\(7 downto 0),
      \regs_reg[255][0]_0\(7 downto 0) => \NLW_ram_inst_regs_reg[255][0]_0_UNCONNECTED\(7 downto 0)
    );
\reg_w_a[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3774"
    )
        port map (
      I0 => mem_in_op(3),
      I1 => mem_in_op(2),
      I2 => mem_in_op(0),
      I3 => mem_in_op(1),
      O => reg_w_a0
    );
\reg_w_a_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => reg_w_a0,
      D => mem_in_a(0),
      Q => reg_w_a(0),
      R => '0'
    );
\reg_w_a_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => reg_w_a0,
      D => mem_in_a(1),
      Q => reg_w_a(1),
      R => '0'
    );
\reg_w_c[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => register_data(0),
      I1 => reg_w_a0,
      I2 => mem_in_b(0),
      O => \reg_w_c[0]_i_1_n_0\
    );
\reg_w_c[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => register_data(1),
      I1 => reg_w_a0,
      I2 => mem_in_b(1),
      O => \reg_w_c[1]_i_1_n_0\
    );
\reg_w_c[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => register_data(2),
      I1 => reg_w_a0,
      I2 => mem_in_b(2),
      O => \reg_w_c[2]_i_1_n_0\
    );
\reg_w_c[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => register_data(3),
      I1 => reg_w_a0,
      I2 => mem_in_b(3),
      O => \reg_w_c[3]_i_1_n_0\
    );
\reg_w_c[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => register_data(4),
      I1 => reg_w_a0,
      I2 => mem_in_b(4),
      O => \reg_w_c[4]_i_1_n_0\
    );
\reg_w_c[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => register_data(5),
      I1 => reg_w_a0,
      I2 => mem_in_b(5),
      O => \reg_w_c[5]_i_1_n_0\
    );
\reg_w_c[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => register_data(6),
      I1 => reg_w_a0,
      I2 => mem_in_b(6),
      O => \reg_w_c[6]_i_1_n_0\
    );
\reg_w_c[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"07EF"
    )
        port map (
      I0 => mem_in_op(1),
      I1 => mem_in_op(0),
      I2 => mem_in_op(3),
      I3 => mem_in_op(2),
      O => \reg_w_c[7]_i_1_n_0\
    );
\reg_w_c[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => register_data(7),
      I1 => reg_w_a0,
      I2 => mem_in_b(7),
      O => \reg_w_c[7]_i_2_n_0\
    );
\reg_w_c_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \reg_w_c[7]_i_1_n_0\,
      D => \reg_w_c[0]_i_1_n_0\,
      Q => reg_w_c(0),
      R => '0'
    );
\reg_w_c_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \reg_w_c[7]_i_1_n_0\,
      D => \reg_w_c[1]_i_1_n_0\,
      Q => reg_w_c(1),
      R => '0'
    );
\reg_w_c_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \reg_w_c[7]_i_1_n_0\,
      D => \reg_w_c[2]_i_1_n_0\,
      Q => reg_w_c(2),
      R => '0'
    );
\reg_w_c_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \reg_w_c[7]_i_1_n_0\,
      D => \reg_w_c[3]_i_1_n_0\,
      Q => reg_w_c(3),
      R => '0'
    );
\reg_w_c_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \reg_w_c[7]_i_1_n_0\,
      D => \reg_w_c[4]_i_1_n_0\,
      Q => reg_w_c(4),
      R => '0'
    );
\reg_w_c_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \reg_w_c[7]_i_1_n_0\,
      D => \reg_w_c[5]_i_1_n_0\,
      Q => reg_w_c(5),
      R => '0'
    );
\reg_w_c_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \reg_w_c[7]_i_1_n_0\,
      D => \reg_w_c[6]_i_1_n_0\,
      Q => reg_w_c(6),
      R => '0'
    );
\reg_w_c_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => \reg_w_c[7]_i_1_n_0\,
      D => \reg_w_c[7]_i_2_n_0\,
      Q => reg_w_c(7),
      R => '0'
    );
\reg_w_op_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => mem_in_op(0),
      Q => reg_w_op(0),
      R => '0'
    );
\reg_w_op_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => mem_in_op(1),
      Q => reg_w_op(1),
      R => '0'
    );
\reg_w_op_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => mem_in_op(2),
      Q => reg_w_op(2),
      R => '0'
    );
\reg_w_op_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => mem_in_op(3),
      Q => reg_w_op(3),
      R => '0'
    );
registers_inst: entity work.registers
     port map (
      Q(7 downto 4) => NLW_registers_inst_Q_UNCONNECTED(7 downto 4),
      Q(3 downto 0) => reg_w_op(3 downto 0),
      SR(0) => clear,
      clk_led_OBUF_BUFG => clk_led_OBUF_BUFG,
      di_in_b(3) => NLW_registers_inst_di_in_b_UNCONNECTED(3),
      di_in_b(2 downto 0) => di_in_b(2 downto 0),
      di_in_c(3) => NLW_registers_inst_di_in_c_UNCONNECTED(3),
      di_in_c(2) => rom_stall_fetched(7),
      di_in_c(1) => NLW_registers_inst_di_in_c_UNCONNECTED(1),
      di_in_c(0) => di_in_c(0),
      in0(7 downto 0) => register_a(7 downto 0),
      \out\(7 downto 0) => register_data(7 downto 0),
      \reg_w_op_reg[4]\ => \NLW_registers_inst_reg_w_op_reg[4]_UNCONNECTED\,
      \reg_w_op_reg[4]_0\ => \NLW_registers_inst_reg_w_op_reg[4]_0_UNCONNECTED\,
      register_b(7 downto 0) => register_b(7 downto 0),
      \regs_reg[0][0]_0\(3 downto 2) => \NLW_registers_inst_regs_reg[0][0]_0_UNCONNECTED\(3 downto 2),
      \regs_reg[0][0]_0\(1 downto 0) => reg_w_a(1 downto 0)
    );
reset_sync_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_IBUF,
      O => reset_sync_i_1_n_0
    );
reset_sync_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      CLR => reset_sync_i_1_n_0,
      D => '1',
      Q => reset_sync
    );
\rom_fetched[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF45FF00BA00FF00"
    )
        port map (
      I0 => \rom_fetched[31]_i_3_n_0\,
      I1 => \rom_fetched[31]_i_4_n_0\,
      I2 => \rom_fetched[31]_i_5_n_0\,
      I3 => rom_output(0),
      I4 => stall_pipeline_delayed,
      I5 => rom_stall_fetched(0),
      O => \rom_fetched[0]_i_1_n_0\
    );
\rom_fetched[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF45FF00BA00FF00"
    )
        port map (
      I0 => \rom_fetched[31]_i_3_n_0\,
      I1 => \rom_fetched[31]_i_4_n_0\,
      I2 => \rom_fetched[31]_i_5_n_0\,
      I3 => rom_output(10),
      I4 => stall_pipeline_delayed,
      I5 => rom_stall_fetched(10),
      O => \rom_fetched[10]_i_1_n_0\
    );
\rom_fetched[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF45FF00BA00FF00"
    )
        port map (
      I0 => \rom_fetched[31]_i_3_n_0\,
      I1 => \rom_fetched[31]_i_4_n_0\,
      I2 => \rom_fetched[31]_i_5_n_0\,
      I3 => rom_output(16),
      I4 => stall_pipeline_delayed,
      I5 => rom_stall_fetched(16),
      O => \rom_fetched[16]_i_1_n_0\
    );
\rom_fetched[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF45FF00BA00FF00"
    )
        port map (
      I0 => \rom_fetched[31]_i_3_n_0\,
      I1 => \rom_fetched[31]_i_4_n_0\,
      I2 => \rom_fetched[31]_i_5_n_0\,
      I3 => rom_output(0),
      I4 => stall_pipeline_delayed,
      I5 => rom_stall_fetched(17),
      O => \rom_fetched[17]_i_1_n_0\
    );
\rom_fetched[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF45FF00BA00FF00"
    )
        port map (
      I0 => \rom_fetched[31]_i_3_n_0\,
      I1 => \rom_fetched[31]_i_4_n_0\,
      I2 => \rom_fetched[31]_i_5_n_0\,
      I3 => rom_output(0),
      I4 => stall_pipeline_delayed,
      I5 => rom_stall_fetched(24),
      O => \rom_fetched[24]_i_1_n_0\
    );
\rom_fetched[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF45FF00BA00FF00"
    )
        port map (
      I0 => \rom_fetched[31]_i_3_n_0\,
      I1 => \rom_fetched[31]_i_4_n_0\,
      I2 => \rom_fetched[31]_i_5_n_0\,
      I3 => rom_output(10),
      I4 => stall_pipeline_delayed,
      I5 => rom_stall_fetched(25),
      O => \rom_fetched[25]_i_1_n_0\
    );
\rom_fetched[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF45FF00BA00FF00"
    )
        port map (
      I0 => \rom_fetched[31]_i_3_n_0\,
      I1 => \rom_fetched[31]_i_4_n_0\,
      I2 => \rom_fetched[31]_i_5_n_0\,
      I3 => rom_output(26),
      I4 => stall_pipeline_delayed,
      I5 => rom_stall_fetched(26),
      O => \rom_fetched[26]_i_1_n_0\
    );
\rom_fetched[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF45FF00BA00FF00"
    )
        port map (
      I0 => \rom_fetched[31]_i_3_n_0\,
      I1 => \rom_fetched[31]_i_4_n_0\,
      I2 => \rom_fetched[31]_i_5_n_0\,
      I3 => rom_output(9),
      I4 => stall_pipeline_delayed,
      I5 => rom_stall_fetched(27),
      O => \rom_fetched[27]_i_1_n_0\
    );
\rom_fetched[31]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rom_fetched(17),
      I1 => \di_in_a_reg_n_0_[1]\,
      I2 => rom_fetched(16),
      I3 => \di_in_a_reg_n_0_[0]\,
      O => \rom_fetched[31]_i_12_n_0\
    );
\rom_fetched[31]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009009"
    )
        port map (
      I0 => rom_fetched(9),
      I1 => \di_in_a_reg_n_0_[1]\,
      I2 => rom_fetched(8),
      I3 => \di_in_a_reg_n_0_[0]\,
      I4 => rom_fetched(10),
      O => \rom_fetched[31]_i_14_n_0\
    );
\rom_fetched[31]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \di_in_a_reg_n_0_[0]\,
      I1 => rom_stall_fetched(0),
      I2 => \di_in_a_reg_n_0_[1]\,
      O => \rom_fetched[31]_i_20_n_0\
    );
\rom_fetched[31]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \di_in_a_reg_n_0_[0]\,
      I1 => rom_fetched(0),
      I2 => \di_in_a_reg_n_0_[1]\,
      O => \rom_fetched[31]_i_22_n_0\
    );
\rom_fetched[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8AA"
    )
        port map (
      I0 => \rom_fetched[31]_i_5_n_0\,
      I1 => \rom_fetched[31]_i_7_n_0\,
      I2 => \rom_fetched[31]_i_9_n_0\,
      I3 => \rom_fetched[31]_i_20_n_0\,
      O => \rom_fetched[31]_i_3_n_0\
    );
\rom_fetched[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \rom_fetched[31]_i_22_n_0\,
      I1 => \rom_fetched[31]_i_12_n_0\,
      I2 => \rom_fetched[31]_i_14_n_0\,
      O => \rom_fetched[31]_i_4_n_0\
    );
\rom_fetched[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => di_in_op(2),
      I1 => di_in_op(3),
      I2 => di_in_op(0),
      I3 => di_in_op(1),
      O => \rom_fetched[31]_i_5_n_0\
    );
\rom_fetched[31]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009009"
    )
        port map (
      I0 => rom_stall_fetched(9),
      I1 => \di_in_a_reg_n_0_[1]\,
      I2 => rom_stall_fetched(8),
      I3 => \di_in_a_reg_n_0_[0]\,
      I4 => rom_stall_fetched(10),
      O => \rom_fetched[31]_i_7_n_0\
    );
\rom_fetched[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rom_stall_fetched(17),
      I1 => \di_in_a_reg_n_0_[1]\,
      I2 => rom_stall_fetched(16),
      I3 => \di_in_a_reg_n_0_[0]\,
      O => \rom_fetched[31]_i_9_n_0\
    );
\rom_fetched[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF45FF00BA00FF00"
    )
        port map (
      I0 => \rom_fetched[31]_i_3_n_0\,
      I1 => \rom_fetched[31]_i_4_n_0\,
      I2 => \rom_fetched[31]_i_5_n_0\,
      I3 => rom_output(8),
      I4 => stall_pipeline_delayed,
      I5 => rom_stall_fetched(8),
      O => \rom_fetched[8]_i_1_n_0\
    );
\rom_fetched[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF45FF00BA00FF00"
    )
        port map (
      I0 => \rom_fetched[31]_i_3_n_0\,
      I1 => \rom_fetched[31]_i_4_n_0\,
      I2 => \rom_fetched[31]_i_5_n_0\,
      I3 => rom_output(9),
      I4 => stall_pipeline_delayed,
      I5 => rom_stall_fetched(9),
      O => \rom_fetched[9]_i_1_n_0\
    );
\rom_fetched_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => pc_inst_n_0,
      D => \rom_fetched[0]_i_1_n_0\,
      Q => rom_fetched(0),
      R => '0'
    );
\rom_fetched_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => pc_inst_n_0,
      D => \rom_fetched[10]_i_1_n_0\,
      Q => rom_fetched(10),
      R => '0'
    );
\rom_fetched_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => pc_inst_n_0,
      D => \rom_fetched[16]_i_1_n_0\,
      Q => rom_fetched(16),
      R => '0'
    );
\rom_fetched_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => pc_inst_n_0,
      D => \rom_fetched[17]_i_1_n_0\,
      Q => rom_fetched(17),
      R => '0'
    );
\rom_fetched_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => pc_inst_n_0,
      D => \rom_fetched[24]_i_1_n_0\,
      Q => rom_fetched(24),
      R => '0'
    );
\rom_fetched_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => pc_inst_n_0,
      D => \rom_fetched[25]_i_1_n_0\,
      Q => rom_fetched(25),
      R => '0'
    );
\rom_fetched_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => pc_inst_n_0,
      D => \rom_fetched[26]_i_1_n_0\,
      Q => rom_fetched(26),
      R => '0'
    );
\rom_fetched_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => pc_inst_n_0,
      D => \rom_fetched[27]_i_1_n_0\,
      Q => rom_fetched(27),
      R => '0'
    );
\rom_fetched_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => pc_inst_n_0,
      D => \rom_fetched[8]_i_1_n_0\,
      Q => rom_fetched(8),
      R => '0'
    );
\rom_fetched_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => pc_inst_n_0,
      D => \rom_fetched[9]_i_1_n_0\,
      Q => rom_fetched(9),
      R => '0'
    );
rom_inst: entity work.rom
     port map (
      D(5) => pc_inst_n_8,
      D(4) => pc_inst_n_9,
      D(3) => pc_inst_n_10,
      D(2) => pc_inst_n_11,
      D(1) => pc_inst_n_12,
      D(0) => pc_inst_n_13,
      Q(5) => rom_output(9),
      Q(4) => rom_output(26),
      Q(3) => rom_output(10),
      Q(2) => rom_output(0),
      Q(1) => rom_output(16),
      Q(0) => rom_output(8),
      SR(0) => clear,
      clk_led_OBUF_BUFG => clk_led_OBUF_BUFG
    );
\rom_stall_fetched[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => stall_pipeline,
      I1 => stall_pipeline_delayed,
      O => rom_stall_fetched_reg0
    );
\rom_stall_fetched_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => rom_stall_fetched_reg0,
      D => rom_output(0),
      Q => rom_stall_fetched(0),
      R => '0'
    );
\rom_stall_fetched_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => rom_stall_fetched_reg0,
      D => rom_output(10),
      Q => rom_stall_fetched(10),
      R => '0'
    );
\rom_stall_fetched_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => rom_stall_fetched_reg0,
      D => rom_output(16),
      Q => rom_stall_fetched(16),
      R => '0'
    );
\rom_stall_fetched_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => rom_stall_fetched_reg0,
      D => rom_output(0),
      Q => rom_stall_fetched(17),
      R => '0'
    );
\rom_stall_fetched_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => rom_stall_fetched_reg0,
      D => rom_output(0),
      Q => rom_stall_fetched(24),
      R => '0'
    );
\rom_stall_fetched_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => rom_stall_fetched_reg0,
      D => rom_output(10),
      Q => rom_stall_fetched(25),
      R => '0'
    );
\rom_stall_fetched_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => rom_stall_fetched_reg0,
      D => rom_output(26),
      Q => rom_stall_fetched(26),
      R => '0'
    );
\rom_stall_fetched_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => rom_stall_fetched_reg0,
      D => rom_output(9),
      Q => rom_stall_fetched(27),
      R => '0'
    );
\rom_stall_fetched_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => rom_stall_fetched_reg0,
      D => rom_output(8),
      Q => rom_stall_fetched(8),
      R => '0'
    );
\rom_stall_fetched_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => rom_stall_fetched_reg0,
      D => rom_output(9),
      Q => rom_stall_fetched(9),
      R => '0'
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
\seg_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(0),
      O => seg(0)
    );
\seg_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(1),
      O => seg(1)
    );
\seg_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(2),
      O => seg(2)
    );
\seg_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(3),
      O => seg(3)
    );
\seg_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(4),
      O => seg(4)
    );
\seg_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(5),
      O => seg(5)
    );
\seg_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(6),
      O => seg(6)
    );
seven_seg_inst: entity work.seven_seg_controller
     port map (
      an_OBUF(3 downto 0) => an_OBUF(3 downto 0),
      clk_external_IBUF_BUFG => clk_external_IBUF_BUFG,
      \out\(7 downto 4) => NLW_seven_seg_inst_out_UNCONNECTED(7 downto 4),
      \out\(3 downto 0) => rom_fetched(27 downto 24),
      seg_OBUF(6 downto 0) => seg_OBUF(6 downto 0),
      \seg_OBUF[0]_inst_i_1_0\(7 downto 4) => \NLW_seven_seg_inst_seg_OBUF[0]_inst_i_1_0_UNCONNECTED\(7 downto 4),
      \seg_OBUF[0]_inst_i_1_0\(3 downto 0) => di_in_op(3 downto 0)
    );
stall_pipeline_delayed_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => stall_pipeline,
      I1 => reset_sync,
      O => stall_pipeline_delayed_i_1_n_0
    );
stall_pipeline_delayed_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => stall_pipeline_delayed_i_1_n_0,
      Q => stall_pipeline_delayed,
      R => '0'
    );
stall_pipeline_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => stall_pipeline_i_2_n_0,
      I1 => stall_pipeline_i_3_n_0,
      I2 => stall_pipeline_i_4_n_0,
      I3 => \rom_fetched[31]_i_3_n_0\,
      I4 => stall_pipeline_i_5_n_0,
      I5 => stall_pipeline_i_6_n_0,
      O => ns
    );
stall_pipeline_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => stall_pipeline_i_91_n_0,
      I1 => stall_pipeline_i_93_n_0,
      I2 => stall_pipeline_i_95_n_0,
      I3 => stall_pipeline_i_97_n_0,
      I4 => stall_pipeline_i_99_n_0,
      I5 => stall_pipeline_i_101_n_0,
      O => stall_pipeline_i_10_n_0
    );
stall_pipeline_i_101: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => reg_w_a(0),
      I1 => rom_output(16),
      I2 => rom_output(0),
      I3 => reg_w_a(1),
      O => stall_pipeline_i_101_n_0
    );
stall_pipeline_i_103: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => ex_in_a(0),
      I1 => rom_output(16),
      I2 => rom_output(0),
      I3 => ex_in_a(1),
      O => stall_pipeline_i_103_n_0
    );
stall_pipeline_i_105: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6FF6"
    )
        port map (
      I0 => ex_in_a(0),
      I1 => rom_output(8),
      I2 => rom_output(9),
      I3 => ex_in_a(1),
      I4 => rom_output(10),
      O => stall_pipeline_i_105_n_0
    );
stall_pipeline_i_107: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => ex_in_a(0),
      I1 => rom_output(0),
      I2 => ex_in_a(1),
      O => stall_pipeline_i_107_n_0
    );
stall_pipeline_i_109: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => rom_fetched(16),
      I1 => ex_in_a(0),
      I2 => ex_in_a(1),
      I3 => rom_fetched(17),
      O => stall_pipeline_i_109_n_0
    );
stall_pipeline_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ex_in_op(2),
      I1 => ex_in_op(3),
      I2 => ex_in_op(1),
      I3 => ex_in_op(0),
      O => stall_pipeline_i_11_n_0
    );
stall_pipeline_i_111: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6FFFFF6"
    )
        port map (
      I0 => rom_fetched(8),
      I1 => ex_in_a(0),
      I2 => rom_fetched(10),
      I3 => ex_in_a(1),
      I4 => rom_fetched(9),
      O => stall_pipeline_i_111_n_0
    );
stall_pipeline_i_113: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => rom_fetched(0),
      I1 => ex_in_a(0),
      I2 => ex_in_a(1),
      O => stall_pipeline_i_113_n_0
    );
stall_pipeline_i_115: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6FFFFF6"
    )
        port map (
      I0 => rom_fetched(8),
      I1 => rom_stall_fetched(16),
      I2 => rom_fetched(10),
      I3 => rom_stall_fetched(17),
      I4 => rom_fetched(9),
      O => stall_pipeline_i_115_n_0
    );
stall_pipeline_i_117: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => rom_fetched(16),
      I1 => rom_stall_fetched(16),
      I2 => rom_stall_fetched(17),
      I3 => rom_fetched(17),
      O => stall_pipeline_i_117_n_0
    );
stall_pipeline_i_119: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6FFFFF6"
    )
        port map (
      I0 => rom_fetched(8),
      I1 => rom_output(16),
      I2 => rom_fetched(10),
      I3 => rom_output(0),
      I4 => rom_fetched(9),
      O => stall_pipeline_i_119_n_0
    );
stall_pipeline_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => stall_pipeline_i_103_n_0,
      I1 => stall_pipeline_i_105_n_0,
      I2 => stall_pipeline_i_107_n_0,
      I3 => stall_pipeline_i_109_n_0,
      I4 => stall_pipeline_i_111_n_0,
      I5 => stall_pipeline_i_113_n_0,
      O => stall_pipeline_i_12_n_0
    );
stall_pipeline_i_121: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => rom_fetched(16),
      I1 => rom_output(16),
      I2 => rom_output(0),
      I3 => rom_fetched(17),
      O => stall_pipeline_i_121_n_0
    );
stall_pipeline_i_123: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rom_fetched(27),
      I1 => rom_fetched(25),
      O => stall_pipeline_i_123_n_0
    );
stall_pipeline_i_124: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6FFFFF6"
    )
        port map (
      I0 => reg_w_a(0),
      I1 => rom_fetched(8),
      I2 => rom_fetched(10),
      I3 => rom_fetched(9),
      I4 => reg_w_a(1),
      O => stall_pipeline_i_124_n_0
    );
stall_pipeline_i_126: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => reg_w_a(0),
      I1 => rom_fetched(16),
      I2 => rom_fetched(17),
      I3 => reg_w_a(1),
      O => stall_pipeline_i_126_n_0
    );
stall_pipeline_i_128: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => reg_w_a(0),
      I1 => rom_fetched(0),
      I2 => reg_w_a(1),
      O => stall_pipeline_i_128_n_0
    );
stall_pipeline_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFE100"
    )
        port map (
      I0 => ex_in_op(1),
      I1 => ex_in_op(0),
      I2 => ex_in_op(2),
      I3 => ex_in_op(3),
      I4 => stall_pipeline_i_55_n_0,
      O => stall_pipeline_i_16_n_0
    );
stall_pipeline_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8882"
    )
        port map (
      I0 => reg_w_op(3),
      I1 => reg_w_op(2),
      I2 => reg_w_op(1),
      I3 => reg_w_op(0),
      O => stall_pipeline_i_17_n_0
    );
stall_pipeline_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => mem_in_op(1),
      I1 => mem_in_op(0),
      I2 => mem_in_op(2),
      I3 => mem_in_op(3),
      O => stall_pipeline_i_18_n_0
    );
stall_pipeline_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => reg_w_op(0),
      I1 => reg_w_op(1),
      I2 => reg_w_op(3),
      I3 => reg_w_op(2),
      O => stall_pipeline_i_19_n_0
    );
stall_pipeline_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => stall_pipeline_i_7_n_0,
      I1 => stall_pipeline_i_8_n_0,
      I2 => stall_pipeline_i_9_n_0,
      I3 => stall_pipeline_i_10_n_0,
      I4 => stall_pipeline_i_11_n_0,
      I5 => stall_pipeline_i_12_n_0,
      O => stall_pipeline_i_2_n_0
    );
stall_pipeline_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8882"
    )
        port map (
      I0 => mem_in_op(3),
      I1 => mem_in_op(2),
      I2 => mem_in_op(1),
      I3 => mem_in_op(0),
      O => stall_pipeline_i_20_n_0
    );
stall_pipeline_i_22: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007FFF"
    )
        port map (
      I0 => stall_pipeline_i_115_n_0,
      I1 => stall_pipeline_i_117_n_0,
      I2 => stall_pipeline_i_119_n_0,
      I3 => stall_pipeline_i_121_n_0,
      I4 => stall_pipeline_i_63_n_0,
      O => stall_pipeline_i_22_n_0
    );
stall_pipeline_i_29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => stall_pipeline_i_9_n_0,
      I1 => stall_pipeline_i_124_n_0,
      I2 => stall_pipeline_i_126_n_0,
      I3 => stall_pipeline_i_128_n_0,
      O => stall_pipeline_i_29_n_0
    );
stall_pipeline_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAAAAAA"
    )
        port map (
      I0 => \rom_fetched[31]_i_5_n_0\,
      I1 => stall_pipeline_i_48_n_0,
      I2 => stall_pipeline_i_50_n_0,
      I3 => stall_pipeline_i_52_n_0,
      I4 => \rom_fetched[31]_i_4_n_0\,
      O => stall_pipeline_i_3_n_0
    );
stall_pipeline_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => stall_pipeline_i_16_n_0,
      I1 => stall_pipeline_i_17_n_0,
      I2 => stall_pipeline_i_18_n_0,
      I3 => stall_pipeline_i_19_n_0,
      I4 => stall_pipeline_i_20_n_0,
      I5 => stall_pipeline_i_58_n_0,
      O => stall_pipeline_i_4_n_0
    );
stall_pipeline_i_48: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => \di_in_a_reg_n_0_[0]\,
      I1 => rom_output(0),
      I2 => \di_in_a_reg_n_0_[1]\,
      O => stall_pipeline_i_48_n_0
    );
stall_pipeline_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFAAAA"
    )
        port map (
      I0 => stall_pipeline_i_22_n_0,
      I1 => stall_pipeline_i_64_n_0,
      I2 => stall_pipeline_i_66_n_0,
      I3 => stall_pipeline_i_68_n_0,
      I4 => stall_pipeline_i_8_n_0,
      O => stall_pipeline_i_5_n_0
    );
stall_pipeline_i_50: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6FFFFF6"
    )
        port map (
      I0 => \di_in_a_reg_n_0_[0]\,
      I1 => rom_output(8),
      I2 => rom_output(10),
      I3 => rom_output(9),
      I4 => \di_in_a_reg_n_0_[1]\,
      O => stall_pipeline_i_50_n_0
    );
stall_pipeline_i_52: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \di_in_a_reg_n_0_[0]\,
      I1 => rom_output(16),
      I2 => rom_output(0),
      I3 => \di_in_a_reg_n_0_[1]\,
      O => stall_pipeline_i_52_n_0
    );
stall_pipeline_i_55: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C882"
    )
        port map (
      I0 => di_in_op(3),
      I1 => di_in_op(2),
      I2 => di_in_op(0),
      I3 => di_in_op(1),
      O => stall_pipeline_i_55_n_0
    );
stall_pipeline_i_58: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => ex_in_op(0),
      I1 => ex_in_op(1),
      I2 => ex_in_op(2),
      I3 => ex_in_op(3),
      O => stall_pipeline_i_58_n_0
    );
stall_pipeline_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7F00"
    )
        port map (
      I0 => stall_pipeline_i_70_n_0,
      I1 => stall_pipeline_i_72_n_0,
      I2 => stall_pipeline_i_74_n_0,
      I3 => stall_pipeline_i_11_n_0,
      I4 => stall_pipeline_i_29_n_0,
      O => stall_pipeline_i_6_n_0
    );
stall_pipeline_i_63: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAB"
    )
        port map (
      I0 => stall_pipeline_delayed_i_1_n_0,
      I1 => stall_pipeline_i_123_n_0,
      I2 => rom_fetched(26),
      I3 => rom_fetched(24),
      O => stall_pipeline_i_63_n_0
    );
stall_pipeline_i_64: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => mem_in_a(0),
      I1 => rom_stall_fetched(0),
      I2 => mem_in_a(1),
      O => stall_pipeline_i_64_n_0
    );
stall_pipeline_i_66: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => mem_in_a(0),
      I1 => rom_stall_fetched(16),
      I2 => rom_stall_fetched(17),
      I3 => mem_in_a(1),
      O => stall_pipeline_i_66_n_0
    );
stall_pipeline_i_68: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6FFFFF6"
    )
        port map (
      I0 => mem_in_a(0),
      I1 => rom_stall_fetched(8),
      I2 => rom_stall_fetched(10),
      I3 => rom_stall_fetched(9),
      I4 => mem_in_a(1),
      O => stall_pipeline_i_68_n_0
    );
stall_pipeline_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => stall_pipeline_i_79_n_0,
      I1 => stall_pipeline_i_81_n_0,
      I2 => stall_pipeline_i_83_n_0,
      I3 => stall_pipeline_i_85_n_0,
      I4 => stall_pipeline_i_87_n_0,
      I5 => stall_pipeline_i_89_n_0,
      O => stall_pipeline_i_7_n_0
    );
stall_pipeline_i_70: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => ex_in_a(0),
      I1 => rom_stall_fetched(0),
      I2 => ex_in_a(1),
      O => stall_pipeline_i_70_n_0
    );
stall_pipeline_i_72: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => ex_in_a(0),
      I1 => rom_stall_fetched(16),
      I2 => rom_stall_fetched(17),
      I3 => ex_in_a(1),
      O => stall_pipeline_i_72_n_0
    );
stall_pipeline_i_74: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6FFFFF6"
    )
        port map (
      I0 => ex_in_a(0),
      I1 => rom_stall_fetched(8),
      I2 => rom_stall_fetched(10),
      I3 => rom_stall_fetched(9),
      I4 => ex_in_a(1),
      O => stall_pipeline_i_74_n_0
    );
stall_pipeline_i_79: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6FF6"
    )
        port map (
      I0 => mem_in_a(0),
      I1 => rom_output(8),
      I2 => rom_output(9),
      I3 => mem_in_a(1),
      I4 => rom_output(10),
      O => stall_pipeline_i_79_n_0
    );
stall_pipeline_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => mem_in_op(2),
      I1 => mem_in_op(3),
      I2 => mem_in_op(0),
      I3 => mem_in_op(1),
      O => stall_pipeline_i_8_n_0
    );
stall_pipeline_i_81: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6FF6"
    )
        port map (
      I0 => mem_in_a(0),
      I1 => rom_fetched(8),
      I2 => rom_fetched(9),
      I3 => mem_in_a(1),
      I4 => rom_fetched(10),
      O => stall_pipeline_i_81_n_0
    );
stall_pipeline_i_83: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => mem_in_a(0),
      I1 => rom_output(0),
      I2 => mem_in_a(1),
      O => stall_pipeline_i_83_n_0
    );
stall_pipeline_i_85: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => mem_in_a(0),
      I1 => rom_output(16),
      I2 => rom_output(0),
      I3 => mem_in_a(1),
      O => stall_pipeline_i_85_n_0
    );
stall_pipeline_i_87: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => mem_in_a(0),
      I1 => rom_fetched(16),
      I2 => rom_fetched(17),
      I3 => mem_in_a(1),
      O => stall_pipeline_i_87_n_0
    );
stall_pipeline_i_89: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => mem_in_a(0),
      I1 => rom_fetched(0),
      I2 => mem_in_a(1),
      O => stall_pipeline_i_89_n_0
    );
stall_pipeline_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => reg_w_op(2),
      I1 => reg_w_op(3),
      I2 => reg_w_op(0),
      I3 => reg_w_op(1),
      O => stall_pipeline_i_9_n_0
    );
stall_pipeline_i_91: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => reg_w_a(0),
      I1 => rom_output(0),
      I2 => reg_w_a(1),
      O => stall_pipeline_i_91_n_0
    );
stall_pipeline_i_93: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => reg_w_a(0),
      I1 => rom_stall_fetched(0),
      I2 => reg_w_a(1),
      O => stall_pipeline_i_93_n_0
    );
stall_pipeline_i_95: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6FFFFF6"
    )
        port map (
      I0 => reg_w_a(0),
      I1 => rom_stall_fetched(8),
      I2 => rom_stall_fetched(10),
      I3 => rom_stall_fetched(9),
      I4 => reg_w_a(1),
      O => stall_pipeline_i_95_n_0
    );
stall_pipeline_i_97: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6FFFFF6"
    )
        port map (
      I0 => reg_w_a(0),
      I1 => rom_output(8),
      I2 => rom_output(10),
      I3 => rom_output(9),
      I4 => reg_w_a(1),
      O => stall_pipeline_i_97_n_0
    );
stall_pipeline_i_99: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => reg_w_a(0),
      I1 => rom_stall_fetched(16),
      I2 => rom_stall_fetched(17),
      I3 => reg_w_a(1),
      O => stall_pipeline_i_99_n_0
    );
stall_pipeline_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_led_OBUF_BUFG,
      CE => '1',
      D => ns,
      Q => stall_pipeline,
      R => '0'
    );
end STRUCTURE;
