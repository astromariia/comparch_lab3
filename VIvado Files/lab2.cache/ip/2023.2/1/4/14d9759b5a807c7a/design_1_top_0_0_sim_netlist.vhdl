-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Fri Apr 11 16:34:05 2025
-- Host        : CEAT-ENDV350-02L running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_top_0_0_sim_netlist.vhdl
-- Design      : design_1_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MemControl is
  port (
    Done : out STD_LOGIC;
    MStrobe : in STD_LOGIC;
    MemWrite : in STD_LOGIC;
    Trigger : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    DRW : out STD_LOGIC;
    AXIstart : out STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MemControl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MemControl is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal nextstate : STD_LOGIC_VECTOR ( 0 to 0 );
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of AXIstart_INST_0 : label is "soft_lutpair229";
  attribute SOFT_HLUTNM of DRW_INST_0 : label is "soft_lutpair228";
  attribute SOFT_HLUTNM of Done_INST_0 : label is "soft_lutpair229";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair228";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010";
begin
AXIstart_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      O => AXIstart
    );
DRW_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      O => DRW
    );
Done_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      O => Done
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => nextstate(0),
      I1 => reset,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101010105D585858"
    )
        port map (
      I0 => state(1),
      I1 => Trigger,
      I2 => state(2),
      I3 => MemWrite,
      I4 => MStrobe,
      I5 => state(0),
      O => nextstate(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001A12"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      I3 => Trigger,
      I4 => reset,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AABA"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => MStrobe,
      I3 => MemWrite,
      I4 => state(1),
      I5 => reset,
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder is
  port (
    \q_reg[62]\ : out STD_LOGIC_VECTOR ( 27 downto 0 );
    PCTargetEmux : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 30 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[15]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[19]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[23]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[27]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[31]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder is
  signal \y_carry__0_n_0\ : STD_LOGIC;
  signal \y_carry__0_n_1\ : STD_LOGIC;
  signal \y_carry__0_n_2\ : STD_LOGIC;
  signal \y_carry__0_n_3\ : STD_LOGIC;
  signal \y_carry__1_n_0\ : STD_LOGIC;
  signal \y_carry__1_n_1\ : STD_LOGIC;
  signal \y_carry__1_n_2\ : STD_LOGIC;
  signal \y_carry__1_n_3\ : STD_LOGIC;
  signal \y_carry__2_n_0\ : STD_LOGIC;
  signal \y_carry__2_n_1\ : STD_LOGIC;
  signal \y_carry__2_n_2\ : STD_LOGIC;
  signal \y_carry__2_n_3\ : STD_LOGIC;
  signal \y_carry__3_n_0\ : STD_LOGIC;
  signal \y_carry__3_n_1\ : STD_LOGIC;
  signal \y_carry__3_n_2\ : STD_LOGIC;
  signal \y_carry__3_n_3\ : STD_LOGIC;
  signal \y_carry__4_n_0\ : STD_LOGIC;
  signal \y_carry__4_n_1\ : STD_LOGIC;
  signal \y_carry__4_n_2\ : STD_LOGIC;
  signal \y_carry__4_n_3\ : STD_LOGIC;
  signal \y_carry__5_n_0\ : STD_LOGIC;
  signal \y_carry__5_n_1\ : STD_LOGIC;
  signal \y_carry__5_n_2\ : STD_LOGIC;
  signal \y_carry__5_n_3\ : STD_LOGIC;
  signal \y_carry__6_n_1\ : STD_LOGIC;
  signal \y_carry__6_n_2\ : STD_LOGIC;
  signal \y_carry__6_n_3\ : STD_LOGIC;
  signal y_carry_n_0 : STD_LOGIC;
  signal y_carry_n_1 : STD_LOGIC;
  signal y_carry_n_2 : STD_LOGIC;
  signal y_carry_n_3 : STD_LOGIC;
  signal \NLW_y_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of y_carry : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__6\ : label is 35;
begin
y_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y_carry_n_0,
      CO(2) => y_carry_n_1,
      CO(1) => y_carry_n_2,
      CO(0) => y_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => Q(3 downto 0),
      O(3) => \q_reg[62]\(0),
      O(2 downto 0) => PCTargetEmux(2 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\y_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => y_carry_n_0,
      CO(3) => \y_carry__0_n_0\,
      CO(2) => \y_carry__0_n_1\,
      CO(1) => \y_carry__0_n_2\,
      CO(0) => \y_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(7 downto 4),
      O(3 downto 0) => \q_reg[62]\(4 downto 1),
      S(3 downto 0) => \q_reg[7]\(3 downto 0)
    );
\y_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__0_n_0\,
      CO(3) => \y_carry__1_n_0\,
      CO(2) => \y_carry__1_n_1\,
      CO(1) => \y_carry__1_n_2\,
      CO(0) => \y_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(11 downto 8),
      O(3 downto 0) => \q_reg[62]\(8 downto 5),
      S(3 downto 0) => \q_reg[11]\(3 downto 0)
    );
\y_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__1_n_0\,
      CO(3) => \y_carry__2_n_0\,
      CO(2) => \y_carry__2_n_1\,
      CO(1) => \y_carry__2_n_2\,
      CO(0) => \y_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(15 downto 12),
      O(3 downto 0) => \q_reg[62]\(12 downto 9),
      S(3 downto 0) => \q_reg[15]\(3 downto 0)
    );
\y_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__2_n_0\,
      CO(3) => \y_carry__3_n_0\,
      CO(2) => \y_carry__3_n_1\,
      CO(1) => \y_carry__3_n_2\,
      CO(0) => \y_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(19 downto 16),
      O(3 downto 0) => \q_reg[62]\(16 downto 13),
      S(3 downto 0) => \q_reg[19]\(3 downto 0)
    );
\y_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__3_n_0\,
      CO(3) => \y_carry__4_n_0\,
      CO(2) => \y_carry__4_n_1\,
      CO(1) => \y_carry__4_n_2\,
      CO(0) => \y_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(23 downto 20),
      O(3 downto 0) => \q_reg[62]\(20 downto 17),
      S(3 downto 0) => \q_reg[23]\(3 downto 0)
    );
\y_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__4_n_0\,
      CO(3) => \y_carry__5_n_0\,
      CO(2) => \y_carry__5_n_1\,
      CO(1) => \y_carry__5_n_2\,
      CO(0) => \y_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(27 downto 24),
      O(3 downto 0) => \q_reg[62]\(24 downto 21),
      S(3 downto 0) => \q_reg[27]\(3 downto 0)
    );
\y_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__5_n_0\,
      CO(3) => \NLW_y_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \y_carry__6_n_1\,
      CO(1) => \y_carry__6_n_2\,
      CO(0) => \y_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => Q(30 downto 28),
      O(3) => \q_reg[62]\(27),
      O(2) => PCTargetEmux(3),
      O(1 downto 0) => \q_reg[62]\(26 downto 25),
      S(3 downto 0) => \q_reg[31]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0 is
  port (
    \q_reg[31]\ : out STD_LOGIC_VECTOR ( 27 downto 0 );
    O : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 28 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 29 downto 0 );
    PCSrcE : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0 : entity is "adder";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0 is
  signal \^o\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q_reg[31]\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \y_carry__0_n_0\ : STD_LOGIC;
  signal \y_carry__0_n_1\ : STD_LOGIC;
  signal \y_carry__0_n_2\ : STD_LOGIC;
  signal \y_carry__0_n_3\ : STD_LOGIC;
  signal \y_carry__1_n_0\ : STD_LOGIC;
  signal \y_carry__1_n_1\ : STD_LOGIC;
  signal \y_carry__1_n_2\ : STD_LOGIC;
  signal \y_carry__1_n_3\ : STD_LOGIC;
  signal \y_carry__2_n_0\ : STD_LOGIC;
  signal \y_carry__2_n_1\ : STD_LOGIC;
  signal \y_carry__2_n_2\ : STD_LOGIC;
  signal \y_carry__2_n_3\ : STD_LOGIC;
  signal \y_carry__3_n_0\ : STD_LOGIC;
  signal \y_carry__3_n_1\ : STD_LOGIC;
  signal \y_carry__3_n_2\ : STD_LOGIC;
  signal \y_carry__3_n_3\ : STD_LOGIC;
  signal \y_carry__4_n_0\ : STD_LOGIC;
  signal \y_carry__4_n_1\ : STD_LOGIC;
  signal \y_carry__4_n_2\ : STD_LOGIC;
  signal \y_carry__4_n_3\ : STD_LOGIC;
  signal \y_carry__5_n_0\ : STD_LOGIC;
  signal \y_carry__5_n_1\ : STD_LOGIC;
  signal \y_carry__5_n_2\ : STD_LOGIC;
  signal \y_carry__5_n_3\ : STD_LOGIC;
  signal y_carry_n_0 : STD_LOGIC;
  signal y_carry_n_1 : STD_LOGIC;
  signal y_carry_n_2 : STD_LOGIC;
  signal y_carry_n_3 : STD_LOGIC;
  signal \NLW_y_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q[10]_i_1__2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \q[11]_i_1__2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \q[12]_i_1__2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \q[13]_i_1__2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \q[14]_i_1__2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \q[15]_i_1__2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \q[16]_i_1__1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \q[17]_i_1__2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \q[18]_i_1__1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \q[19]_i_1__1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \q[20]_i_1__1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \q[21]_i_1__1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \q[22]_i_1__1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \q[23]_i_1__1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \q[24]_i_1__1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \q[25]_i_1__1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \q[26]_i_1__1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \q[27]_i_1__1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \q[28]_i_1__1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \q[29]_i_1__1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \q[30]_i_1__1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \q[3]_i_1__2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \q[4]_i_1__2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \q[5]_i_1__2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \q[6]_i_1__2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \q[7]_i_1__2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \q[8]_i_1__2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \q[9]_i_1__2\ : label is "soft_lutpair46";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of y_carry : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \y_carry__6\ : label is 35;
begin
  O(0) <= \^o\(0);
  \q_reg[31]\(27 downto 0) <= \^q_reg[31]\(27 downto 0);
\q[10]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[31]\(7),
      I1 => PCSrcE,
      O => D(7)
    );
\q[11]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[31]\(8),
      I1 => PCSrcE,
      O => D(8)
    );
\q[12]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[31]\(9),
      I1 => PCSrcE,
      O => D(9)
    );
\q[13]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[31]\(10),
      I1 => PCSrcE,
      O => D(10)
    );
\q[14]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[31]\(11),
      I1 => PCSrcE,
      O => D(11)
    );
\q[15]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[31]\(12),
      I1 => PCSrcE,
      O => D(12)
    );
\q[16]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[31]\(13),
      I1 => PCSrcE,
      O => D(13)
    );
\q[17]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[31]\(14),
      I1 => PCSrcE,
      O => D(14)
    );
\q[18]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[31]\(15),
      I1 => PCSrcE,
      O => D(15)
    );
\q[19]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[31]\(16),
      I1 => PCSrcE,
      O => D(16)
    );
\q[20]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[31]\(17),
      I1 => PCSrcE,
      O => D(17)
    );
\q[21]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[31]\(18),
      I1 => PCSrcE,
      O => D(18)
    );
\q[22]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[31]\(19),
      I1 => PCSrcE,
      O => D(19)
    );
\q[23]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[31]\(20),
      I1 => PCSrcE,
      O => D(20)
    );
\q[24]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[31]\(21),
      I1 => PCSrcE,
      O => D(21)
    );
\q[25]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[31]\(22),
      I1 => PCSrcE,
      O => D(22)
    );
\q[26]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[31]\(23),
      I1 => PCSrcE,
      O => D(23)
    );
\q[27]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[31]\(24),
      I1 => PCSrcE,
      O => D(24)
    );
\q[28]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[31]\(25),
      I1 => PCSrcE,
      O => D(25)
    );
\q[29]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[31]\(26),
      I1 => PCSrcE,
      O => D(26)
    );
\q[30]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^o\(0),
      I1 => PCSrcE,
      O => D(27)
    );
\q[31]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[31]\(27),
      I1 => PCSrcE,
      O => D(28)
    );
\q[3]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[31]\(0),
      I1 => PCSrcE,
      O => D(0)
    );
\q[4]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[31]\(1),
      I1 => PCSrcE,
      O => D(1)
    );
\q[5]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[31]\(2),
      I1 => PCSrcE,
      O => D(2)
    );
\q[6]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[31]\(3),
      I1 => PCSrcE,
      O => D(3)
    );
\q[7]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[31]\(4),
      I1 => PCSrcE,
      O => D(4)
    );
\q[8]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[31]\(5),
      I1 => PCSrcE,
      O => D(5)
    );
\q[9]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[31]\(6),
      I1 => PCSrcE,
      O => D(6)
    );
y_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y_carry_n_0,
      CO(2) => y_carry_n_1,
      CO(1) => y_carry_n_2,
      CO(0) => y_carry_n_3,
      CYINIT => Q(0),
      DI(3 downto 0) => Q(4 downto 1),
      O(3 downto 0) => \^q_reg[31]\(3 downto 0),
      S(3 downto 0) => Q(4 downto 1)
    );
\y_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => y_carry_n_0,
      CO(3) => \y_carry__0_n_0\,
      CO(2) => \y_carry__0_n_1\,
      CO(1) => \y_carry__0_n_2\,
      CO(0) => \y_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(8 downto 5),
      O(3 downto 0) => \^q_reg[31]\(7 downto 4),
      S(3 downto 0) => Q(8 downto 5)
    );
\y_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__0_n_0\,
      CO(3) => \y_carry__1_n_0\,
      CO(2) => \y_carry__1_n_1\,
      CO(1) => \y_carry__1_n_2\,
      CO(0) => \y_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(12 downto 9),
      O(3 downto 0) => \^q_reg[31]\(11 downto 8),
      S(3 downto 0) => Q(12 downto 9)
    );
\y_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__1_n_0\,
      CO(3) => \y_carry__2_n_0\,
      CO(2) => \y_carry__2_n_1\,
      CO(1) => \y_carry__2_n_2\,
      CO(0) => \y_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(16 downto 13),
      O(3 downto 0) => \^q_reg[31]\(15 downto 12),
      S(3 downto 0) => Q(16 downto 13)
    );
\y_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__2_n_0\,
      CO(3) => \y_carry__3_n_0\,
      CO(2) => \y_carry__3_n_1\,
      CO(1) => \y_carry__3_n_2\,
      CO(0) => \y_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(20 downto 17),
      O(3 downto 0) => \^q_reg[31]\(19 downto 16),
      S(3 downto 0) => Q(20 downto 17)
    );
\y_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__3_n_0\,
      CO(3) => \y_carry__4_n_0\,
      CO(2) => \y_carry__4_n_1\,
      CO(1) => \y_carry__4_n_2\,
      CO(0) => \y_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(24 downto 21),
      O(3 downto 0) => \^q_reg[31]\(23 downto 20),
      S(3 downto 0) => Q(24 downto 21)
    );
\y_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__4_n_0\,
      CO(3) => \y_carry__5_n_0\,
      CO(2) => \y_carry__5_n_1\,
      CO(1) => \y_carry__5_n_2\,
      CO(0) => \y_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(28 downto 25),
      O(3) => \^o\(0),
      O(2 downto 0) => \^q_reg[31]\(26 downto 24),
      S(3 downto 0) => Q(28 downto 25)
    );
\y_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__5_n_0\,
      CO(3 downto 0) => \NLW_y_carry__6_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_y_carry__6_O_UNCONNECTED\(3 downto 1),
      O(0) => \^q_reg[31]\(27),
      S(3 downto 1) => B"000",
      S(0) => Q(29)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result2_carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result2_carry__1_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result2_carry__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \result2_carry__2_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[69]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[69]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu is
  signal \result2_carry__0_n_0\ : STD_LOGIC;
  signal \result2_carry__0_n_1\ : STD_LOGIC;
  signal \result2_carry__0_n_2\ : STD_LOGIC;
  signal \result2_carry__0_n_3\ : STD_LOGIC;
  signal \result2_carry__1_n_0\ : STD_LOGIC;
  signal \result2_carry__1_n_1\ : STD_LOGIC;
  signal \result2_carry__1_n_2\ : STD_LOGIC;
  signal \result2_carry__1_n_3\ : STD_LOGIC;
  signal \result2_carry__2_n_1\ : STD_LOGIC;
  signal \result2_carry__2_n_2\ : STD_LOGIC;
  signal \result2_carry__2_n_3\ : STD_LOGIC;
  signal result2_carry_n_0 : STD_LOGIC;
  signal result2_carry_n_1 : STD_LOGIC;
  signal result2_carry_n_2 : STD_LOGIC;
  signal result2_carry_n_3 : STD_LOGIC;
  signal NLW_result2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_result2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_result2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_result2_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of result2_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \result2_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \result2_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \result2_carry__2\ : label is 11;
begin
result2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => result2_carry_n_0,
      CO(2) => result2_carry_n_1,
      CO(1) => result2_carry_n_2,
      CO(0) => result2_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_result2_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\result2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => result2_carry_n_0,
      CO(3) => \result2_carry__0_n_0\,
      CO(2) => \result2_carry__0_n_1\,
      CO(1) => \result2_carry__0_n_2\,
      CO(0) => \result2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \result2_carry__1_0\(3 downto 0),
      O(3 downto 0) => \NLW_result2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \result2_carry__1_1\(3 downto 0)
    );
\result2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \result2_carry__0_n_0\,
      CO(3) => \result2_carry__1_n_0\,
      CO(2) => \result2_carry__1_n_1\,
      CO(1) => \result2_carry__1_n_2\,
      CO(0) => \result2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \result2_carry__2_0\(3 downto 0),
      O(3 downto 0) => \NLW_result2_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \result2_carry__2_1\(3 downto 0)
    );
\result2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \result2_carry__1_n_0\,
      CO(3) => CO(0),
      CO(2) => \result2_carry__2_n_1\,
      CO(1) => \result2_carry__2_n_2\,
      CO(0) => \result2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \q_reg[69]\(3 downto 0),
      O(3 downto 0) => \NLW_result2_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \q_reg[69]_0\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr is
  port (
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    D : in STD_LOGIC_VECTOR ( 28 downto 0 );
    PCTargetEmux : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[2]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \q_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    PCSrcE : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr is
  signal PCNextF : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q[0]_i_1__0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \q[1]_i_1__0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \q[2]_i_1__1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \q[32]_i_1__0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \q[33]_i_1__0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \q[34]_i_1__0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \q[35]_i_1__0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \q[36]_i_1__0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \q[37]_i_1__0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \q[38]_i_1__0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \q[39]_i_1__0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \q[40]_i_1__0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \q[41]_i_1__0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \q[42]_i_1__0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \q[43]_i_1__0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \q[44]_i_1__0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \q[45]_i_1__0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \q[46]_i_1__0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \q[47]_i_1__0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \q[48]_i_1__0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \q[49]_i_1__0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \q[50]_i_1__0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \q[51]_i_1__0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \q[52]_i_1__0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \q[53]_i_1__0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \q[54]_i_1__0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \q[55]_i_1__0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \q[56]_i_1__0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \q[57]_i_1__0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \q[58]_i_1__0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \q[59]_i_1__0\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \q[60]_i_1__0\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \q[61]_i_1__0\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \q[62]_i_1__0\ : label is "soft_lutpair73";
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
\q[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => \^q\(0),
      I1 => PCTargetEmux(0),
      I2 => \q_reg[2]_0\(0),
      I3 => \q_reg[1]_0\(0),
      I4 => PCSrcE,
      O => PCNextF(0)
    );
\q[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => \^q\(1),
      I1 => PCTargetEmux(1),
      I2 => \q_reg[2]_0\(1),
      I3 => \q_reg[1]_0\(0),
      I4 => PCSrcE,
      O => PCNextF(1)
    );
\q[2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CC5555"
    )
        port map (
      I0 => \^q\(2),
      I1 => PCTargetEmux(2),
      I2 => \q_reg[2]_0\(2),
      I3 => \q_reg[1]_0\(0),
      I4 => PCSrcE,
      O => PCNextF(2)
    );
\q[32]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(0)
    );
\q[33]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(1)
    );
\q[34]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(2)
    );
\q[35]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(3)
    );
\q[36]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(4)
    );
\q[37]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(5),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(5)
    );
\q[38]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(6),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(6)
    );
\q[39]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(7),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(7)
    );
\q[40]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(8),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(8)
    );
\q[41]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(9),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(9)
    );
\q[42]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(10),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(10)
    );
\q[43]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(11),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(11)
    );
\q[44]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(12),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(12)
    );
\q[45]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(13),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(13)
    );
\q[46]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(14),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(14)
    );
\q[47]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(15),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(15)
    );
\q[48]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(16),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(16)
    );
\q[49]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(17),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(17)
    );
\q[50]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(18),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(18)
    );
\q[51]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(19),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(19)
    );
\q[52]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(20),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(20)
    );
\q[53]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(21),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(21)
    );
\q[54]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(22),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(22)
    );
\q[55]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(23),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(23)
    );
\q[56]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(24),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(24)
    );
\q[57]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(25),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(25)
    );
\q[58]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(26),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(26)
    );
\q[59]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(27),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(27)
    );
\q[60]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(28),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(28)
    );
\q[61]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(29),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(29)
    );
\q[62]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(30),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(30)
    );
\q[63]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(31),
      I1 => PCSrcE,
      O => \q_reg[31]_0\(31)
    );
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => PCNextF(0),
      Q => \^q\(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(7),
      Q => \^q\(10)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(8),
      Q => \^q\(11)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(9),
      Q => \^q\(12)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(10),
      Q => \^q\(13)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(11),
      Q => \^q\(14)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(12),
      Q => \^q\(15)
    );
\q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(13),
      Q => \^q\(16)
    );
\q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(14),
      Q => \^q\(17)
    );
\q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(15),
      Q => \^q\(18)
    );
\q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(16),
      Q => \^q\(19)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => PCNextF(1),
      Q => \^q\(1)
    );
\q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(17),
      Q => \^q\(20)
    );
\q_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(18),
      Q => \^q\(21)
    );
\q_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(19),
      Q => \^q\(22)
    );
\q_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(20),
      Q => \^q\(23)
    );
\q_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(21),
      Q => \^q\(24)
    );
\q_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(22),
      Q => \^q\(25)
    );
\q_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(23),
      Q => \^q\(26)
    );
\q_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(24),
      Q => \^q\(27)
    );
\q_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(25),
      Q => \^q\(28)
    );
\q_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(26),
      Q => \^q\(29)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => PCNextF(2),
      Q => \^q\(2)
    );
\q_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(27),
      Q => \^q\(30)
    );
\q_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(28),
      Q => \^q\(31)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(0),
      Q => \^q\(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(1),
      Q => \^q\(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(2),
      Q => \^q\(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(3),
      Q => \^q\(6)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(4),
      Q => \^q\(7)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(5),
      Q => \^q\(8)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => D(6),
      Q => \^q\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenrc is
  port (
    \q_reg[65]_0\ : out STD_LOGIC_VECTOR ( 16 downto 0 );
    D : out STD_LOGIC_VECTOR ( 108 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \q_reg[79]_0\ : out STD_LOGIC;
    \q_reg[84]_0\ : out STD_LOGIC;
    \rd11__3\ : out STD_LOGIC;
    \rd21__3\ : out STD_LOGIC;
    PCSrcE : in STD_LOGIC;
    StallD : in STD_LOGIC;
    \q[174]_i_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[95]_0\ : in STD_LOGIC_VECTOR ( 92 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenrc;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenrc is
  signal ImmSrcD : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal PCD : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal RdD : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \c/ALUOpD\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal funct3D : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal funct7b5D : STD_LOGIC;
  signal opD : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \q[10]_i_2_n_0\ : STD_LOGIC;
  signal \q[11]_i_2_n_0\ : STD_LOGIC;
  signal \q[11]_i_4_n_0\ : STD_LOGIC;
  signal \q[32]_i_2_n_0\ : STD_LOGIC;
  signal \q[36]_i_2_n_0\ : STD_LOGIC;
  signal \q[43]_i_2_n_0\ : STD_LOGIC;
  signal \q[51]_i_2_n_0\ : STD_LOGIC;
  signal \q[5]_i_2_n_0\ : STD_LOGIC;
  signal \q[8]_i_2_n_0\ : STD_LOGIC;
  signal \q[9]_i_2_n_0\ : STD_LOGIC;
  signal \q_reg_n_0_[10]\ : STD_LOGIC;
  signal \q_reg_n_0_[11]\ : STD_LOGIC;
  signal \q_reg_n_0_[12]\ : STD_LOGIC;
  signal \q_reg_n_0_[13]\ : STD_LOGIC;
  signal \q_reg_n_0_[14]\ : STD_LOGIC;
  signal \q_reg_n_0_[15]\ : STD_LOGIC;
  signal \q_reg_n_0_[16]\ : STD_LOGIC;
  signal \q_reg_n_0_[17]\ : STD_LOGIC;
  signal \q_reg_n_0_[18]\ : STD_LOGIC;
  signal \q_reg_n_0_[19]\ : STD_LOGIC;
  signal \q_reg_n_0_[20]\ : STD_LOGIC;
  signal \q_reg_n_0_[21]\ : STD_LOGIC;
  signal \q_reg_n_0_[22]\ : STD_LOGIC;
  signal \q_reg_n_0_[23]\ : STD_LOGIC;
  signal \q_reg_n_0_[24]\ : STD_LOGIC;
  signal \q_reg_n_0_[25]\ : STD_LOGIC;
  signal \q_reg_n_0_[26]\ : STD_LOGIC;
  signal \q_reg_n_0_[27]\ : STD_LOGIC;
  signal \q_reg_n_0_[28]\ : STD_LOGIC;
  signal \q_reg_n_0_[29]\ : STD_LOGIC;
  signal \q_reg_n_0_[2]\ : STD_LOGIC;
  signal \q_reg_n_0_[30]\ : STD_LOGIC;
  signal \q_reg_n_0_[31]\ : STD_LOGIC;
  signal \q_reg_n_0_[3]\ : STD_LOGIC;
  signal \q_reg_n_0_[4]\ : STD_LOGIC;
  signal \q_reg_n_0_[5]\ : STD_LOGIC;
  signal \q_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_reg_n_0_[7]\ : STD_LOGIC;
  signal \q_reg_n_0_[89]\ : STD_LOGIC;
  signal \q_reg_n_0_[8]\ : STD_LOGIC;
  signal \q_reg_n_0_[90]\ : STD_LOGIC;
  signal \q_reg_n_0_[91]\ : STD_LOGIC;
  signal \q_reg_n_0_[92]\ : STD_LOGIC;
  signal \q_reg_n_0_[93]\ : STD_LOGIC;
  signal \q_reg_n_0_[95]\ : STD_LOGIC;
  signal \q_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q[100]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \q[101]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \q[102]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \q[103]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \q[104]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \q[105]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \q[106]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \q[107]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \q[108]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \q[109]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \q[10]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \q[10]_i_1__0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \q[10]_i_2\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \q[110]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \q[11]_i_1__0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \q[11]_i_3\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \q[11]_i_4\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \q[12]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \q[12]_i_1__0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \q[13]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \q[13]_i_1__0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \q[14]_i_1__0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \q[15]_i_1__0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \q[16]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \q[17]_i_1__0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \q[18]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \q[19]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \q[1]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \q[20]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \q[21]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \q[22]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \q[23]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \q[24]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \q[25]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \q[26]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \q[27]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \q[28]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \q[29]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \q[2]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \q[2]_i_1__0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \q[30]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \q[31]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \q[36]_i_2\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \q[37]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \q[38]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \q[3]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \q[3]_i_1__0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \q[43]_i_3\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \q[43]_i_4\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \q[4]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \q[4]_i_1__0\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \q[51]_i_3\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \q[5]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \q[5]_i_1__0\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \q[5]_i_2\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \q[63]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \q[64]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \q[65]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \q[66]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \q[67]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \q[68]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \q[69]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \q[6]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \q[6]_i_1__0\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \q[70]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \q[71]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \q[72]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \q[73]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \q[74]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \q[75]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \q[76]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \q[77]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \q[78]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \q[79]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \q[7]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \q[7]_i_1__0\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \q[80]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \q[81]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \q[82]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \q[83]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \q[84]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \q[85]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \q[86]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \q[87]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \q[88]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \q[89]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \q[8]_i_1__0\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \q[8]_i_2\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \q[90]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \q[91]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \q[92]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \q[93]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \q[94]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \q[95]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \q[96]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \q[97]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \q[98]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \q[99]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \q[9]_i_1__0\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \q[9]_i_2\ : label is "soft_lutpair83";
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
\q[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => opD(6),
      I1 => opD(4),
      I2 => StallD,
      I3 => PCSrcE,
      I4 => opD(1),
      O => \q_reg[65]_0\(0)
    );
\q[100]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(21),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(98)
    );
\q[101]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(22),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(99)
    );
\q[102]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(23),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(100)
    );
\q[103]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(24),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(101)
    );
\q[104]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(25),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(102)
    );
\q[105]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(26),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(103)
    );
\q[106]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(27),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(104)
    );
\q[107]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(28),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(105)
    );
\q[108]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(29),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(106)
    );
\q[109]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(30),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(107)
    );
\q[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => StallD,
      I1 => PCSrcE,
      I2 => opD(4),
      I3 => opD(2),
      I4 => \q[10]_i_2_n_0\,
      O => \q_reg[65]_0\(10)
    );
\q[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[10]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(8)
    );
\q[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"073C"
    )
        port map (
      I0 => funct7b5D,
      I1 => funct3D(0),
      I2 => funct3D(1),
      I3 => funct3D(2),
      O => \q[10]_i_2_n_0\
    );
\q[110]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(31),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(108)
    );
\q[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F000000080"
    )
        port map (
      I0 => \q[11]_i_2_n_0\,
      I1 => funct3D(0),
      I2 => \c/ALUOpD\(1),
      I3 => PCSrcE,
      I4 => StallD,
      I5 => \q[11]_i_4_n_0\,
      O => \q_reg[65]_0\(11)
    );
\q[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[11]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(9)
    );
\q[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => funct3D(1),
      I1 => funct3D(2),
      O => \q[11]_i_2_n_0\
    );
\q[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => opD(4),
      I1 => opD(2),
      O => \c/ALUOpD\(1)
    );
\q[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => funct3D(1),
      I1 => funct3D(0),
      I2 => funct3D(2),
      I3 => funct7b5D,
      O => \q[11]_i_4_n_0\
    );
\q[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => opD(2),
      I1 => opD(6),
      I2 => PCSrcE,
      I3 => StallD,
      O => \q_reg[65]_0\(12)
    );
\q[12]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[12]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(10)
    );
\q[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => StallD,
      I1 => PCSrcE,
      I2 => opD(2),
      I3 => opD(6),
      O => \q_reg[65]_0\(13)
    );
\q[13]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[13]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(11)
    );
\q[142]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => \^q\(7),
      I4 => \^q\(8),
      O => \rd21__3\
    );
\q[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => opD(4),
      I1 => opD(5),
      I2 => opD(6),
      I3 => PCSrcE,
      I4 => StallD,
      O => \q_reg[65]_0\(14)
    );
\q[14]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[14]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(12)
    );
\q[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => opD(5),
      I1 => opD(4),
      I2 => StallD,
      I3 => PCSrcE,
      I4 => opD(1),
      O => \q_reg[65]_0\(15)
    );
\q[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[15]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(13)
    );
\q[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[16]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(14)
    );
\q[174]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => \rd11__3\
    );
\q[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101010100010"
    )
        port map (
      I0 => StallD,
      I1 => PCSrcE,
      I2 => opD(1),
      I3 => opD(5),
      I4 => opD(4),
      I5 => opD(2),
      O => \q_reg[65]_0\(16)
    );
\q[17]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[17]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(15)
    );
\q[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[18]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(16)
    );
\q[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[19]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(17)
    );
\q[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => opD(3),
      I1 => opD(6),
      I2 => StallD,
      I3 => PCSrcE,
      I4 => opD(2),
      O => \q_reg[65]_0\(1)
    );
\q[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[20]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(18)
    );
\q[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[21]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(19)
    );
\q[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[22]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(20)
    );
\q[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[23]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(21)
    );
\q[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[24]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(22)
    );
\q[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[25]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(23)
    );
\q[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[26]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(24)
    );
\q[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[27]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(25)
    );
\q[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[28]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(26)
    );
\q[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[29]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(27)
    );
\q[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => funct3D(0),
      I1 => PCSrcE,
      I2 => StallD,
      O => \q_reg[65]_0\(2)
    );
\q[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[2]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(0)
    );
\q[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[30]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(28)
    );
\q[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[31]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(29)
    );
\q[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \q[174]_i_2\(0),
      I2 => \^q\(1),
      I3 => \q[174]_i_2\(1),
      O => \q_reg[79]_0\
    );
\q[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(5),
      I1 => \q[174]_i_2\(0),
      I2 => \^q\(6),
      I3 => \q[174]_i_2\(1),
      O => \q_reg[84]_0\
    );
\q[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000400000000000C"
    )
        port map (
      I0 => opD(3),
      I1 => \q[32]_i_2_n_0\,
      I2 => StallD,
      I3 => PCSrcE,
      I4 => opD(2),
      I5 => opD(6),
      O => D(30)
    );
\q[32]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBABB88888A88"
    )
        port map (
      I0 => RdD(0),
      I1 => opD(3),
      I2 => opD(4),
      I3 => opD(5),
      I4 => opD(6),
      I5 => \^q\(5),
      O => \q[32]_i_2_n_0\
    );
\q[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010000000100"
    )
        port map (
      I0 => StallD,
      I1 => PCSrcE,
      I2 => ImmSrcD(2),
      I3 => RdD(1),
      I4 => \q[36]_i_2_n_0\,
      I5 => \^q\(6),
      O => D(31)
    );
\q[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010000000100"
    )
        port map (
      I0 => StallD,
      I1 => PCSrcE,
      I2 => ImmSrcD(2),
      I3 => RdD(2),
      I4 => \q[36]_i_2_n_0\,
      I5 => \^q\(7),
      O => D(32)
    );
\q[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010000000100"
    )
        port map (
      I0 => StallD,
      I1 => PCSrcE,
      I2 => ImmSrcD(2),
      I3 => RdD(3),
      I4 => \q[36]_i_2_n_0\,
      I5 => \^q\(8),
      O => D(33)
    );
\q[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010000000100"
    )
        port map (
      I0 => StallD,
      I1 => PCSrcE,
      I2 => ImmSrcD(2),
      I3 => RdD(4),
      I4 => \q[36]_i_2_n_0\,
      I5 => \^q\(9),
      O => D(34)
    );
\q[36]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEBB8B"
    )
        port map (
      I0 => opD(2),
      I1 => opD(6),
      I2 => opD(5),
      I3 => opD(4),
      I4 => opD(3),
      O => \q[36]_i_2_n_0\
    );
\q[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11010000"
    )
        port map (
      I0 => StallD,
      I1 => PCSrcE,
      I2 => opD(2),
      I3 => opD(6),
      I4 => \q_reg_n_0_[89]\,
      O => D(35)
    );
\q[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11010000"
    )
        port map (
      I0 => StallD,
      I1 => PCSrcE,
      I2 => opD(2),
      I3 => opD(6),
      I4 => \q_reg_n_0_[90]\,
      O => D(36)
    );
\q[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11010000"
    )
        port map (
      I0 => StallD,
      I1 => PCSrcE,
      I2 => opD(2),
      I3 => opD(6),
      I4 => \q_reg_n_0_[91]\,
      O => D(37)
    );
\q[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => funct3D(1),
      I1 => PCSrcE,
      I2 => StallD,
      O => \q_reg[65]_0\(3)
    );
\q[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[3]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(1)
    );
\q[40]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11010000"
    )
        port map (
      I0 => StallD,
      I1 => PCSrcE,
      I2 => opD(2),
      I3 => opD(6),
      I4 => \q_reg_n_0_[92]\,
      O => D(38)
    );
\q[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11010000"
    )
        port map (
      I0 => StallD,
      I1 => PCSrcE,
      I2 => opD(2),
      I3 => opD(6),
      I4 => \q_reg_n_0_[93]\,
      O => D(39)
    );
\q[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11010000"
    )
        port map (
      I0 => StallD,
      I1 => PCSrcE,
      I2 => opD(2),
      I3 => opD(6),
      I4 => funct7b5D,
      O => D(40)
    );
\q[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11010000"
    )
        port map (
      I0 => StallD,
      I1 => PCSrcE,
      I2 => opD(2),
      I3 => opD(6),
      I4 => \q[43]_i_2_n_0\,
      O => D(41)
    );
\q[43]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FACA0ACA"
    )
        port map (
      I0 => \q_reg_n_0_[95]\,
      I1 => RdD(0),
      I2 => ImmSrcD(1),
      I3 => ImmSrcD(0),
      I4 => \^q\(5),
      O => \q[43]_i_2_n_0\
    );
\q[43]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => opD(3),
      I1 => opD(2),
      I2 => opD(6),
      O => ImmSrcD(1)
    );
\q[43]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => opD(3),
      I1 => opD(4),
      I2 => opD(5),
      I3 => opD(6),
      O => ImmSrcD(0)
    );
\q[44]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AACA"
    )
        port map (
      I0 => funct3D(0),
      I1 => \q_reg_n_0_[95]\,
      I2 => \q[51]_i_2_n_0\,
      I3 => ImmSrcD(2),
      I4 => PCSrcE,
      I5 => StallD,
      O => D(42)
    );
\q[45]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AACA"
    )
        port map (
      I0 => funct3D(1),
      I1 => \q_reg_n_0_[95]\,
      I2 => \q[51]_i_2_n_0\,
      I3 => ImmSrcD(2),
      I4 => PCSrcE,
      I5 => StallD,
      O => D(43)
    );
\q[46]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AACA"
    )
        port map (
      I0 => funct3D(2),
      I1 => \q_reg_n_0_[95]\,
      I2 => \q[51]_i_2_n_0\,
      I3 => ImmSrcD(2),
      I4 => PCSrcE,
      I5 => StallD,
      O => D(44)
    );
\q[47]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AACA"
    )
        port map (
      I0 => \^q\(0),
      I1 => \q_reg_n_0_[95]\,
      I2 => \q[51]_i_2_n_0\,
      I3 => ImmSrcD(2),
      I4 => PCSrcE,
      I5 => StallD,
      O => D(45)
    );
\q[48]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AACA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \q_reg_n_0_[95]\,
      I2 => \q[51]_i_2_n_0\,
      I3 => ImmSrcD(2),
      I4 => PCSrcE,
      I5 => StallD,
      O => D(46)
    );
\q[49]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AACA"
    )
        port map (
      I0 => \^q\(2),
      I1 => \q_reg_n_0_[95]\,
      I2 => \q[51]_i_2_n_0\,
      I3 => ImmSrcD(2),
      I4 => PCSrcE,
      I5 => StallD,
      O => D(47)
    );
\q[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => funct3D(2),
      I1 => PCSrcE,
      I2 => StallD,
      O => \q_reg[65]_0\(4)
    );
\q[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[4]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(2)
    );
\q[50]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AACA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \q_reg_n_0_[95]\,
      I2 => \q[51]_i_2_n_0\,
      I3 => ImmSrcD(2),
      I4 => PCSrcE,
      I5 => StallD,
      O => D(48)
    );
\q[51]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AACA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \q_reg_n_0_[95]\,
      I2 => \q[51]_i_2_n_0\,
      I3 => ImmSrcD(2),
      I4 => PCSrcE,
      I5 => StallD,
      O => D(49)
    );
\q[51]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => opD(2),
      I1 => opD(6),
      I2 => opD(3),
      O => \q[51]_i_2_n_0\
    );
\q[51]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => opD(2),
      I1 => opD(6),
      O => ImmSrcD(2)
    );
\q[52]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CACC"
    )
        port map (
      I0 => \^q\(5),
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => PCSrcE,
      I5 => StallD,
      O => D(50)
    );
\q[53]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CACC"
    )
        port map (
      I0 => \^q\(6),
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => PCSrcE,
      I5 => StallD,
      O => D(51)
    );
\q[54]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CACC"
    )
        port map (
      I0 => \^q\(7),
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => PCSrcE,
      I5 => StallD,
      O => D(52)
    );
\q[55]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CACC"
    )
        port map (
      I0 => \^q\(8),
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => PCSrcE,
      I5 => StallD,
      O => D(53)
    );
\q[56]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CACC"
    )
        port map (
      I0 => \^q\(9),
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => PCSrcE,
      I5 => StallD,
      O => D(54)
    );
\q[57]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CACC"
    )
        port map (
      I0 => \q_reg_n_0_[89]\,
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => PCSrcE,
      I5 => StallD,
      O => D(55)
    );
\q[58]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CACC"
    )
        port map (
      I0 => \q_reg_n_0_[90]\,
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => PCSrcE,
      I5 => StallD,
      O => D(56)
    );
\q[59]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CACC"
    )
        port map (
      I0 => \q_reg_n_0_[91]\,
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => PCSrcE,
      I5 => StallD,
      O => D(57)
    );
\q[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \q[5]_i_2_n_0\,
      I1 => StallD,
      I2 => PCSrcE,
      I3 => opD(1),
      O => \q_reg[65]_0\(5)
    );
\q[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[5]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(3)
    );
\q[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF15"
    )
        port map (
      I0 => opD(6),
      I1 => opD(4),
      I2 => opD(5),
      I3 => opD(2),
      I4 => opD(3),
      O => \q[5]_i_2_n_0\
    );
\q[60]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CACC"
    )
        port map (
      I0 => \q_reg_n_0_[92]\,
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => PCSrcE,
      I5 => StallD,
      O => D(58)
    );
\q[61]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CACC"
    )
        port map (
      I0 => \q_reg_n_0_[93]\,
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => PCSrcE,
      I5 => StallD,
      O => D(59)
    );
\q[62]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CACC"
    )
        port map (
      I0 => funct7b5D,
      I1 => \q_reg_n_0_[95]\,
      I2 => opD(6),
      I3 => opD(2),
      I4 => PCSrcE,
      I5 => StallD,
      O => D(60)
    );
\q[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[95]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(61)
    );
\q[64]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => RdD(0),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(62)
    );
\q[65]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => RdD(1),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(63)
    );
\q[66]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => RdD(2),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(64)
    );
\q[67]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => RdD(3),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(65)
    );
\q[68]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => RdD(4),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(66)
    );
\q[69]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^q\(5),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(67)
    );
\q[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => opD(6),
      I1 => opD(5),
      I2 => StallD,
      I3 => PCSrcE,
      I4 => opD(2),
      O => \q_reg[65]_0\(6)
    );
\q[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[6]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(4)
    );
\q[70]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^q\(6),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(68)
    );
\q[71]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^q\(7),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(69)
    );
\q[72]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^q\(8),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(70)
    );
\q[73]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^q\(9),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(71)
    );
\q[74]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^q\(0),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(72)
    );
\q[75]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^q\(1),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(73)
    );
\q[76]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^q\(2),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(74)
    );
\q[77]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^q\(3),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(75)
    );
\q[78]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^q\(4),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(76)
    );
\q[79]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(0),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(77)
    );
\q[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => StallD,
      I1 => PCSrcE,
      I2 => opD(2),
      I3 => opD(5),
      O => \q_reg[65]_0\(7)
    );
\q[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[7]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(5)
    );
\q[80]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(1),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(78)
    );
\q[81]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(2),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(79)
    );
\q[82]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(3),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(80)
    );
\q[83]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(4),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(81)
    );
\q[84]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(5),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(82)
    );
\q[85]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(6),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(83)
    );
\q[86]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(7),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(84)
    );
\q[87]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(8),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(85)
    );
\q[88]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(9),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(86)
    );
\q[89]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(10),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(87)
    );
\q[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020200000300"
    )
        port map (
      I0 => \q[8]_i_2_n_0\,
      I1 => StallD,
      I2 => PCSrcE,
      I3 => opD(6),
      I4 => opD(2),
      I5 => opD(4),
      O => \q_reg[65]_0\(8)
    );
\q[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[8]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(6)
    );
\q[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03F0F0F8"
    )
        port map (
      I0 => opD(5),
      I1 => funct7b5D,
      I2 => funct3D(1),
      I3 => funct3D(2),
      I4 => funct3D(0),
      O => \q[8]_i_2_n_0\
    );
\q[90]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(11),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(88)
    );
\q[91]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(12),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(89)
    );
\q[92]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(13),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(90)
    );
\q[93]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(14),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(91)
    );
\q[94]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(15),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(92)
    );
\q[95]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(16),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(93)
    );
\q[96]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(17),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(94)
    );
\q[97]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(18),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(95)
    );
\q[98]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(19),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(96)
    );
\q[99]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => PCD(20),
      I1 => PCSrcE,
      I2 => StallD,
      O => D(97)
    );
\q[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F000000080"
    )
        port map (
      I0 => funct3D(1),
      I1 => funct3D(2),
      I2 => \c/ALUOpD\(1),
      I3 => PCSrcE,
      I4 => StallD,
      I5 => \q[9]_i_2_n_0\,
      O => \q_reg[65]_0\(9)
    );
\q[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \q_reg_n_0_[9]\,
      I1 => PCSrcE,
      I2 => StallD,
      O => D(7)
    );
\q[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => funct3D(1),
      I1 => funct3D(0),
      I2 => funct3D(2),
      I3 => funct7b5D,
      O => \q[9]_i_2_n_0\
    );
\q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(8),
      Q => \q_reg_n_0_[10]\
    );
\q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(9),
      Q => \q_reg_n_0_[11]\
    );
\q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(10),
      Q => \q_reg_n_0_[12]\
    );
\q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(11),
      Q => \q_reg_n_0_[13]\
    );
\q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(12),
      Q => \q_reg_n_0_[14]\
    );
\q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(13),
      Q => \q_reg_n_0_[15]\
    );
\q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(14),
      Q => \q_reg_n_0_[16]\
    );
\q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(15),
      Q => \q_reg_n_0_[17]\
    );
\q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(16),
      Q => \q_reg_n_0_[18]\
    );
\q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(17),
      Q => \q_reg_n_0_[19]\
    );
\q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(18),
      Q => \q_reg_n_0_[20]\
    );
\q_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(19),
      Q => \q_reg_n_0_[21]\
    );
\q_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(20),
      Q => \q_reg_n_0_[22]\
    );
\q_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(21),
      Q => \q_reg_n_0_[23]\
    );
\q_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(22),
      Q => \q_reg_n_0_[24]\
    );
\q_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(23),
      Q => \q_reg_n_0_[25]\
    );
\q_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(24),
      Q => \q_reg_n_0_[26]\
    );
\q_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(25),
      Q => \q_reg_n_0_[27]\
    );
\q_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(26),
      Q => \q_reg_n_0_[28]\
    );
\q_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(27),
      Q => \q_reg_n_0_[29]\
    );
\q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(0),
      Q => \q_reg_n_0_[2]\
    );
\q_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(28),
      Q => \q_reg_n_0_[30]\
    );
\q_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(29),
      Q => \q_reg_n_0_[31]\
    );
\q_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(30),
      Q => PCD(0)
    );
\q_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(31),
      Q => PCD(1)
    );
\q_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(32),
      Q => PCD(2)
    );
\q_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(33),
      Q => PCD(3)
    );
\q_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(34),
      Q => PCD(4)
    );
\q_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(35),
      Q => PCD(5)
    );
\q_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(36),
      Q => PCD(6)
    );
\q_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(37),
      Q => PCD(7)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(1),
      Q => \q_reg_n_0_[3]\
    );
\q_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(38),
      Q => PCD(8)
    );
\q_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(39),
      Q => PCD(9)
    );
\q_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(40),
      Q => PCD(10)
    );
\q_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(41),
      Q => PCD(11)
    );
\q_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(42),
      Q => PCD(12)
    );
\q_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(43),
      Q => PCD(13)
    );
\q_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(44),
      Q => PCD(14)
    );
\q_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(45),
      Q => PCD(15)
    );
\q_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(46),
      Q => PCD(16)
    );
\q_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(47),
      Q => PCD(17)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(2),
      Q => \q_reg_n_0_[4]\
    );
\q_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(48),
      Q => PCD(18)
    );
\q_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(49),
      Q => PCD(19)
    );
\q_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(50),
      Q => PCD(20)
    );
\q_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(51),
      Q => PCD(21)
    );
\q_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(52),
      Q => PCD(22)
    );
\q_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(53),
      Q => PCD(23)
    );
\q_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(54),
      Q => PCD(24)
    );
\q_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(55),
      Q => PCD(25)
    );
\q_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(56),
      Q => PCD(26)
    );
\q_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(57),
      Q => PCD(27)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(3),
      Q => \q_reg_n_0_[5]\
    );
\q_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(58),
      Q => PCD(28)
    );
\q_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(59),
      Q => PCD(29)
    );
\q_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(60),
      Q => PCD(30)
    );
\q_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(61),
      Q => PCD(31)
    );
\q_reg[65]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(62),
      Q => opD(1)
    );
\q_reg[66]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(63),
      Q => opD(2)
    );
\q_reg[67]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(64),
      Q => opD(3)
    );
\q_reg[68]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(65),
      Q => opD(4)
    );
\q_reg[69]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(66),
      Q => opD(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(4),
      Q => \q_reg_n_0_[6]\
    );
\q_reg[70]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(67),
      Q => opD(6)
    );
\q_reg[71]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(68),
      Q => RdD(0)
    );
\q_reg[72]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(69),
      Q => RdD(1)
    );
\q_reg[73]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(70),
      Q => RdD(2)
    );
\q_reg[74]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(71),
      Q => RdD(3)
    );
\q_reg[75]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(72),
      Q => RdD(4)
    );
\q_reg[76]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(73),
      Q => funct3D(0)
    );
\q_reg[77]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(74),
      Q => funct3D(1)
    );
\q_reg[78]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(75),
      Q => funct3D(2)
    );
\q_reg[79]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(76),
      Q => \^q\(0)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(5),
      Q => \q_reg_n_0_[7]\
    );
\q_reg[80]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(77),
      Q => \^q\(1)
    );
\q_reg[81]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(78),
      Q => \^q\(2)
    );
\q_reg[82]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(79),
      Q => \^q\(3)
    );
\q_reg[83]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(80),
      Q => \^q\(4)
    );
\q_reg[84]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(81),
      Q => \^q\(5)
    );
\q_reg[85]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(82),
      Q => \^q\(6)
    );
\q_reg[86]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(83),
      Q => \^q\(7)
    );
\q_reg[87]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(84),
      Q => \^q\(8)
    );
\q_reg[88]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(85),
      Q => \^q\(9)
    );
\q_reg[89]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(86),
      Q => \q_reg_n_0_[89]\
    );
\q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(6),
      Q => \q_reg_n_0_[8]\
    );
\q_reg[90]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(87),
      Q => \q_reg_n_0_[90]\
    );
\q_reg[91]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(88),
      Q => \q_reg_n_0_[91]\
    );
\q_reg[92]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(89),
      Q => \q_reg_n_0_[92]\
    );
\q_reg[93]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(90),
      Q => \q_reg_n_0_[93]\
    );
\q_reg[94]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(91),
      Q => funct7b5D
    );
\q_reg[95]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(92),
      Q => \q_reg_n_0_[95]\
    );
\q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \q_reg[95]_0\(7),
      Q => \q_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr is
  port (
    WriteDataM : out STD_LOGIC_VECTOR ( 23 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \q_reg[2]_0\ : out STD_LOGIC;
    \q_reg[1]_0\ : out STD_LOGIC;
    \writeDataM[16]\ : in STD_LOGIC_VECTOR ( 24 downto 0 );
    \writeDataM[8]\ : in STD_LOGIC;
    ReadDataM : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \writeDataM[9]\ : in STD_LOGIC;
    \writeDataM[10]\ : in STD_LOGIC;
    \writeDataM[11]\ : in STD_LOGIC;
    \writeDataM[12]\ : in STD_LOGIC;
    \writeDataM[13]\ : in STD_LOGIC;
    \writeDataM[14]\ : in STD_LOGIC;
    \writeDataM[15]\ : in STD_LOGIC;
    \writeDataM[31]\ : in STD_LOGIC;
    \writeDataM[30]\ : in STD_LOGIC;
    \writeDataM[29]\ : in STD_LOGIC;
    \writeDataM[28]\ : in STD_LOGIC;
    \writeDataM[27]\ : in STD_LOGIC;
    \writeDataM[26]\ : in STD_LOGIC;
    \writeDataM[25]\ : in STD_LOGIC;
    \writeDataM[24]\ : in STD_LOGIC;
    \writeDataM[23]\ : in STD_LOGIC;
    \writeDataM[22]\ : in STD_LOGIC;
    \writeDataM[21]\ : in STD_LOGIC;
    \writeDataM[20]\ : in STD_LOGIC;
    \writeDataM[19]\ : in STD_LOGIC;
    \writeDataM[18]\ : in STD_LOGIC;
    \writeDataM[17]\ : in STD_LOGIC;
    \writeDataM[16]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \WriteDataM[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \WriteDataM[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \^q_reg[2]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \WriteDataM[15]_INST_0_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \WriteDataM[15]_INST_0_i_3\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \WriteDataM[31]_INST_0_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \WriteDataM[31]_INST_0_i_3\ : label is "soft_lutpair34";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  \q_reg[2]_0\ <= \^q_reg[2]_0\;
\WriteDataM[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F5F5E0F5E0F5E0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \WriteDataM[15]_INST_0_i_1_n_0\,
      I2 => \writeDataM[16]\(2),
      I3 => \writeDataM[10]\,
      I4 => ReadDataM(2),
      I5 => \^q_reg[2]_0\,
      O => WriteDataM(2)
    );
\WriteDataM[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F5F5E0F5E0F5E0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \WriteDataM[15]_INST_0_i_1_n_0\,
      I2 => \writeDataM[16]\(3),
      I3 => \writeDataM[11]\,
      I4 => ReadDataM(3),
      I5 => \^q_reg[2]_0\,
      O => WriteDataM(3)
    );
\WriteDataM[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F5F5E0F5E0F5E0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \WriteDataM[15]_INST_0_i_1_n_0\,
      I2 => \writeDataM[16]\(4),
      I3 => \writeDataM[12]\,
      I4 => ReadDataM(4),
      I5 => \^q_reg[2]_0\,
      O => WriteDataM(4)
    );
\WriteDataM[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F5F5E0F5E0F5E0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \WriteDataM[15]_INST_0_i_1_n_0\,
      I2 => \writeDataM[16]\(5),
      I3 => \writeDataM[13]\,
      I4 => ReadDataM(5),
      I5 => \^q_reg[2]_0\,
      O => WriteDataM(5)
    );
\WriteDataM[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F5F5E0F5E0F5E0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \WriteDataM[15]_INST_0_i_1_n_0\,
      I2 => \writeDataM[16]\(6),
      I3 => \writeDataM[14]\,
      I4 => ReadDataM(6),
      I5 => \^q_reg[2]_0\,
      O => WriteDataM(6)
    );
\WriteDataM[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F5F5E0F5E0F5E0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \WriteDataM[15]_INST_0_i_1_n_0\,
      I2 => \writeDataM[16]\(7),
      I3 => \writeDataM[15]\,
      I4 => ReadDataM(7),
      I5 => \^q_reg[2]_0\,
      O => WriteDataM(7)
    );
\WriteDataM[15]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \writeDataM[16]\(24),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \WriteDataM[15]_INST_0_i_1_n_0\
    );
\WriteDataM[15]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \writeDataM[16]\(24),
      O => \^q_reg[2]_0\
    );
\WriteDataM[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33FE30FE30FE30"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \writeDataM[16]_0\,
      I3 => \writeDataM[16]\(8),
      I4 => \WriteDataM[31]_INST_0_i_2_n_0\,
      I5 => ReadDataM(8),
      O => WriteDataM(8)
    );
\WriteDataM[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33FE30FE30FE30"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \writeDataM[17]\,
      I3 => \writeDataM[16]\(9),
      I4 => \WriteDataM[31]_INST_0_i_2_n_0\,
      I5 => ReadDataM(9),
      O => WriteDataM(9)
    );
\WriteDataM[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33FE30FE30FE30"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \writeDataM[18]\,
      I3 => \writeDataM[16]\(10),
      I4 => \WriteDataM[31]_INST_0_i_2_n_0\,
      I5 => ReadDataM(10),
      O => WriteDataM(10)
    );
\WriteDataM[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33FE30FE30FE30"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \writeDataM[19]\,
      I3 => \writeDataM[16]\(11),
      I4 => \WriteDataM[31]_INST_0_i_2_n_0\,
      I5 => ReadDataM(11),
      O => WriteDataM(11)
    );
\WriteDataM[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33FE30FE30FE30"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \writeDataM[20]\,
      I3 => \writeDataM[16]\(12),
      I4 => \WriteDataM[31]_INST_0_i_2_n_0\,
      I5 => ReadDataM(12),
      O => WriteDataM(12)
    );
\WriteDataM[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33FE30FE30FE30"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \writeDataM[21]\,
      I3 => \writeDataM[16]\(13),
      I4 => \WriteDataM[31]_INST_0_i_2_n_0\,
      I5 => ReadDataM(13),
      O => WriteDataM(13)
    );
\WriteDataM[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33FE30FE30FE30"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \writeDataM[22]\,
      I3 => \writeDataM[16]\(14),
      I4 => \WriteDataM[31]_INST_0_i_2_n_0\,
      I5 => ReadDataM(14),
      O => WriteDataM(14)
    );
\WriteDataM[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33FE30FE30FE30"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \writeDataM[23]\,
      I3 => \writeDataM[16]\(15),
      I4 => \WriteDataM[31]_INST_0_i_2_n_0\,
      I5 => ReadDataM(15),
      O => WriteDataM(15)
    );
\WriteDataM[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33FE30FE30FE30"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \writeDataM[24]\,
      I3 => \writeDataM[16]\(16),
      I4 => \WriteDataM[31]_INST_0_i_2_n_0\,
      I5 => ReadDataM(16),
      O => WriteDataM(16)
    );
\WriteDataM[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33FE30FE30FE30"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \writeDataM[25]\,
      I3 => \writeDataM[16]\(17),
      I4 => \WriteDataM[31]_INST_0_i_2_n_0\,
      I5 => ReadDataM(17),
      O => WriteDataM(17)
    );
\WriteDataM[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33FE30FE30FE30"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \writeDataM[26]\,
      I3 => \writeDataM[16]\(18),
      I4 => \WriteDataM[31]_INST_0_i_2_n_0\,
      I5 => ReadDataM(18),
      O => WriteDataM(18)
    );
\WriteDataM[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33FE30FE30FE30"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \writeDataM[27]\,
      I3 => \writeDataM[16]\(19),
      I4 => \WriteDataM[31]_INST_0_i_2_n_0\,
      I5 => ReadDataM(19),
      O => WriteDataM(19)
    );
\WriteDataM[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33FE30FE30FE30"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \writeDataM[28]\,
      I3 => \writeDataM[16]\(20),
      I4 => \WriteDataM[31]_INST_0_i_2_n_0\,
      I5 => ReadDataM(20),
      O => WriteDataM(20)
    );
\WriteDataM[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33FE30FE30FE30"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \writeDataM[29]\,
      I3 => \writeDataM[16]\(21),
      I4 => \WriteDataM[31]_INST_0_i_2_n_0\,
      I5 => ReadDataM(21),
      O => WriteDataM(21)
    );
\WriteDataM[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33FE30FE30FE30"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \writeDataM[30]\,
      I3 => \writeDataM[16]\(22),
      I4 => \WriteDataM[31]_INST_0_i_2_n_0\,
      I5 => ReadDataM(22),
      O => WriteDataM(22)
    );
\WriteDataM[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33FE30FE30FE30"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \writeDataM[31]\,
      I3 => \writeDataM[16]\(23),
      I4 => \WriteDataM[31]_INST_0_i_2_n_0\,
      I5 => ReadDataM(23),
      O => WriteDataM(23)
    );
\WriteDataM[31]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \writeDataM[16]\(24),
      O => \WriteDataM[31]_INST_0_i_2_n_0\
    );
\WriteDataM[31]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      O => \q_reg[1]_0\
    );
\WriteDataM[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F5F5E0F5E0F5E0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \WriteDataM[15]_INST_0_i_1_n_0\,
      I2 => \writeDataM[16]\(0),
      I3 => \writeDataM[8]\,
      I4 => ReadDataM(0),
      I5 => \^q_reg[2]_0\,
      O => WriteDataM(0)
    );
\WriteDataM[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F5F5E0F5E0F5E0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \WriteDataM[15]_INST_0_i_1_n_0\,
      I2 => \writeDataM[16]\(1),
      I3 => \writeDataM[9]\,
      I4 => ReadDataM(1),
      I5 => \^q_reg[2]_0\,
      O => WriteDataM(1)
    );
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(0),
      Q => \^q\(0)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(1),
      Q => \^q\(1)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(2),
      Q => \^q\(2)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(3),
      Q => \^q\(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(4),
      Q => \^q\(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(5),
      Q => \^q\(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(6),
      Q => \^q\(6)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(7),
      Q => \^q\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr__parameterized0\ is
  port (
    ResultW : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \q_reg[68]\ : in STD_LOGIC_VECTOR ( 47 downto 0 );
    rf_reg_r1_0_31_24_29_i_3_0 : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 5 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr__parameterized0\ : entity is "flopr";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal rf_reg_r1_0_31_12_17_i_15_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_16_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_17_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_10_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_11_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_12_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_7_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_8_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_18_23_i_9_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_10_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_11_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_12_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_7_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_8_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_24_29_i_9_n_0 : STD_LOGIC;
  signal \rf_reg_r1_0_31_30_31_i_2__0_n_0\ : STD_LOGIC;
  signal rf_reg_r1_0_31_30_31_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_12_17_i_16 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_12_17_i_17 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_18_23_i_10 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_18_23_i_11 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_18_23_i_12 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_18_23_i_7 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_18_23_i_8 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_18_23_i_9 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_24_29_i_10 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_24_29_i_11 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_24_29_i_12 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_24_29_i_7 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_24_29_i_8 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_24_29_i_9 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of rf_reg_r1_0_31_30_31_i_2 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rf_reg_r1_0_31_30_31_i_2__0\ : label is "soft_lutpair40";
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(0),
      Q => \^q\(0)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(1),
      Q => \^q\(1)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(2),
      Q => \^q\(2)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(3),
      Q => \^q\(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(4),
      Q => \^q\(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(5),
      Q => \^q\(5)
    );
rf_reg_r1_0_31_12_17_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400040404000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => rf_reg_r1_0_31_24_29_i_3_0,
      I4 => \^q\(0),
      I5 => data0(0),
      O => rf_reg_r1_0_31_12_17_i_15_n_0
    );
rf_reg_r1_0_31_12_17_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \q_reg[68]\(17),
      O => rf_reg_r1_0_31_12_17_i_16_n_0
    );
rf_reg_r1_0_31_12_17_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \q_reg[68]\(16),
      O => rf_reg_r1_0_31_12_17_i_17_n_0
    );
rf_reg_r1_0_31_12_17_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBB8B8BBB8"
    )
        port map (
      I0 => \q_reg[68]\(1),
      I1 => \^q\(4),
      I2 => rf_reg_r1_0_31_12_17_i_15_n_0,
      I3 => \q_reg[68]\(33),
      I4 => \^q\(3),
      I5 => rf_reg_r1_0_31_12_17_i_16_n_0,
      O => ResultW(1)
    );
rf_reg_r1_0_31_12_17_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBB8B8BBB8"
    )
        port map (
      I0 => \q_reg[68]\(0),
      I1 => \^q\(4),
      I2 => rf_reg_r1_0_31_12_17_i_15_n_0,
      I3 => \q_reg[68]\(32),
      I4 => \^q\(3),
      I5 => rf_reg_r1_0_31_12_17_i_17_n_0,
      O => ResultW(0)
    );
rf_reg_r1_0_31_18_23_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBB8B8BBB8"
    )
        port map (
      I0 => \q_reg[68]\(3),
      I1 => \^q\(4),
      I2 => rf_reg_r1_0_31_12_17_i_15_n_0,
      I3 => \q_reg[68]\(35),
      I4 => \^q\(3),
      I5 => rf_reg_r1_0_31_18_23_i_7_n_0,
      O => ResultW(3)
    );
rf_reg_r1_0_31_18_23_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \q_reg[68]\(20),
      O => rf_reg_r1_0_31_18_23_i_10_n_0
    );
rf_reg_r1_0_31_18_23_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \q_reg[68]\(23),
      O => rf_reg_r1_0_31_18_23_i_11_n_0
    );
rf_reg_r1_0_31_18_23_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \q_reg[68]\(22),
      O => rf_reg_r1_0_31_18_23_i_12_n_0
    );
rf_reg_r1_0_31_18_23_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBB8B8BBB8"
    )
        port map (
      I0 => \q_reg[68]\(2),
      I1 => \^q\(4),
      I2 => rf_reg_r1_0_31_12_17_i_15_n_0,
      I3 => \q_reg[68]\(34),
      I4 => \^q\(3),
      I5 => rf_reg_r1_0_31_18_23_i_8_n_0,
      O => ResultW(2)
    );
rf_reg_r1_0_31_18_23_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBB8B8BBB8"
    )
        port map (
      I0 => \q_reg[68]\(5),
      I1 => \^q\(4),
      I2 => rf_reg_r1_0_31_12_17_i_15_n_0,
      I3 => \q_reg[68]\(37),
      I4 => \^q\(3),
      I5 => rf_reg_r1_0_31_18_23_i_9_n_0,
      O => ResultW(5)
    );
rf_reg_r1_0_31_18_23_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBB8B8BBB8"
    )
        port map (
      I0 => \q_reg[68]\(4),
      I1 => \^q\(4),
      I2 => rf_reg_r1_0_31_12_17_i_15_n_0,
      I3 => \q_reg[68]\(36),
      I4 => \^q\(3),
      I5 => rf_reg_r1_0_31_18_23_i_10_n_0,
      O => ResultW(4)
    );
rf_reg_r1_0_31_18_23_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBB8B8BBB8"
    )
        port map (
      I0 => \q_reg[68]\(7),
      I1 => \^q\(4),
      I2 => rf_reg_r1_0_31_12_17_i_15_n_0,
      I3 => \q_reg[68]\(39),
      I4 => \^q\(3),
      I5 => rf_reg_r1_0_31_18_23_i_11_n_0,
      O => ResultW(7)
    );
rf_reg_r1_0_31_18_23_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBB8B8BBB8"
    )
        port map (
      I0 => \q_reg[68]\(6),
      I1 => \^q\(4),
      I2 => rf_reg_r1_0_31_12_17_i_15_n_0,
      I3 => \q_reg[68]\(38),
      I4 => \^q\(3),
      I5 => rf_reg_r1_0_31_18_23_i_12_n_0,
      O => ResultW(6)
    );
rf_reg_r1_0_31_18_23_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \q_reg[68]\(19),
      O => rf_reg_r1_0_31_18_23_i_7_n_0
    );
rf_reg_r1_0_31_18_23_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \q_reg[68]\(18),
      O => rf_reg_r1_0_31_18_23_i_8_n_0
    );
rf_reg_r1_0_31_18_23_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \q_reg[68]\(21),
      O => rf_reg_r1_0_31_18_23_i_9_n_0
    );
rf_reg_r1_0_31_24_29_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBB8B8BBB8"
    )
        port map (
      I0 => \q_reg[68]\(9),
      I1 => \^q\(4),
      I2 => rf_reg_r1_0_31_12_17_i_15_n_0,
      I3 => \q_reg[68]\(41),
      I4 => \^q\(3),
      I5 => rf_reg_r1_0_31_24_29_i_7_n_0,
      O => ResultW(9)
    );
rf_reg_r1_0_31_24_29_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \q_reg[68]\(26),
      O => rf_reg_r1_0_31_24_29_i_10_n_0
    );
rf_reg_r1_0_31_24_29_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \q_reg[68]\(29),
      O => rf_reg_r1_0_31_24_29_i_11_n_0
    );
rf_reg_r1_0_31_24_29_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \q_reg[68]\(28),
      O => rf_reg_r1_0_31_24_29_i_12_n_0
    );
rf_reg_r1_0_31_24_29_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBB8B8BBB8"
    )
        port map (
      I0 => \q_reg[68]\(8),
      I1 => \^q\(4),
      I2 => rf_reg_r1_0_31_12_17_i_15_n_0,
      I3 => \q_reg[68]\(40),
      I4 => \^q\(3),
      I5 => rf_reg_r1_0_31_24_29_i_8_n_0,
      O => ResultW(8)
    );
rf_reg_r1_0_31_24_29_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBB8B8BBB8"
    )
        port map (
      I0 => \q_reg[68]\(11),
      I1 => \^q\(4),
      I2 => rf_reg_r1_0_31_12_17_i_15_n_0,
      I3 => \q_reg[68]\(43),
      I4 => \^q\(3),
      I5 => rf_reg_r1_0_31_24_29_i_9_n_0,
      O => ResultW(11)
    );
rf_reg_r1_0_31_24_29_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBB8B8BBB8"
    )
        port map (
      I0 => \q_reg[68]\(10),
      I1 => \^q\(4),
      I2 => rf_reg_r1_0_31_12_17_i_15_n_0,
      I3 => \q_reg[68]\(42),
      I4 => \^q\(3),
      I5 => rf_reg_r1_0_31_24_29_i_10_n_0,
      O => ResultW(10)
    );
rf_reg_r1_0_31_24_29_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBB8B8BBB8"
    )
        port map (
      I0 => \q_reg[68]\(13),
      I1 => \^q\(4),
      I2 => rf_reg_r1_0_31_12_17_i_15_n_0,
      I3 => \q_reg[68]\(45),
      I4 => \^q\(3),
      I5 => rf_reg_r1_0_31_24_29_i_11_n_0,
      O => ResultW(13)
    );
rf_reg_r1_0_31_24_29_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBB8B8BBB8"
    )
        port map (
      I0 => \q_reg[68]\(12),
      I1 => \^q\(4),
      I2 => rf_reg_r1_0_31_12_17_i_15_n_0,
      I3 => \q_reg[68]\(44),
      I4 => \^q\(3),
      I5 => rf_reg_r1_0_31_24_29_i_12_n_0,
      O => ResultW(12)
    );
rf_reg_r1_0_31_24_29_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \q_reg[68]\(25),
      O => rf_reg_r1_0_31_24_29_i_7_n_0
    );
rf_reg_r1_0_31_24_29_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \q_reg[68]\(24),
      O => rf_reg_r1_0_31_24_29_i_8_n_0
    );
rf_reg_r1_0_31_24_29_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \q_reg[68]\(27),
      O => rf_reg_r1_0_31_24_29_i_9_n_0
    );
rf_reg_r1_0_31_30_31_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBB8B8BBB8"
    )
        port map (
      I0 => \q_reg[68]\(15),
      I1 => \^q\(4),
      I2 => rf_reg_r1_0_31_12_17_i_15_n_0,
      I3 => \q_reg[68]\(47),
      I4 => \^q\(3),
      I5 => rf_reg_r1_0_31_30_31_i_2_n_0,
      O => ResultW(15)
    );
\rf_reg_r1_0_31_30_31_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBB8B8BBB8"
    )
        port map (
      I0 => \q_reg[68]\(14),
      I1 => \^q\(4),
      I2 => rf_reg_r1_0_31_12_17_i_15_n_0,
      I3 => \q_reg[68]\(46),
      I4 => \^q\(3),
      I5 => \rf_reg_r1_0_31_30_31_i_2__0_n_0\,
      O => ResultW(14)
    );
rf_reg_r1_0_31_30_31_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \q_reg[68]\(31),
      O => rf_reg_r1_0_31_30_31_i_2_n_0
    );
\rf_reg_r1_0_31_30_31_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(3),
      I2 => \q_reg[68]\(30),
      O => \rf_reg_r1_0_31_30_31_i_2__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr__parameterized1\ is
  port (
    \q_reg[34]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 92 downto 0 );
    WriteDataM : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \q_reg[37]_0\ : out STD_LOGIC;
    \q_reg[38]_0\ : out STD_LOGIC;
    \q_reg[39]_0\ : out STD_LOGIC;
    \q_reg[40]_0\ : out STD_LOGIC;
    \q_reg[41]_0\ : out STD_LOGIC;
    \q_reg[42]_0\ : out STD_LOGIC;
    \q_reg[43]_0\ : out STD_LOGIC;
    \q_reg[44]_0\ : out STD_LOGIC;
    \q_reg[1]_0\ : out STD_LOGIC;
    \q_reg[1]_1\ : out STD_LOGIC;
    \q_reg[1]_2\ : out STD_LOGIC;
    \q_reg[1]_3\ : out STD_LOGIC;
    \q_reg[1]_4\ : out STD_LOGIC;
    \q_reg[1]_5\ : out STD_LOGIC;
    \q_reg[1]_6\ : out STD_LOGIC;
    \q_reg[1]_7\ : out STD_LOGIC;
    \q_reg[45]_0\ : out STD_LOGIC;
    \q_reg[46]_0\ : out STD_LOGIC;
    \q_reg[47]_0\ : out STD_LOGIC;
    \q_reg[48]_0\ : out STD_LOGIC;
    \q_reg[49]_0\ : out STD_LOGIC;
    \q_reg[50]_0\ : out STD_LOGIC;
    \q_reg[51]_0\ : out STD_LOGIC;
    \q_reg[52]_0\ : out STD_LOGIC;
    \q_reg[1]_8\ : in STD_LOGIC_VECTOR ( 38 downto 0 );
    \writeDataM[7]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ReadDataM : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \writeDataM[31]\ : in STD_LOGIC;
    \writeDataM[31]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 63 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr__parameterized1\ : entity is "flopr";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr__parameterized1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 92 downto 0 );
  signal \WriteDataM[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal WriteDataM_Original : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal storedMemory : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \WriteDataM[0]_INST_0\ : label is "soft_lutpair224";
  attribute SOFT_HLUTNM of \WriteDataM[1]_INST_0\ : label is "soft_lutpair224";
  attribute SOFT_HLUTNM of \WriteDataM[2]_INST_0\ : label is "soft_lutpair225";
  attribute SOFT_HLUTNM of \WriteDataM[3]_INST_0\ : label is "soft_lutpair225";
  attribute SOFT_HLUTNM of \WriteDataM[4]_INST_0\ : label is "soft_lutpair226";
  attribute SOFT_HLUTNM of \WriteDataM[5]_INST_0\ : label is "soft_lutpair226";
  attribute SOFT_HLUTNM of \WriteDataM[6]_INST_0\ : label is "soft_lutpair227";
  attribute SOFT_HLUTNM of \WriteDataM[7]_INST_0\ : label is "soft_lutpair227";
begin
  Q(92 downto 0) <= \^q\(92 downto 0);
\WriteDataM[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => WriteDataM_Original(0),
      I1 => \writeDataM[7]\(2),
      I2 => storedMemory(0),
      O => WriteDataM(0)
    );
\WriteDataM[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AAAAAAE2"
    )
        port map (
      I0 => WriteDataM_Original(0),
      I1 => \^q\(61),
      I2 => ReadDataM(0),
      I3 => \writeDataM[7]\(1),
      I4 => \writeDataM[7]\(0),
      I5 => \^q\(62),
      O => storedMemory(0)
    );
\WriteDataM[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FB08"
    )
        port map (
      I0 => WriteDataM_Original(2),
      I1 => \^q\(61),
      I2 => \^q\(62),
      I3 => ReadDataM(10),
      I4 => \writeDataM[7]\(1),
      I5 => \writeDataM[7]\(0),
      O => \q_reg[39]_0\
    );
\WriteDataM[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FB08"
    )
        port map (
      I0 => WriteDataM_Original(3),
      I1 => \^q\(61),
      I2 => \^q\(62),
      I3 => ReadDataM(11),
      I4 => \writeDataM[7]\(1),
      I5 => \writeDataM[7]\(0),
      O => \q_reg[40]_0\
    );
\WriteDataM[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FB08"
    )
        port map (
      I0 => WriteDataM_Original(4),
      I1 => \^q\(61),
      I2 => \^q\(62),
      I3 => ReadDataM(12),
      I4 => \writeDataM[7]\(1),
      I5 => \writeDataM[7]\(0),
      O => \q_reg[41]_0\
    );
\WriteDataM[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FB08"
    )
        port map (
      I0 => WriteDataM_Original(5),
      I1 => \^q\(61),
      I2 => \^q\(62),
      I3 => ReadDataM(13),
      I4 => \writeDataM[7]\(1),
      I5 => \writeDataM[7]\(0),
      O => \q_reg[42]_0\
    );
\WriteDataM[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FB08"
    )
        port map (
      I0 => WriteDataM_Original(6),
      I1 => \^q\(61),
      I2 => \^q\(62),
      I3 => ReadDataM(14),
      I4 => \writeDataM[7]\(1),
      I5 => \writeDataM[7]\(0),
      O => \q_reg[43]_0\
    );
\WriteDataM[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FB08"
    )
        port map (
      I0 => WriteDataM_Original(7),
      I1 => \^q\(61),
      I2 => \^q\(62),
      I3 => ReadDataM(15),
      I4 => \writeDataM[7]\(1),
      I5 => \writeDataM[7]\(0),
      O => \q_reg[44]_0\
    );
\WriteDataM[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3233101010001010"
    )
        port map (
      I0 => \writeDataM[7]\(0),
      I1 => \writeDataM[7]\(1),
      I2 => ReadDataM(16),
      I3 => \^q\(61),
      I4 => \^q\(62),
      I5 => WriteDataM_Original(0),
      O => \q_reg[1]_0\
    );
\WriteDataM[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3233101010001010"
    )
        port map (
      I0 => \writeDataM[7]\(0),
      I1 => \writeDataM[7]\(1),
      I2 => ReadDataM(17),
      I3 => \^q\(61),
      I4 => \^q\(62),
      I5 => WriteDataM_Original(1),
      O => \q_reg[1]_1\
    );
\WriteDataM[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3233101010001010"
    )
        port map (
      I0 => \writeDataM[7]\(0),
      I1 => \writeDataM[7]\(1),
      I2 => ReadDataM(18),
      I3 => \^q\(61),
      I4 => \^q\(62),
      I5 => WriteDataM_Original(2),
      O => \q_reg[1]_2\
    );
\WriteDataM[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3233101010001010"
    )
        port map (
      I0 => \writeDataM[7]\(0),
      I1 => \writeDataM[7]\(1),
      I2 => ReadDataM(19),
      I3 => \^q\(61),
      I4 => \^q\(62),
      I5 => WriteDataM_Original(3),
      O => \q_reg[1]_3\
    );
\WriteDataM[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => WriteDataM_Original(1),
      I1 => \writeDataM[7]\(2),
      I2 => storedMemory(1),
      O => WriteDataM(1)
    );
\WriteDataM[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AAAAAAE2"
    )
        port map (
      I0 => WriteDataM_Original(1),
      I1 => \^q\(61),
      I2 => ReadDataM(1),
      I3 => \writeDataM[7]\(1),
      I4 => \writeDataM[7]\(0),
      I5 => \^q\(62),
      O => storedMemory(1)
    );
\WriteDataM[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3233101010001010"
    )
        port map (
      I0 => \writeDataM[7]\(0),
      I1 => \writeDataM[7]\(1),
      I2 => ReadDataM(20),
      I3 => \^q\(61),
      I4 => \^q\(62),
      I5 => WriteDataM_Original(4),
      O => \q_reg[1]_4\
    );
\WriteDataM[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3233101010001010"
    )
        port map (
      I0 => \writeDataM[7]\(0),
      I1 => \writeDataM[7]\(1),
      I2 => ReadDataM(21),
      I3 => \^q\(61),
      I4 => \^q\(62),
      I5 => WriteDataM_Original(5),
      O => \q_reg[1]_5\
    );
\WriteDataM[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3233101010001010"
    )
        port map (
      I0 => \writeDataM[7]\(0),
      I1 => \writeDataM[7]\(1),
      I2 => ReadDataM(22),
      I3 => \^q\(61),
      I4 => \^q\(62),
      I5 => WriteDataM_Original(6),
      O => \q_reg[1]_6\
    );
\WriteDataM[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3233101010001010"
    )
        port map (
      I0 => \writeDataM[7]\(0),
      I1 => \writeDataM[7]\(1),
      I2 => ReadDataM(23),
      I3 => \^q\(61),
      I4 => \^q\(62),
      I5 => WriteDataM_Original(7),
      O => \q_reg[1]_7\
    );
\WriteDataM[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888F8F8F8888888"
    )
        port map (
      I0 => \^q\(37),
      I1 => \writeDataM[31]\,
      I2 => \writeDataM[31]_0\,
      I3 => ReadDataM(24),
      I4 => \WriteDataM[31]_INST_0_i_4_n_0\,
      I5 => WriteDataM_Original(0),
      O => \q_reg[45]_0\
    );
\WriteDataM[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888F8F8F8888888"
    )
        port map (
      I0 => \^q\(38),
      I1 => \writeDataM[31]\,
      I2 => \writeDataM[31]_0\,
      I3 => ReadDataM(25),
      I4 => \WriteDataM[31]_INST_0_i_4_n_0\,
      I5 => WriteDataM_Original(1),
      O => \q_reg[46]_0\
    );
\WriteDataM[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888F8F8F8888888"
    )
        port map (
      I0 => \^q\(39),
      I1 => \writeDataM[31]\,
      I2 => \writeDataM[31]_0\,
      I3 => ReadDataM(26),
      I4 => \WriteDataM[31]_INST_0_i_4_n_0\,
      I5 => WriteDataM_Original(2),
      O => \q_reg[47]_0\
    );
\WriteDataM[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888F8F8F8888888"
    )
        port map (
      I0 => \^q\(40),
      I1 => \writeDataM[31]\,
      I2 => \writeDataM[31]_0\,
      I3 => ReadDataM(27),
      I4 => \WriteDataM[31]_INST_0_i_4_n_0\,
      I5 => WriteDataM_Original(3),
      O => \q_reg[48]_0\
    );
\WriteDataM[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888F8F8F8888888"
    )
        port map (
      I0 => \^q\(41),
      I1 => \writeDataM[31]\,
      I2 => \writeDataM[31]_0\,
      I3 => ReadDataM(28),
      I4 => \WriteDataM[31]_INST_0_i_4_n_0\,
      I5 => WriteDataM_Original(4),
      O => \q_reg[49]_0\
    );
\WriteDataM[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888F8F8F8888888"
    )
        port map (
      I0 => \^q\(42),
      I1 => \writeDataM[31]\,
      I2 => \writeDataM[31]_0\,
      I3 => ReadDataM(29),
      I4 => \WriteDataM[31]_INST_0_i_4_n_0\,
      I5 => WriteDataM_Original(5),
      O => \q_reg[50]_0\
    );
\WriteDataM[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => WriteDataM_Original(2),
      I1 => \writeDataM[7]\(2),
      I2 => storedMemory(2),
      O => WriteDataM(2)
    );
\WriteDataM[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AAAAAAE2"
    )
        port map (
      I0 => WriteDataM_Original(2),
      I1 => \^q\(61),
      I2 => ReadDataM(2),
      I3 => \writeDataM[7]\(1),
      I4 => \writeDataM[7]\(0),
      I5 => \^q\(62),
      O => storedMemory(2)
    );
\WriteDataM[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888F8F8F8888888"
    )
        port map (
      I0 => \^q\(43),
      I1 => \writeDataM[31]\,
      I2 => \writeDataM[31]_0\,
      I3 => ReadDataM(30),
      I4 => \WriteDataM[31]_INST_0_i_4_n_0\,
      I5 => WriteDataM_Original(6),
      O => \q_reg[51]_0\
    );
\WriteDataM[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888F8F8F8888888"
    )
        port map (
      I0 => \^q\(44),
      I1 => \writeDataM[31]\,
      I2 => \writeDataM[31]_0\,
      I3 => ReadDataM(31),
      I4 => \WriteDataM[31]_INST_0_i_4_n_0\,
      I5 => WriteDataM_Original(7),
      O => \q_reg[52]_0\
    );
\WriteDataM[31]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(61),
      I1 => \^q\(62),
      O => \WriteDataM[31]_INST_0_i_4_n_0\
    );
\WriteDataM[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => WriteDataM_Original(3),
      I1 => \writeDataM[7]\(2),
      I2 => storedMemory(3),
      O => WriteDataM(3)
    );
\WriteDataM[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AAAAAAE2"
    )
        port map (
      I0 => WriteDataM_Original(3),
      I1 => \^q\(61),
      I2 => ReadDataM(3),
      I3 => \writeDataM[7]\(1),
      I4 => \writeDataM[7]\(0),
      I5 => \^q\(62),
      O => storedMemory(3)
    );
\WriteDataM[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => WriteDataM_Original(4),
      I1 => \writeDataM[7]\(2),
      I2 => storedMemory(4),
      O => WriteDataM(4)
    );
\WriteDataM[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AAAAAAE2"
    )
        port map (
      I0 => WriteDataM_Original(4),
      I1 => \^q\(61),
      I2 => ReadDataM(4),
      I3 => \writeDataM[7]\(1),
      I4 => \writeDataM[7]\(0),
      I5 => \^q\(62),
      O => storedMemory(4)
    );
\WriteDataM[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => WriteDataM_Original(5),
      I1 => \writeDataM[7]\(2),
      I2 => storedMemory(5),
      O => WriteDataM(5)
    );
\WriteDataM[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AAAAAAE2"
    )
        port map (
      I0 => WriteDataM_Original(5),
      I1 => \^q\(61),
      I2 => ReadDataM(5),
      I3 => \writeDataM[7]\(1),
      I4 => \writeDataM[7]\(0),
      I5 => \^q\(62),
      O => storedMemory(5)
    );
\WriteDataM[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => WriteDataM_Original(6),
      I1 => \writeDataM[7]\(2),
      I2 => storedMemory(6),
      O => WriteDataM(6)
    );
\WriteDataM[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AAAAAAE2"
    )
        port map (
      I0 => WriteDataM_Original(6),
      I1 => \^q\(61),
      I2 => ReadDataM(6),
      I3 => \writeDataM[7]\(1),
      I4 => \writeDataM[7]\(0),
      I5 => \^q\(62),
      O => storedMemory(6)
    );
\WriteDataM[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => WriteDataM_Original(7),
      I1 => \writeDataM[7]\(2),
      I2 => storedMemory(7),
      O => WriteDataM(7)
    );
\WriteDataM[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF0AAF0AAAAAAE2"
    )
        port map (
      I0 => WriteDataM_Original(7),
      I1 => \^q\(61),
      I2 => ReadDataM(7),
      I3 => \writeDataM[7]\(1),
      I4 => \writeDataM[7]\(0),
      I5 => \^q\(62),
      O => storedMemory(7)
    );
\WriteDataM[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FB08"
    )
        port map (
      I0 => WriteDataM_Original(0),
      I1 => \^q\(61),
      I2 => \^q\(62),
      I3 => ReadDataM(8),
      I4 => \writeDataM[7]\(1),
      I5 => \writeDataM[7]\(0),
      O => \q_reg[37]_0\
    );
\WriteDataM[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FB08"
    )
        port map (
      I0 => WriteDataM_Original(1),
      I1 => \^q\(61),
      I2 => \^q\(62),
      I3 => ReadDataM(9),
      I4 => \writeDataM[7]\(1),
      I5 => \writeDataM[7]\(0),
      O => \q_reg[38]_0\
    );
\q[68]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(34),
      I1 => \q_reg[1]_8\(35),
      I2 => \q_reg[1]_8\(36),
      I3 => \^q\(35),
      O => \q_reg[34]_0\
    );
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(37),
      Q => \^q\(0)
    );
\q_reg[100]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(63),
      Q => \^q\(92)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(8),
      Q => \^q\(10)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(9),
      Q => \^q\(11)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(10),
      Q => \^q\(12)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(11),
      Q => \^q\(13)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(12),
      Q => \^q\(14)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(13),
      Q => \^q\(15)
    );
\q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(14),
      Q => \^q\(16)
    );
\q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(15),
      Q => \^q\(17)
    );
\q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(16),
      Q => \^q\(18)
    );
\q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(17),
      Q => \^q\(19)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(38),
      Q => \^q\(1)
    );
\q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(18),
      Q => \^q\(20)
    );
\q_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(19),
      Q => \^q\(21)
    );
\q_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(20),
      Q => \^q\(22)
    );
\q_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(21),
      Q => \^q\(23)
    );
\q_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(22),
      Q => \^q\(24)
    );
\q_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(23),
      Q => \^q\(25)
    );
\q_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(24),
      Q => \^q\(26)
    );
\q_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(25),
      Q => \^q\(27)
    );
\q_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(26),
      Q => \^q\(28)
    );
\q_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(27),
      Q => \^q\(29)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(0),
      Q => \^q\(2)
    );
\q_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(28),
      Q => \^q\(30)
    );
\q_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(29),
      Q => \^q\(31)
    );
\q_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(30),
      Q => \^q\(32)
    );
\q_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(31),
      Q => \^q\(33)
    );
\q_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(32),
      Q => \^q\(34)
    );
\q_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(33),
      Q => \^q\(35)
    );
\q_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(34),
      Q => \^q\(36)
    );
\q_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(0),
      Q => WriteDataM_Original(0)
    );
\q_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(1),
      Q => WriteDataM_Original(1)
    );
\q_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(2),
      Q => WriteDataM_Original(2)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(1),
      Q => \^q\(3)
    );
\q_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(3),
      Q => WriteDataM_Original(3)
    );
\q_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(4),
      Q => WriteDataM_Original(4)
    );
\q_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(5),
      Q => WriteDataM_Original(5)
    );
\q_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(6),
      Q => WriteDataM_Original(6)
    );
\q_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(7),
      Q => WriteDataM_Original(7)
    );
\q_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(8),
      Q => \^q\(37)
    );
\q_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(9),
      Q => \^q\(38)
    );
\q_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(10),
      Q => \^q\(39)
    );
\q_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(11),
      Q => \^q\(40)
    );
\q_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(12),
      Q => \^q\(41)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(2),
      Q => \^q\(4)
    );
\q_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(13),
      Q => \^q\(42)
    );
\q_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(14),
      Q => \^q\(43)
    );
\q_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(15),
      Q => \^q\(44)
    );
\q_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(16),
      Q => \^q\(45)
    );
\q_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(17),
      Q => \^q\(46)
    );
\q_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(18),
      Q => \^q\(47)
    );
\q_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(19),
      Q => \^q\(48)
    );
\q_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(20),
      Q => \^q\(49)
    );
\q_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(21),
      Q => \^q\(50)
    );
\q_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(22),
      Q => \^q\(51)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(3),
      Q => \^q\(5)
    );
\q_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(23),
      Q => \^q\(52)
    );
\q_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(24),
      Q => \^q\(53)
    );
\q_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(25),
      Q => \^q\(54)
    );
\q_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(26),
      Q => \^q\(55)
    );
\q_reg[64]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(27),
      Q => \^q\(56)
    );
\q_reg[65]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(28),
      Q => \^q\(57)
    );
\q_reg[66]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(29),
      Q => \^q\(58)
    );
\q_reg[67]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(30),
      Q => \^q\(59)
    );
\q_reg[68]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(31),
      Q => \^q\(60)
    );
\q_reg[69]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(32),
      Q => \^q\(61)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(4),
      Q => \^q\(6)
    );
\q_reg[70]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(33),
      Q => \^q\(62)
    );
\q_reg[71]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(34),
      Q => \^q\(63)
    );
\q_reg[72]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(35),
      Q => \^q\(64)
    );
\q_reg[73]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(36),
      Q => \^q\(65)
    );
\q_reg[74]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(37),
      Q => \^q\(66)
    );
\q_reg[75]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(38),
      Q => \^q\(67)
    );
\q_reg[76]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(39),
      Q => \^q\(68)
    );
\q_reg[77]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(40),
      Q => \^q\(69)
    );
\q_reg[78]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(41),
      Q => \^q\(70)
    );
\q_reg[79]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(42),
      Q => \^q\(71)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(5),
      Q => \^q\(7)
    );
\q_reg[80]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(43),
      Q => \^q\(72)
    );
\q_reg[81]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(44),
      Q => \^q\(73)
    );
\q_reg[82]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(45),
      Q => \^q\(74)
    );
\q_reg[83]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(46),
      Q => \^q\(75)
    );
\q_reg[84]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(47),
      Q => \^q\(76)
    );
\q_reg[85]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(48),
      Q => \^q\(77)
    );
\q_reg[86]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(49),
      Q => \^q\(78)
    );
\q_reg[87]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(50),
      Q => \^q\(79)
    );
\q_reg[88]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(51),
      Q => \^q\(80)
    );
\q_reg[89]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(52),
      Q => \^q\(81)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(6),
      Q => \^q\(8)
    );
\q_reg[90]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(53),
      Q => \^q\(82)
    );
\q_reg[91]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(54),
      Q => \^q\(83)
    );
\q_reg[92]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(55),
      Q => \^q\(84)
    );
\q_reg[93]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(56),
      Q => \^q\(85)
    );
\q_reg[94]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(57),
      Q => \^q\(86)
    );
\q_reg[95]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(58),
      Q => \^q\(87)
    );
\q_reg[96]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(59),
      Q => \^q\(88)
    );
\q_reg[97]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(60),
      Q => \^q\(89)
    );
\q_reg[98]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(61),
      Q => \^q\(90)
    );
\q_reg[99]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(62),
      Q => \^q\(91)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_8\(7),
      Q => \^q\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr__parameterized1_1\ is
  port (
    wd3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 52 downto 0 );
    \q_reg[68]_0\ : out STD_LOGIC;
    \q_reg[34]_0\ : out STD_LOGIC;
    \q_reg[68]_1\ : out STD_LOGIC;
    \q_reg[52]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    result2_carry_i_43 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 100 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr__parameterized1_1\ : entity is "flopr";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr__parameterized1_1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr__parameterized1_1\ is
  signal ALUResultW : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 52 downto 0 );
  signal ReadDataW : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \loader/data0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^q_reg[68]_0\ : STD_LOGIC;
  signal \q_reg_n_0_[0]\ : STD_LOGIC;
  signal \q_reg_n_0_[10]\ : STD_LOGIC;
  signal \q_reg_n_0_[11]\ : STD_LOGIC;
  signal \q_reg_n_0_[12]\ : STD_LOGIC;
  signal \q_reg_n_0_[13]\ : STD_LOGIC;
  signal \q_reg_n_0_[14]\ : STD_LOGIC;
  signal \q_reg_n_0_[15]\ : STD_LOGIC;
  signal \q_reg_n_0_[1]\ : STD_LOGIC;
  signal \q_reg_n_0_[2]\ : STD_LOGIC;
  signal \q_reg_n_0_[3]\ : STD_LOGIC;
  signal \q_reg_n_0_[4]\ : STD_LOGIC;
  signal \q_reg_n_0_[5]\ : STD_LOGIC;
  signal \q_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_reg_n_0_[7]\ : STD_LOGIC;
  signal \q_reg_n_0_[8]\ : STD_LOGIC;
  signal \q_reg_n_0_[9]\ : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_10_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_11_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_12_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_13_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_14_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_15_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_16_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_17_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_18_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_19_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_8_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_0_5_i_9_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_10_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_11_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_12_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_13_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_14_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_7_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_8_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_12_17_i_9_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_10_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_11_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_12_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_13_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_14_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_15_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_16_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_17_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_18_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_7_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_8_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_31_6_11_i_9_n_0 : STD_LOGIC;
begin
  Q(52 downto 0) <= \^q\(52 downto 0);
  \q_reg[68]_0\ <= \^q_reg[68]_0\;
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(0),
      Q => \q_reg_n_0_[0]\
    );
\q_reg[100]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(100),
      Q => \^q\(52)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(10),
      Q => \q_reg_n_0_[10]\
    );
\q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(11),
      Q => \q_reg_n_0_[11]\
    );
\q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(12),
      Q => \q_reg_n_0_[12]\
    );
\q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(13),
      Q => \q_reg_n_0_[13]\
    );
\q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(14),
      Q => \q_reg_n_0_[14]\
    );
\q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(15),
      Q => \q_reg_n_0_[15]\
    );
\q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(16),
      Q => \^q\(0)
    );
\q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(17),
      Q => \^q\(1)
    );
\q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(18),
      Q => \^q\(2)
    );
\q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(19),
      Q => \^q\(3)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(1),
      Q => \q_reg_n_0_[1]\
    );
\q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(20),
      Q => \^q\(4)
    );
\q_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(21),
      Q => \^q\(5)
    );
\q_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(22),
      Q => \^q\(6)
    );
\q_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(23),
      Q => \^q\(7)
    );
\q_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(24),
      Q => \^q\(8)
    );
\q_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(25),
      Q => \^q\(9)
    );
\q_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(26),
      Q => \^q\(10)
    );
\q_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(27),
      Q => \^q\(11)
    );
\q_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(28),
      Q => \^q\(12)
    );
\q_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(29),
      Q => \^q\(13)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(2),
      Q => \q_reg_n_0_[2]\
    );
\q_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(30),
      Q => \^q\(14)
    );
\q_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(31),
      Q => \^q\(15)
    );
\q_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(32),
      Q => \^q\(16)
    );
\q_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(33),
      Q => \^q\(17)
    );
\q_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(34),
      Q => \^q\(18)
    );
\q_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(35),
      Q => \^q\(19)
    );
\q_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(36),
      Q => \^q\(20)
    );
\q_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(37),
      Q => ReadDataW(0)
    );
\q_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(38),
      Q => ReadDataW(1)
    );
\q_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(39),
      Q => ReadDataW(2)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(3),
      Q => \q_reg_n_0_[3]\
    );
\q_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(40),
      Q => ReadDataW(3)
    );
\q_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(41),
      Q => ReadDataW(4)
    );
\q_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(42),
      Q => ReadDataW(5)
    );
\q_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(43),
      Q => ReadDataW(6)
    );
\q_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(44),
      Q => ReadDataW(7)
    );
\q_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(45),
      Q => ReadDataW(8)
    );
\q_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(46),
      Q => ReadDataW(9)
    );
\q_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(47),
      Q => ReadDataW(10)
    );
\q_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(48),
      Q => ReadDataW(11)
    );
\q_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(49),
      Q => ReadDataW(12)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(4),
      Q => \q_reg_n_0_[4]\
    );
\q_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(50),
      Q => ReadDataW(13)
    );
\q_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(51),
      Q => ReadDataW(14)
    );
\q_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(52),
      Q => ReadDataW(15)
    );
\q_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(53),
      Q => \^q\(21)
    );
\q_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(54),
      Q => \^q\(22)
    );
\q_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(55),
      Q => \^q\(23)
    );
\q_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(56),
      Q => \^q\(24)
    );
\q_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(57),
      Q => \^q\(25)
    );
\q_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(58),
      Q => \^q\(26)
    );
\q_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(59),
      Q => \^q\(27)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(5),
      Q => \q_reg_n_0_[5]\
    );
\q_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(60),
      Q => \^q\(28)
    );
\q_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(61),
      Q => \^q\(29)
    );
\q_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(62),
      Q => \^q\(30)
    );
\q_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(63),
      Q => \^q\(31)
    );
\q_reg[64]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(64),
      Q => \^q\(32)
    );
\q_reg[65]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(65),
      Q => \^q\(33)
    );
\q_reg[66]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(66),
      Q => \^q\(34)
    );
\q_reg[67]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(67),
      Q => \^q\(35)
    );
\q_reg[68]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(68),
      Q => \^q\(36)
    );
\q_reg[69]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(69),
      Q => ALUResultW(0)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(6),
      Q => \q_reg_n_0_[6]\
    );
\q_reg[70]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(70),
      Q => ALUResultW(1)
    );
\q_reg[71]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(71),
      Q => ALUResultW(2)
    );
\q_reg[72]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(72),
      Q => ALUResultW(3)
    );
\q_reg[73]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(73),
      Q => ALUResultW(4)
    );
\q_reg[74]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(74),
      Q => ALUResultW(5)
    );
\q_reg[75]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(75),
      Q => ALUResultW(6)
    );
\q_reg[76]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(76),
      Q => ALUResultW(7)
    );
\q_reg[77]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(77),
      Q => ALUResultW(8)
    );
\q_reg[78]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(78),
      Q => ALUResultW(9)
    );
\q_reg[79]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(79),
      Q => ALUResultW(10)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(7),
      Q => \q_reg_n_0_[7]\
    );
\q_reg[80]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(80),
      Q => ALUResultW(11)
    );
\q_reg[81]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(81),
      Q => ALUResultW(12)
    );
\q_reg[82]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(82),
      Q => ALUResultW(13)
    );
\q_reg[83]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(83),
      Q => ALUResultW(14)
    );
\q_reg[84]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(84),
      Q => ALUResultW(15)
    );
\q_reg[85]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(85),
      Q => \^q\(37)
    );
\q_reg[86]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(86),
      Q => \^q\(38)
    );
\q_reg[87]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(87),
      Q => \^q\(39)
    );
\q_reg[88]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(88),
      Q => \^q\(40)
    );
\q_reg[89]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(89),
      Q => \^q\(41)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(8),
      Q => \q_reg_n_0_[8]\
    );
\q_reg[90]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(90),
      Q => \^q\(42)
    );
\q_reg[91]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(91),
      Q => \^q\(43)
    );
\q_reg[92]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(92),
      Q => \^q\(44)
    );
\q_reg[93]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(93),
      Q => \^q\(45)
    );
\q_reg[94]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(94),
      Q => \^q\(46)
    );
\q_reg[95]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(95),
      Q => \^q\(47)
    );
\q_reg[96]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(96),
      Q => \^q\(48)
    );
\q_reg[97]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(97),
      Q => \^q\(49)
    );
\q_reg[98]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(98),
      Q => \^q\(50)
    );
\q_reg[99]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(99),
      Q => \^q\(51)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(9),
      Q => \q_reg_n_0_[9]\
    );
result2_carry_i_48: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(18),
      I1 => result2_carry_i_43(0),
      I2 => result2_carry_i_43(1),
      I3 => \^q\(19),
      O => \q_reg[34]_0\
    );
rf_reg_r1_0_31_0_5_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => ReadDataW(0),
      I1 => \q_reg[52]_0\(1),
      I2 => \q_reg[52]_0\(3),
      I3 => ALUResultW(0),
      O => rf_reg_r1_0_31_0_5_i_10_n_0
    );
rf_reg_r1_0_31_0_5_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACCAA"
    )
        port map (
      I0 => \loader/data0\(0),
      I1 => ReadDataW(0),
      I2 => \^q\(21),
      I3 => \q_reg[52]_0\(0),
      I4 => ALUResultW(1),
      O => rf_reg_r1_0_31_0_5_i_11_n_0
    );
rf_reg_r1_0_31_0_5_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => ReadDataW(3),
      I1 => \q_reg[52]_0\(1),
      I2 => \q_reg[52]_0\(3),
      I3 => ALUResultW(3),
      O => rf_reg_r1_0_31_0_5_i_12_n_0
    );
rf_reg_r1_0_31_0_5_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACCAA"
    )
        port map (
      I0 => \loader/data0\(3),
      I1 => ReadDataW(3),
      I2 => \^q\(24),
      I3 => \q_reg[52]_0\(0),
      I4 => ALUResultW(1),
      O => rf_reg_r1_0_31_0_5_i_13_n_0
    );
rf_reg_r1_0_31_0_5_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => ReadDataW(2),
      I1 => \q_reg[52]_0\(1),
      I2 => \q_reg[52]_0\(3),
      I3 => ALUResultW(2),
      O => rf_reg_r1_0_31_0_5_i_14_n_0
    );
rf_reg_r1_0_31_0_5_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACCAA"
    )
        port map (
      I0 => \loader/data0\(2),
      I1 => ReadDataW(2),
      I2 => \^q\(23),
      I3 => \q_reg[52]_0\(0),
      I4 => ALUResultW(1),
      O => rf_reg_r1_0_31_0_5_i_15_n_0
    );
rf_reg_r1_0_31_0_5_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => ReadDataW(5),
      I1 => \q_reg[52]_0\(1),
      I2 => \q_reg[52]_0\(3),
      I3 => ALUResultW(5),
      O => rf_reg_r1_0_31_0_5_i_16_n_0
    );
rf_reg_r1_0_31_0_5_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACCAA"
    )
        port map (
      I0 => \loader/data0\(5),
      I1 => ReadDataW(5),
      I2 => \^q\(26),
      I3 => \q_reg[52]_0\(0),
      I4 => ALUResultW(1),
      O => rf_reg_r1_0_31_0_5_i_17_n_0
    );
rf_reg_r1_0_31_0_5_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => ReadDataW(4),
      I1 => \q_reg[52]_0\(1),
      I2 => \q_reg[52]_0\(3),
      I3 => ALUResultW(4),
      O => rf_reg_r1_0_31_0_5_i_18_n_0
    );
rf_reg_r1_0_31_0_5_i_19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACCAA"
    )
        port map (
      I0 => \loader/data0\(4),
      I1 => ReadDataW(4),
      I2 => \^q\(25),
      I3 => \q_reg[52]_0\(0),
      I4 => ALUResultW(1),
      O => rf_reg_r1_0_31_0_5_i_19_n_0
    );
rf_reg_r1_0_31_0_5_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8BBB8B8B8"
    )
        port map (
      I0 => \q_reg_n_0_[1]\,
      I1 => \q_reg[52]_0\(4),
      I2 => rf_reg_r1_0_31_0_5_i_8_n_0,
      I3 => rf_reg_r1_0_31_0_5_i_9_n_0,
      I4 => \q_reg[52]_0\(3),
      I5 => \q_reg[52]_0\(1),
      O => wd3(1)
    );
rf_reg_r1_0_31_0_5_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(30),
      I1 => ReadDataW(9),
      I2 => ALUResultW(0),
      I3 => \^q\(22),
      I4 => ALUResultW(1),
      I5 => ReadDataW(1),
      O => \loader/data0\(1)
    );
rf_reg_r1_0_31_0_5_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(29),
      I1 => ReadDataW(8),
      I2 => ALUResultW(0),
      I3 => \^q\(21),
      I4 => ALUResultW(1),
      I5 => ReadDataW(0),
      O => \loader/data0\(0)
    );
rf_reg_r1_0_31_0_5_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(32),
      I1 => ReadDataW(11),
      I2 => ALUResultW(0),
      I3 => \^q\(24),
      I4 => ALUResultW(1),
      I5 => ReadDataW(3),
      O => \loader/data0\(3)
    );
rf_reg_r1_0_31_0_5_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(31),
      I1 => ReadDataW(10),
      I2 => ALUResultW(0),
      I3 => \^q\(23),
      I4 => ALUResultW(1),
      I5 => ReadDataW(2),
      O => \loader/data0\(2)
    );
rf_reg_r1_0_31_0_5_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(34),
      I1 => ReadDataW(13),
      I2 => ALUResultW(0),
      I3 => \^q\(26),
      I4 => ALUResultW(1),
      I5 => ReadDataW(5),
      O => \loader/data0\(5)
    );
rf_reg_r1_0_31_0_5_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(33),
      I1 => ReadDataW(12),
      I2 => ALUResultW(0),
      I3 => \^q\(25),
      I4 => ALUResultW(1),
      I5 => ReadDataW(4),
      O => \loader/data0\(4)
    );
rf_reg_r1_0_31_0_5_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8BBB8B8B8"
    )
        port map (
      I0 => \q_reg_n_0_[0]\,
      I1 => \q_reg[52]_0\(4),
      I2 => rf_reg_r1_0_31_0_5_i_10_n_0,
      I3 => rf_reg_r1_0_31_0_5_i_11_n_0,
      I4 => \q_reg[52]_0\(3),
      I5 => \q_reg[52]_0\(1),
      O => wd3(0)
    );
rf_reg_r1_0_31_0_5_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8BBB8B8B8"
    )
        port map (
      I0 => \q_reg_n_0_[3]\,
      I1 => \q_reg[52]_0\(4),
      I2 => rf_reg_r1_0_31_0_5_i_12_n_0,
      I3 => rf_reg_r1_0_31_0_5_i_13_n_0,
      I4 => \q_reg[52]_0\(3),
      I5 => \q_reg[52]_0\(1),
      O => wd3(3)
    );
rf_reg_r1_0_31_0_5_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8BBB8B8B8"
    )
        port map (
      I0 => \q_reg_n_0_[2]\,
      I1 => \q_reg[52]_0\(4),
      I2 => rf_reg_r1_0_31_0_5_i_14_n_0,
      I3 => rf_reg_r1_0_31_0_5_i_15_n_0,
      I4 => \q_reg[52]_0\(3),
      I5 => \q_reg[52]_0\(1),
      O => wd3(2)
    );
rf_reg_r1_0_31_0_5_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8BBB8B8B8"
    )
        port map (
      I0 => \q_reg_n_0_[5]\,
      I1 => \q_reg[52]_0\(4),
      I2 => rf_reg_r1_0_31_0_5_i_16_n_0,
      I3 => rf_reg_r1_0_31_0_5_i_17_n_0,
      I4 => \q_reg[52]_0\(3),
      I5 => \q_reg[52]_0\(1),
      O => wd3(5)
    );
rf_reg_r1_0_31_0_5_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8BBB8B8B8"
    )
        port map (
      I0 => \q_reg_n_0_[4]\,
      I1 => \q_reg[52]_0\(4),
      I2 => rf_reg_r1_0_31_0_5_i_18_n_0,
      I3 => rf_reg_r1_0_31_0_5_i_19_n_0,
      I4 => \q_reg[52]_0\(3),
      I5 => \q_reg[52]_0\(1),
      O => wd3(4)
    );
rf_reg_r1_0_31_0_5_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => ReadDataW(1),
      I1 => \q_reg[52]_0\(1),
      I2 => \q_reg[52]_0\(3),
      I3 => ALUResultW(1),
      O => rf_reg_r1_0_31_0_5_i_8_n_0
    );
rf_reg_r1_0_31_0_5_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACCAA"
    )
        port map (
      I0 => \loader/data0\(1),
      I1 => ReadDataW(1),
      I2 => \^q\(22),
      I3 => \q_reg[52]_0\(0),
      I4 => ALUResultW(1),
      O => rf_reg_r1_0_31_0_5_i_9_n_0
    );
rf_reg_r1_0_31_12_17_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8BBB8B8B8"
    )
        port map (
      I0 => \q_reg_n_0_[13]\,
      I1 => \q_reg[52]_0\(4),
      I2 => rf_reg_r1_0_31_12_17_i_7_n_0,
      I3 => rf_reg_r1_0_31_12_17_i_8_n_0,
      I4 => \q_reg[52]_0\(3),
      I5 => \q_reg[52]_0\(1),
      O => wd3(13)
    );
rf_reg_r1_0_31_12_17_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABA101010BA10"
    )
        port map (
      I0 => \q_reg[52]_0\(0),
      I1 => \q_reg[52]_0\(2),
      I2 => \^q_reg[68]_0\,
      I3 => ReadDataW(12),
      I4 => ALUResultW(1),
      I5 => \^q\(33),
      O => rf_reg_r1_0_31_12_17_i_10_n_0
    );
rf_reg_r1_0_31_12_17_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => ReadDataW(15),
      I1 => \q_reg[52]_0\(1),
      I2 => \q_reg[52]_0\(3),
      I3 => ALUResultW(15),
      O => rf_reg_r1_0_31_12_17_i_11_n_0
    );
rf_reg_r1_0_31_12_17_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000F0AACC00CCAA"
    )
        port map (
      I0 => \^q_reg[68]_0\,
      I1 => ReadDataW(15),
      I2 => \^q\(36),
      I3 => \q_reg[52]_0\(0),
      I4 => \q_reg[52]_0\(2),
      I5 => ALUResultW(1),
      O => rf_reg_r1_0_31_12_17_i_12_n_0
    );
rf_reg_r1_0_31_12_17_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => ReadDataW(14),
      I1 => \q_reg[52]_0\(1),
      I2 => \q_reg[52]_0\(3),
      I3 => ALUResultW(14),
      O => rf_reg_r1_0_31_12_17_i_13_n_0
    );
rf_reg_r1_0_31_12_17_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABA101010BA10"
    )
        port map (
      I0 => \q_reg[52]_0\(0),
      I1 => \q_reg[52]_0\(2),
      I2 => \^q_reg[68]_0\,
      I3 => ReadDataW(14),
      I4 => ALUResultW(1),
      I5 => \^q\(35),
      O => rf_reg_r1_0_31_12_17_i_14_n_0
    );
rf_reg_r1_0_31_12_17_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(36),
      I1 => ALUResultW(1),
      I2 => ReadDataW(15),
      O => \q_reg[68]_1\
    );
rf_reg_r1_0_31_12_17_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8BBB8B8B8"
    )
        port map (
      I0 => \q_reg_n_0_[12]\,
      I1 => \q_reg[52]_0\(4),
      I2 => rf_reg_r1_0_31_12_17_i_9_n_0,
      I3 => rf_reg_r1_0_31_12_17_i_10_n_0,
      I4 => \q_reg[52]_0\(3),
      I5 => \q_reg[52]_0\(1),
      O => wd3(12)
    );
rf_reg_r1_0_31_12_17_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8BBB8B8B8"
    )
        port map (
      I0 => \q_reg_n_0_[15]\,
      I1 => \q_reg[52]_0\(4),
      I2 => rf_reg_r1_0_31_12_17_i_11_n_0,
      I3 => rf_reg_r1_0_31_12_17_i_12_n_0,
      I4 => \q_reg[52]_0\(3),
      I5 => \q_reg[52]_0\(1),
      O => wd3(15)
    );
rf_reg_r1_0_31_12_17_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8BBB8B8B8"
    )
        port map (
      I0 => \q_reg_n_0_[14]\,
      I1 => \q_reg[52]_0\(4),
      I2 => rf_reg_r1_0_31_12_17_i_13_n_0,
      I3 => rf_reg_r1_0_31_12_17_i_14_n_0,
      I4 => \q_reg[52]_0\(3),
      I5 => \q_reg[52]_0\(1),
      O => wd3(14)
    );
rf_reg_r1_0_31_12_17_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => ReadDataW(13),
      I1 => \q_reg[52]_0\(1),
      I2 => \q_reg[52]_0\(3),
      I3 => ALUResultW(13),
      O => rf_reg_r1_0_31_12_17_i_7_n_0
    );
rf_reg_r1_0_31_12_17_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABA101010BA10"
    )
        port map (
      I0 => \q_reg[52]_0\(0),
      I1 => \q_reg[52]_0\(2),
      I2 => \^q_reg[68]_0\,
      I3 => ReadDataW(13),
      I4 => ALUResultW(1),
      I5 => \^q\(34),
      O => rf_reg_r1_0_31_12_17_i_8_n_0
    );
rf_reg_r1_0_31_12_17_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => ReadDataW(12),
      I1 => \q_reg[52]_0\(1),
      I2 => \q_reg[52]_0\(3),
      I3 => ALUResultW(12),
      O => rf_reg_r1_0_31_12_17_i_9_n_0
    );
rf_reg_r1_0_31_6_11_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8BBB8B8B8"
    )
        port map (
      I0 => \q_reg_n_0_[7]\,
      I1 => \q_reg[52]_0\(4),
      I2 => rf_reg_r1_0_31_6_11_i_7_n_0,
      I3 => rf_reg_r1_0_31_6_11_i_8_n_0,
      I4 => \q_reg[52]_0\(3),
      I5 => \q_reg[52]_0\(1),
      O => wd3(7)
    );
rf_reg_r1_0_31_6_11_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACCAA"
    )
        port map (
      I0 => \loader/data0\(6),
      I1 => ReadDataW(6),
      I2 => \^q\(27),
      I3 => \q_reg[52]_0\(0),
      I4 => ALUResultW(1),
      O => rf_reg_r1_0_31_6_11_i_10_n_0
    );
rf_reg_r1_0_31_6_11_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => ReadDataW(9),
      I1 => \q_reg[52]_0\(1),
      I2 => \q_reg[52]_0\(3),
      I3 => ALUResultW(9),
      O => rf_reg_r1_0_31_6_11_i_11_n_0
    );
rf_reg_r1_0_31_6_11_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABA101010BA10"
    )
        port map (
      I0 => \q_reg[52]_0\(0),
      I1 => \q_reg[52]_0\(2),
      I2 => \^q_reg[68]_0\,
      I3 => ReadDataW(9),
      I4 => ALUResultW(1),
      I5 => \^q\(30),
      O => rf_reg_r1_0_31_6_11_i_12_n_0
    );
rf_reg_r1_0_31_6_11_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => ReadDataW(8),
      I1 => \q_reg[52]_0\(1),
      I2 => \q_reg[52]_0\(3),
      I3 => ALUResultW(8),
      O => rf_reg_r1_0_31_6_11_i_13_n_0
    );
rf_reg_r1_0_31_6_11_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABA101010BA10"
    )
        port map (
      I0 => \q_reg[52]_0\(0),
      I1 => \q_reg[52]_0\(2),
      I2 => \^q_reg[68]_0\,
      I3 => ReadDataW(8),
      I4 => ALUResultW(1),
      I5 => \^q\(29),
      O => rf_reg_r1_0_31_6_11_i_14_n_0
    );
rf_reg_r1_0_31_6_11_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => ReadDataW(11),
      I1 => \q_reg[52]_0\(1),
      I2 => \q_reg[52]_0\(3),
      I3 => ALUResultW(11),
      O => rf_reg_r1_0_31_6_11_i_15_n_0
    );
rf_reg_r1_0_31_6_11_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABA101010BA10"
    )
        port map (
      I0 => \q_reg[52]_0\(0),
      I1 => \q_reg[52]_0\(2),
      I2 => \^q_reg[68]_0\,
      I3 => ReadDataW(11),
      I4 => ALUResultW(1),
      I5 => \^q\(32),
      O => rf_reg_r1_0_31_6_11_i_16_n_0
    );
rf_reg_r1_0_31_6_11_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => ReadDataW(10),
      I1 => \q_reg[52]_0\(1),
      I2 => \q_reg[52]_0\(3),
      I3 => ALUResultW(10),
      O => rf_reg_r1_0_31_6_11_i_17_n_0
    );
rf_reg_r1_0_31_6_11_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABA101010BA10"
    )
        port map (
      I0 => \q_reg[52]_0\(0),
      I1 => \q_reg[52]_0\(2),
      I2 => \^q_reg[68]_0\,
      I3 => ReadDataW(10),
      I4 => ALUResultW(1),
      I5 => \^q\(31),
      O => rf_reg_r1_0_31_6_11_i_18_n_0
    );
rf_reg_r1_0_31_6_11_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(36),
      I1 => ReadDataW(15),
      I2 => ALUResultW(0),
      I3 => \^q\(28),
      I4 => ALUResultW(1),
      I5 => ReadDataW(7),
      O => \^q_reg[68]_0\
    );
rf_reg_r1_0_31_6_11_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8BBB8B8B8"
    )
        port map (
      I0 => \q_reg_n_0_[6]\,
      I1 => \q_reg[52]_0\(4),
      I2 => rf_reg_r1_0_31_6_11_i_9_n_0,
      I3 => rf_reg_r1_0_31_6_11_i_10_n_0,
      I4 => \q_reg[52]_0\(3),
      I5 => \q_reg[52]_0\(1),
      O => wd3(6)
    );
rf_reg_r1_0_31_6_11_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(35),
      I1 => ReadDataW(14),
      I2 => ALUResultW(0),
      I3 => \^q\(27),
      I4 => ALUResultW(1),
      I5 => ReadDataW(6),
      O => \loader/data0\(6)
    );
rf_reg_r1_0_31_6_11_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8BBB8B8B8"
    )
        port map (
      I0 => \q_reg_n_0_[9]\,
      I1 => \q_reg[52]_0\(4),
      I2 => rf_reg_r1_0_31_6_11_i_11_n_0,
      I3 => rf_reg_r1_0_31_6_11_i_12_n_0,
      I4 => \q_reg[52]_0\(3),
      I5 => \q_reg[52]_0\(1),
      O => wd3(9)
    );
rf_reg_r1_0_31_6_11_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8BBB8B8B8"
    )
        port map (
      I0 => \q_reg_n_0_[8]\,
      I1 => \q_reg[52]_0\(4),
      I2 => rf_reg_r1_0_31_6_11_i_13_n_0,
      I3 => rf_reg_r1_0_31_6_11_i_14_n_0,
      I4 => \q_reg[52]_0\(3),
      I5 => \q_reg[52]_0\(1),
      O => wd3(8)
    );
rf_reg_r1_0_31_6_11_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8BBB8B8B8"
    )
        port map (
      I0 => \q_reg_n_0_[11]\,
      I1 => \q_reg[52]_0\(4),
      I2 => rf_reg_r1_0_31_6_11_i_15_n_0,
      I3 => rf_reg_r1_0_31_6_11_i_16_n_0,
      I4 => \q_reg[52]_0\(3),
      I5 => \q_reg[52]_0\(1),
      O => wd3(11)
    );
rf_reg_r1_0_31_6_11_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8BBB8B8B8"
    )
        port map (
      I0 => \q_reg_n_0_[10]\,
      I1 => \q_reg[52]_0\(4),
      I2 => rf_reg_r1_0_31_6_11_i_17_n_0,
      I3 => rf_reg_r1_0_31_6_11_i_18_n_0,
      I4 => \q_reg[52]_0\(3),
      I5 => \q_reg[52]_0\(1),
      O => wd3(10)
    );
rf_reg_r1_0_31_6_11_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => ReadDataW(7),
      I1 => \q_reg[52]_0\(1),
      I2 => \q_reg[52]_0\(3),
      I3 => ALUResultW(7),
      O => rf_reg_r1_0_31_6_11_i_7_n_0
    );
rf_reg_r1_0_31_6_11_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AACCAA"
    )
        port map (
      I0 => \^q_reg[68]_0\,
      I1 => ReadDataW(7),
      I2 => \^q\(28),
      I3 => \q_reg[52]_0\(0),
      I4 => ALUResultW(1),
      O => rf_reg_r1_0_31_6_11_i_8_n_0
    );
rf_reg_r1_0_31_6_11_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => ReadDataW(6),
      I1 => \q_reg[52]_0\(1),
      I2 => \q_reg[52]_0\(3),
      I3 => ALUResultW(6),
      O => rf_reg_r1_0_31_6_11_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_floprc is
  port (
    D : out STD_LOGIC_VECTOR ( 27 downto 0 );
    \q_reg[9]_0\ : out STD_LOGIC_VECTOR ( 27 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \q_reg[13]_0\ : out STD_LOGIC;
    \q_reg[2]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[9]_1\ : out STD_LOGIC;
    \q_reg[10]_0\ : out STD_LOGIC;
    \q_reg[9]_2\ : out STD_LOGIC;
    \q_reg[8]_0\ : out STD_LOGIC;
    \q_reg[8]_1\ : out STD_LOGIC;
    \q_reg[8]_2\ : out STD_LOGIC;
    \q_reg[11]_0\ : out STD_LOGIC;
    \q_reg[9]_3\ : out STD_LOGIC;
    \q_reg[8]_3\ : out STD_LOGIC;
    PCPlus4F : in STD_LOGIC_VECTOR ( 27 downto 0 );
    PCTargetEmux : in STD_LOGIC_VECTOR ( 27 downto 0 );
    \q_reg[2]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    InstrF : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \q[31]_i_4_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[92]\ : in STD_LOGIC;
    \q_reg[92]_0\ : in STD_LOGIC;
    \q_reg[92]_1\ : in STD_LOGIC;
    \q_reg[93]\ : in STD_LOGIC;
    \q_reg[93]_0\ : in STD_LOGIC;
    \q_reg[93]_1\ : in STD_LOGIC;
    \q_reg[94]\ : in STD_LOGIC;
    \q_reg[94]_0\ : in STD_LOGIC;
    \q_reg[94]_1\ : in STD_LOGIC;
    \q_reg[95]\ : in STD_LOGIC;
    \q_reg[95]_0\ : in STD_LOGIC;
    \q_reg[95]_1\ : in STD_LOGIC;
    \q_reg[96]\ : in STD_LOGIC;
    \q_reg[96]_0\ : in STD_LOGIC;
    \q_reg[96]_1\ : in STD_LOGIC;
    \q_reg[97]\ : in STD_LOGIC;
    \q_reg[97]_0\ : in STD_LOGIC;
    \q_reg[97]_1\ : in STD_LOGIC;
    \q_reg[98]\ : in STD_LOGIC;
    \q_reg[98]_0\ : in STD_LOGIC;
    \q_reg[98]_1\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[100]\ : in STD_LOGIC;
    \q_reg[76]\ : in STD_LOGIC;
    \q_reg[76]_0\ : in STD_LOGIC;
    \q_reg[76]_1\ : in STD_LOGIC;
    \q_reg[90]\ : in STD_LOGIC;
    \q_reg[90]_0\ : in STD_LOGIC;
    \q_reg[90]_1\ : in STD_LOGIC;
    \q_reg[91]\ : in STD_LOGIC;
    \q_reg[91]_0\ : in STD_LOGIC;
    \q_reg[91]_1\ : in STD_LOGIC;
    \q_reg[89]\ : in STD_LOGIC;
    \q_reg[89]_0\ : in STD_LOGIC;
    \q_reg[89]_1\ : in STD_LOGIC;
    \q_reg[88]\ : in STD_LOGIC;
    \q_reg[88]_0\ : in STD_LOGIC;
    \q_reg[88]_1\ : in STD_LOGIC;
    \q_reg[84]\ : in STD_LOGIC;
    \q_reg[84]_0\ : in STD_LOGIC;
    \q_reg[84]_1\ : in STD_LOGIC;
    \q_reg[85]\ : in STD_LOGIC;
    \q_reg[85]_0\ : in STD_LOGIC;
    \q_reg[85]_1\ : in STD_LOGIC;
    \q_reg[87]\ : in STD_LOGIC;
    \q_reg[87]_0\ : in STD_LOGIC;
    \q_reg[87]_1\ : in STD_LOGIC;
    \q_reg[86]\ : in STD_LOGIC;
    \q_reg[86]_0\ : in STD_LOGIC;
    \q_reg[86]_1\ : in STD_LOGIC;
    \q_reg[80]\ : in STD_LOGIC;
    \q_reg[80]_0\ : in STD_LOGIC;
    \q_reg[80]_1\ : in STD_LOGIC;
    \q_reg[81]\ : in STD_LOGIC;
    \q_reg[81]_0\ : in STD_LOGIC;
    \q_reg[81]_1\ : in STD_LOGIC;
    \q_reg[82]\ : in STD_LOGIC;
    \q_reg[82]_0\ : in STD_LOGIC;
    \q_reg[82]_1\ : in STD_LOGIC;
    \q_reg[83]\ : in STD_LOGIC;
    \q_reg[83]_0\ : in STD_LOGIC;
    \q_reg[83]_1\ : in STD_LOGIC;
    \q_reg[78]\ : in STD_LOGIC;
    \q_reg[78]_0\ : in STD_LOGIC;
    \q_reg[78]_1\ : in STD_LOGIC;
    \q_reg[79]\ : in STD_LOGIC;
    \q_reg[79]_0\ : in STD_LOGIC;
    \q_reg[79]_1\ : in STD_LOGIC;
    \q_reg[77]\ : in STD_LOGIC;
    \q_reg[77]_0\ : in STD_LOGIC;
    \q_reg[77]_1\ : in STD_LOGIC;
    \q_reg[72]\ : in STD_LOGIC;
    \q_reg[72]_0\ : in STD_LOGIC;
    \q_reg[72]_1\ : in STD_LOGIC;
    \q_reg[75]\ : in STD_LOGIC;
    \q_reg[75]_0\ : in STD_LOGIC;
    \q_reg[75]_1\ : in STD_LOGIC;
    \q_reg[75]_2\ : in STD_LOGIC;
    \q_reg[74]\ : in STD_LOGIC;
    \q_reg[74]_0\ : in STD_LOGIC;
    \q_reg[74]_1\ : in STD_LOGIC;
    \q_reg[73]\ : in STD_LOGIC;
    \q_reg[73]_0\ : in STD_LOGIC;
    \q_reg[73]_1\ : in STD_LOGIC;
    \q_reg[73]_2\ : in STD_LOGIC;
    \q_reg[74]_2\ : in STD_LOGIC;
    \q_reg[72]_2\ : in STD_LOGIC;
    SrcBE : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \q_reg[80]_2\ : in STD_LOGIC;
    \q_reg[78]_2\ : in STD_LOGIC;
    \q_reg[82]_2\ : in STD_LOGIC;
    \q_reg[84]_2\ : in STD_LOGIC;
    \q_reg[77]_2\ : in STD_LOGIC;
    \q_reg[81]_2\ : in STD_LOGIC;
    \q_reg[79]_2\ : in STD_LOGIC;
    \q_reg[76]_2\ : in STD_LOGIC;
    \q_reg[83]_2\ : in STD_LOGIC;
    \q_reg[89]_2\ : in STD_LOGIC;
    \q_reg[90]_2\ : in STD_LOGIC;
    \q_reg[91]_2\ : in STD_LOGIC;
    \q_reg[92]_2\ : in STD_LOGIC;
    \q_reg[87]_2\ : in STD_LOGIC;
    \q_reg[88]_2\ : in STD_LOGIC;
    \q_reg[85]_2\ : in STD_LOGIC;
    \q_reg[86]_2\ : in STD_LOGIC;
    \q_reg[93]_2\ : in STD_LOGIC;
    \q_reg[94]_2\ : in STD_LOGIC;
    \q_reg[95]_2\ : in STD_LOGIC;
    \q_reg[96]_2\ : in STD_LOGIC;
    \q_reg[97]_2\ : in STD_LOGIC;
    \q_reg[98]_2\ : in STD_LOGIC;
    SrcAE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[100]_0\ : in STD_LOGIC;
    \q_reg[100]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[17]_0\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_floprc;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_floprc is
  signal BranchE : STD_LOGIC;
  signal Branchout10_in : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \q[100]_i_2_n_0\ : STD_LOGIC;
  signal \q[100]_i_3_n_0\ : STD_LOGIC;
  signal \q[31]_i_10_n_0\ : STD_LOGIC;
  signal \q[31]_i_11_n_0\ : STD_LOGIC;
  signal \q[31]_i_12_n_0\ : STD_LOGIC;
  signal \q[31]_i_13_n_0\ : STD_LOGIC;
  signal \q[31]_i_14_n_0\ : STD_LOGIC;
  signal \q[31]_i_15_n_0\ : STD_LOGIC;
  signal \q[31]_i_16_n_0\ : STD_LOGIC;
  signal \q[31]_i_17_n_0\ : STD_LOGIC;
  signal \q[31]_i_18_n_0\ : STD_LOGIC;
  signal \q[31]_i_9_n_0\ : STD_LOGIC;
  signal \q[72]_i_4_n_0\ : STD_LOGIC;
  signal \q[73]_i_4_n_0\ : STD_LOGIC;
  signal \q[74]_i_4_n_0\ : STD_LOGIC;
  signal \q[75]_i_4_n_0\ : STD_LOGIC;
  signal \q[76]_i_4_n_0\ : STD_LOGIC;
  signal \q[77]_i_4_n_0\ : STD_LOGIC;
  signal \q[78]_i_4_n_0\ : STD_LOGIC;
  signal \q[79]_i_4_n_0\ : STD_LOGIC;
  signal \q[80]_i_4_n_0\ : STD_LOGIC;
  signal \q[81]_i_4_n_0\ : STD_LOGIC;
  signal \q[82]_i_4_n_0\ : STD_LOGIC;
  signal \q[83]_i_4_n_0\ : STD_LOGIC;
  signal \q[84]_i_4_n_0\ : STD_LOGIC;
  signal \q[85]_i_4_n_0\ : STD_LOGIC;
  signal \q[86]_i_4_n_0\ : STD_LOGIC;
  signal \q[87]_i_4_n_0\ : STD_LOGIC;
  signal \q[88]_i_4_n_0\ : STD_LOGIC;
  signal \q[89]_i_4_n_0\ : STD_LOGIC;
  signal \q[90]_i_4_n_0\ : STD_LOGIC;
  signal \q[91]_i_4_n_0\ : STD_LOGIC;
  signal \q[92]_i_4_n_0\ : STD_LOGIC;
  signal \q[93]_i_4_n_0\ : STD_LOGIC;
  signal \q[94]_i_4_n_0\ : STD_LOGIC;
  signal \q[95]_i_4_n_0\ : STD_LOGIC;
  signal \q[96]_i_4_n_0\ : STD_LOGIC;
  signal \q[97]_i_4_n_0\ : STD_LOGIC;
  signal \q[98]_i_5_n_0\ : STD_LOGIC;
  signal \^q_reg[10]_0\ : STD_LOGIC;
  signal \^q_reg[13]_0\ : STD_LOGIC;
  signal \^q_reg[8]_0\ : STD_LOGIC;
  signal \^q_reg[9]_0\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \^q_reg[9]_1\ : STD_LOGIC;
  signal \^q_reg[9]_2\ : STD_LOGIC;
  signal vE : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q[100]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \q[100]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \q[2]_i_1__2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q[31]_i_10\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q[31]_i_9\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q[65]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q[66]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q[67]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q[68]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q[69]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q[69]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \q[70]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \q[71]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \q[72]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \q[72]_i_4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \q[73]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \q[73]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \q[74]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \q[74]_i_4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \q[75]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \q[75]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \q[76]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \q[76]_i_4\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \q[77]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \q[77]_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \q[78]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \q[78]_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \q[79]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \q[79]_i_4\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \q[80]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \q[80]_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \q[81]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \q[81]_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \q[82]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \q[82]_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \q[83]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \q[83]_i_4\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \q[84]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \q[84]_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \q[85]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \q[85]_i_4\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \q[86]_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \q[86]_i_4\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \q[87]_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \q[87]_i_4\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \q[88]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \q[88]_i_4\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \q[89]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \q[89]_i_4\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \q[90]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \q[90]_i_4\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \q[91]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \q[91]_i_4\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \q[92]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \q[92]_i_4\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \q[93]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \q[93]_i_4\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \q[94]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \q[94]_i_4\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \q[95]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \q[95]_i_4\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \q[96]_i_4\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \q[97]_i_4\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \q[98]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \q[99]_i_10\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \q[99]_i_4\ : label is "soft_lutpair1";
begin
  Q(15 downto 0) <= \^q\(15 downto 0);
  \q_reg[10]_0\ <= \^q_reg[10]_0\;
  \q_reg[13]_0\ <= \^q_reg[13]_0\;
  \q_reg[8]_0\ <= \^q_reg[8]_0\;
  \q_reg[9]_0\(27 downto 0) <= \^q_reg[9]_0\(27 downto 0);
  \q_reg[9]_1\ <= \^q_reg[9]_1\;
  \q_reg[9]_2\ <= \^q_reg[9]_2\;
\q[100]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(8),
      I1 => SrcBE(0),
      O => \q_reg[8]_2\
    );
\q[100]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEAAAAAAAA"
    )
        port map (
      I0 => \q[100]_i_2_n_0\,
      I1 => \q[100]_i_3_n_0\,
      I2 => \q_reg[100]\,
      I3 => \^q_reg[9]_2\,
      I4 => \^q\(9),
      I5 => \^q_reg[9]_1\,
      O => \^q_reg[9]_0\(27)
    );
\q[100]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333300000A080800"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \^q\(10),
      I3 => SrcBE(1),
      I4 => SrcAE(0),
      I5 => \^q\(11),
      O => \q[100]_i_2_n_0\
    );
\q[100]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"013F0100"
    )
        port map (
      I0 => \q_reg[100]_0\,
      I1 => \^q\(9),
      I2 => \^q\(8),
      I3 => \^q\(10),
      I4 => \q_reg[100]_1\(0),
      O => \q[100]_i_3_n_0\
    );
\q[100]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \^q\(10),
      O => \^q_reg[9]_2\
    );
\q[100]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(10),
      I2 => \^q\(11),
      O => \^q_reg[9]_1\
    );
\q[10]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(7),
      I1 => PCTargetEmux(7),
      I2 => \^q_reg[9]_0\(7),
      I3 => \^q\(1),
      I4 => \^q_reg[13]_0\,
      O => D(7)
    );
\q[11]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(8),
      I1 => PCTargetEmux(8),
      I2 => \^q_reg[9]_0\(8),
      I3 => \^q\(1),
      I4 => \^q_reg[13]_0\,
      O => D(8)
    );
\q[12]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(9),
      I1 => PCTargetEmux(9),
      I2 => \^q_reg[9]_0\(9),
      I3 => \^q\(1),
      I4 => \^q_reg[13]_0\,
      O => D(9)
    );
\q[13]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(10),
      I1 => PCTargetEmux(10),
      I2 => \^q_reg[9]_0\(10),
      I3 => \^q\(1),
      I4 => \^q_reg[13]_0\,
      O => D(10)
    );
\q[14]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(11),
      I1 => PCTargetEmux(11),
      I2 => \^q_reg[9]_0\(11),
      I3 => \^q\(1),
      I4 => \^q_reg[13]_0\,
      O => D(11)
    );
\q[15]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(12),
      I1 => PCTargetEmux(12),
      I2 => \^q_reg[9]_0\(12),
      I3 => \^q\(1),
      I4 => \^q_reg[13]_0\,
      O => D(12)
    );
\q[16]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(13),
      I1 => PCTargetEmux(13),
      I2 => \^q_reg[9]_0\(13),
      I3 => \^q\(1),
      I4 => \^q_reg[13]_0\,
      O => D(13)
    );
\q[17]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(14),
      I1 => PCTargetEmux(14),
      I2 => \^q_reg[9]_0\(14),
      I3 => \^q\(1),
      I4 => \^q_reg[13]_0\,
      O => D(14)
    );
\q[18]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(15),
      I1 => PCTargetEmux(15),
      I2 => \^q_reg[9]_0\(15),
      I3 => \^q\(1),
      I4 => \^q_reg[13]_0\,
      O => D(15)
    );
\q[19]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(16),
      I1 => PCTargetEmux(16),
      I2 => \^q_reg[9]_0\(16),
      I3 => \^q\(1),
      I4 => \^q_reg[13]_0\,
      O => D(16)
    );
\q[20]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(17),
      I1 => PCTargetEmux(17),
      I2 => \^q_reg[9]_0\(17),
      I3 => \^q\(1),
      I4 => \^q_reg[13]_0\,
      O => D(17)
    );
\q[21]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(18),
      I1 => PCTargetEmux(18),
      I2 => \^q_reg[9]_0\(18),
      I3 => \^q\(1),
      I4 => \^q_reg[13]_0\,
      O => D(18)
    );
\q[22]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(19),
      I1 => PCTargetEmux(19),
      I2 => \^q_reg[9]_0\(19),
      I3 => \^q\(1),
      I4 => \^q_reg[13]_0\,
      O => D(19)
    );
\q[23]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(20),
      I1 => PCTargetEmux(20),
      I2 => \^q_reg[9]_0\(20),
      I3 => \^q\(1),
      I4 => \^q_reg[13]_0\,
      O => D(20)
    );
\q[24]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(21),
      I1 => PCTargetEmux(21),
      I2 => \^q_reg[9]_0\(21),
      I3 => \^q\(1),
      I4 => \^q_reg[13]_0\,
      O => D(21)
    );
\q[25]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(22),
      I1 => PCTargetEmux(22),
      I2 => \^q_reg[9]_0\(22),
      I3 => \^q\(1),
      I4 => \^q_reg[13]_0\,
      O => D(22)
    );
\q[26]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(23),
      I1 => PCTargetEmux(23),
      I2 => \^q_reg[9]_0\(23),
      I3 => \^q\(1),
      I4 => \^q_reg[13]_0\,
      O => D(23)
    );
\q[27]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(24),
      I1 => PCTargetEmux(24),
      I2 => \^q_reg[9]_0\(24),
      I3 => \^q\(1),
      I4 => \^q_reg[13]_0\,
      O => D(24)
    );
\q[28]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(25),
      I1 => PCTargetEmux(25),
      I2 => \^q_reg[9]_0\(25),
      I3 => \^q\(1),
      I4 => \^q_reg[13]_0\,
      O => D(25)
    );
\q[29]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(26),
      I1 => PCTargetEmux(26),
      I2 => \^q_reg[9]_0\(26),
      I3 => \^q\(1),
      I4 => \^q_reg[13]_0\,
      O => D(26)
    );
\q[2]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q_reg[13]_0\,
      I1 => \q_reg[2]_1\(0),
      O => \q_reg[2]_0\(0)
    );
\q[31]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(4),
      O => \q[31]_i_10_n_0\
    );
\q[31]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \q[31]_i_14_n_0\,
      I1 => \^q_reg[9]_0\(3),
      I2 => \^q_reg[9]_0\(2),
      I3 => \^q_reg[9]_0\(1),
      I4 => \^q_reg[9]_0\(0),
      I5 => \q[31]_i_15_n_0\,
      O => \q[31]_i_11_n_0\
    );
\q[31]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^q_reg[9]_0\(27),
      I1 => \q[31]_i_16_n_0\,
      I2 => \q[31]_i_17_n_0\,
      I3 => \q[31]_i_18_n_0\,
      I4 => \q[31]_i_4_0\(3),
      O => \q[31]_i_12_n_0\
    );
\q[31]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020208080802080"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => BranchE,
      I3 => Branchout10_in,
      I4 => \^q\(3),
      I5 => O(0),
      O => \q[31]_i_13_n_0\
    );
\q[31]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \q[31]_i_4_0\(1),
      I1 => \^q_reg[9]_0\(6),
      I2 => \^q_reg[9]_0\(8),
      I3 => \^q_reg[9]_0\(12),
      I4 => \^q_reg[9]_0\(10),
      I5 => \q[31]_i_4_0\(0),
      O => \q[31]_i_14_n_0\
    );
\q[31]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^q_reg[9]_0\(7),
      I1 => \^q_reg[9]_0\(5),
      I2 => \^q_reg[9]_0\(9),
      I3 => \^q_reg[9]_0\(4),
      I4 => \^q_reg[9]_0\(11),
      I5 => \q[31]_i_4_0\(2),
      O => \q[31]_i_15_n_0\
    );
\q[31]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q_reg[9]_0\(16),
      I1 => \^q_reg[9]_0\(15),
      I2 => \^q_reg[9]_0\(14),
      I3 => \^q_reg[9]_0\(13),
      O => \q[31]_i_16_n_0\
    );
\q[31]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q_reg[9]_0\(18),
      I1 => \^q_reg[9]_0\(17),
      I2 => \^q_reg[9]_0\(20),
      I3 => \^q_reg[9]_0\(19),
      O => \q[31]_i_17_n_0\
    );
\q[31]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^q_reg[9]_0\(23),
      I1 => \^q_reg[9]_0\(24),
      I2 => \^q_reg[9]_0\(21),
      I3 => \^q_reg[9]_0\(22),
      I4 => \^q_reg[9]_0\(26),
      I5 => \^q_reg[9]_0\(25),
      O => \q[31]_i_18_n_0\
    );
\q[31]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555566666AAA"
    )
        port map (
      I0 => vE,
      I1 => \^q_reg[9]_1\,
      I2 => \^q_reg[10]_0\,
      I3 => \q_reg[100]\,
      I4 => \q[100]_i_3_n_0\,
      I5 => \q[100]_i_2_n_0\,
      O => Branchout10_in
    );
\q[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(27),
      I1 => PCTargetEmux(27),
      I2 => \^q_reg[9]_0\(27),
      I3 => \^q\(1),
      I4 => \^q_reg[13]_0\,
      O => D(27)
    );
\q[31]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0005010050000010"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(10),
      I2 => \q_reg[100]_1\(0),
      I3 => SrcBE(1),
      I4 => \^q\(8),
      I5 => SrcAE(0),
      O => vE
    );
\q[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAEEAEAEA"
    )
        port map (
      I0 => \^q\(12),
      I1 => \q[31]_i_9_n_0\,
      I2 => \q[31]_i_10_n_0\,
      I3 => \q[31]_i_11_n_0\,
      I4 => \q[31]_i_12_n_0\,
      I5 => \q[31]_i_13_n_0\,
      O => \^q_reg[13]_0\
    );
\q[31]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => BranchE,
      I1 => \^q\(4),
      I2 => \^q\(3),
      O => \q[31]_i_9_n_0\
    );
\q[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(0),
      I1 => PCTargetEmux(0),
      I2 => \^q_reg[9]_0\(0),
      I3 => \^q\(1),
      I4 => \^q_reg[13]_0\,
      O => D(0)
    );
\q[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(1),
      I1 => PCTargetEmux(1),
      I2 => \^q_reg[9]_0\(1),
      I3 => \^q\(1),
      I4 => \^q_reg[13]_0\,
      O => D(1)
    );
\q[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(2),
      I1 => PCTargetEmux(2),
      I2 => \^q_reg[9]_0\(2),
      I3 => \^q\(1),
      I4 => \^q_reg[13]_0\,
      O => D(2)
    );
\q[65]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(0),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(1)
    );
\q[66]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(1),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(2)
    );
\q[67]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(2),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(3)
    );
\q[68]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(3),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(4)
    );
\q[69]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(4),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(5)
    );
\q[69]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      O => \q_reg[9]_3\
    );
\q[6]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(3),
      I1 => PCTargetEmux(3),
      I2 => \^q_reg[9]_0\(3),
      I3 => \^q\(1),
      I4 => \^q_reg[13]_0\,
      O => D(3)
    );
\q[70]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(5),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(6)
    );
\q[71]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(6),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(7)
    );
\q[72]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(8),
      I1 => SrcBE(0),
      O => \q_reg[8]_3\
    );
\q[72]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(7),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(8)
    );
\q[72]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \^q_reg[10]_0\,
      I2 => \q_reg[72]\,
      I3 => \q_reg[72]_0\,
      I4 => \q[72]_i_4_n_0\,
      I5 => \q_reg[72]_1\,
      O => \^q_reg[9]_0\(0)
    );
\q[72]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \q_reg[72]_2\,
      O => \q[72]_i_4_n_0\
    );
\q[73]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(8),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(9)
    );
\q[73]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \^q_reg[10]_0\,
      I2 => \q_reg[73]\,
      I3 => \q_reg[73]_0\,
      I4 => \q[73]_i_4_n_0\,
      I5 => \q_reg[73]_1\,
      O => \^q_reg[9]_0\(1)
    );
\q[73]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \q_reg[73]_2\,
      O => \q[73]_i_4_n_0\
    );
\q[74]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(9),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(10)
    );
\q[74]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \^q_reg[10]_0\,
      I2 => \q_reg[74]\,
      I3 => \q_reg[74]_0\,
      I4 => \q[74]_i_4_n_0\,
      I5 => \q_reg[74]_1\,
      O => \^q_reg[9]_0\(2)
    );
\q[74]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \q_reg[74]_2\,
      O => \q[74]_i_4_n_0\
    );
\q[75]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(10),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(11)
    );
\q[75]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \^q_reg[10]_0\,
      I2 => \q_reg[75]\,
      I3 => \q_reg[75]_0\,
      I4 => \q[75]_i_4_n_0\,
      I5 => \q_reg[75]_1\,
      O => \^q_reg[9]_0\(3)
    );
\q[75]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \q_reg[75]_2\,
      O => \q[75]_i_4_n_0\
    );
\q[76]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(11),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(12)
    );
\q[76]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \^q_reg[10]_0\,
      I2 => \q_reg[76]\,
      I3 => \q_reg[76]_0\,
      I4 => \q[76]_i_4_n_0\,
      I5 => \q_reg[76]_1\,
      O => \^q_reg[9]_0\(4)
    );
\q[76]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \q_reg[76]_2\,
      O => \q[76]_i_4_n_0\
    );
\q[77]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(12),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(13)
    );
\q[77]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \^q_reg[10]_0\,
      I2 => \q_reg[77]\,
      I3 => \q_reg[77]_0\,
      I4 => \q[77]_i_4_n_0\,
      I5 => \q_reg[77]_1\,
      O => \^q_reg[9]_0\(5)
    );
\q[77]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \q_reg[77]_2\,
      O => \q[77]_i_4_n_0\
    );
\q[78]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(13),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(14)
    );
\q[78]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \^q_reg[10]_0\,
      I2 => \q_reg[78]\,
      I3 => \q_reg[78]_0\,
      I4 => \q[78]_i_4_n_0\,
      I5 => \q_reg[78]_1\,
      O => \^q_reg[9]_0\(6)
    );
\q[78]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \q_reg[78]_2\,
      O => \q[78]_i_4_n_0\
    );
\q[79]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(14),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(15)
    );
\q[79]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \^q_reg[10]_0\,
      I2 => \q_reg[79]\,
      I3 => \q_reg[79]_0\,
      I4 => \q[79]_i_4_n_0\,
      I5 => \q_reg[79]_1\,
      O => \^q_reg[9]_0\(7)
    );
\q[79]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \q_reg[79]_2\,
      O => \q[79]_i_4_n_0\
    );
\q[7]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(4),
      I1 => PCTargetEmux(4),
      I2 => \^q_reg[9]_0\(4),
      I3 => \^q\(1),
      I4 => \^q_reg[13]_0\,
      O => D(4)
    );
\q[80]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(15),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(16)
    );
\q[80]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \^q_reg[10]_0\,
      I2 => \q_reg[80]\,
      I3 => \q_reg[80]_0\,
      I4 => \q[80]_i_4_n_0\,
      I5 => \q_reg[80]_1\,
      O => \^q_reg[9]_0\(8)
    );
\q[80]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \q_reg[80]_2\,
      O => \q[80]_i_4_n_0\
    );
\q[81]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(16),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(17)
    );
\q[81]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \^q_reg[10]_0\,
      I2 => \q_reg[81]\,
      I3 => \q_reg[81]_0\,
      I4 => \q[81]_i_4_n_0\,
      I5 => \q_reg[81]_1\,
      O => \^q_reg[9]_0\(9)
    );
\q[81]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \q_reg[81]_2\,
      O => \q[81]_i_4_n_0\
    );
\q[82]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(17),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(18)
    );
\q[82]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \^q_reg[10]_0\,
      I2 => \q_reg[82]\,
      I3 => \q_reg[82]_0\,
      I4 => \q[82]_i_4_n_0\,
      I5 => \q_reg[82]_1\,
      O => \^q_reg[9]_0\(10)
    );
\q[82]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \q_reg[82]_2\,
      O => \q[82]_i_4_n_0\
    );
\q[83]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(18),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(19)
    );
\q[83]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \^q_reg[10]_0\,
      I2 => \q_reg[83]\,
      I3 => \q_reg[83]_0\,
      I4 => \q[83]_i_4_n_0\,
      I5 => \q_reg[83]_1\,
      O => \^q_reg[9]_0\(11)
    );
\q[83]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \q_reg[83]_2\,
      O => \q[83]_i_4_n_0\
    );
\q[84]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(19),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(20)
    );
\q[84]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \^q_reg[10]_0\,
      I2 => \q_reg[84]\,
      I3 => \q_reg[84]_0\,
      I4 => \q[84]_i_4_n_0\,
      I5 => \q_reg[84]_1\,
      O => \^q_reg[9]_0\(12)
    );
\q[84]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \q_reg[84]_2\,
      O => \q[84]_i_4_n_0\
    );
\q[85]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(20),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(21)
    );
\q[85]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \^q_reg[10]_0\,
      I2 => \q_reg[85]\,
      I3 => \q_reg[85]_0\,
      I4 => \q[85]_i_4_n_0\,
      I5 => \q_reg[85]_1\,
      O => \^q_reg[9]_0\(13)
    );
\q[85]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \q_reg[85]_2\,
      O => \q[85]_i_4_n_0\
    );
\q[86]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(21),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(22)
    );
\q[86]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \^q_reg[10]_0\,
      I2 => \q_reg[86]\,
      I3 => \q_reg[86]_0\,
      I4 => \q[86]_i_4_n_0\,
      I5 => \q_reg[86]_1\,
      O => \^q_reg[9]_0\(14)
    );
\q[86]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \q_reg[86]_2\,
      O => \q[86]_i_4_n_0\
    );
\q[87]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(22),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(23)
    );
\q[87]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \^q_reg[10]_0\,
      I2 => \q_reg[87]\,
      I3 => \q_reg[87]_0\,
      I4 => \q[87]_i_4_n_0\,
      I5 => \q_reg[87]_1\,
      O => \^q_reg[9]_0\(15)
    );
\q[87]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \q_reg[87]_2\,
      O => \q[87]_i_4_n_0\
    );
\q[88]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(23),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(24)
    );
\q[88]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \^q_reg[10]_0\,
      I2 => \q_reg[88]\,
      I3 => \q_reg[88]_0\,
      I4 => \q[88]_i_4_n_0\,
      I5 => \q_reg[88]_1\,
      O => \^q_reg[9]_0\(16)
    );
\q[88]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \q_reg[88]_2\,
      O => \q[88]_i_4_n_0\
    );
\q[89]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(24),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(25)
    );
\q[89]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \^q_reg[10]_0\,
      I2 => \q_reg[89]\,
      I3 => \q_reg[89]_0\,
      I4 => \q[89]_i_4_n_0\,
      I5 => \q_reg[89]_1\,
      O => \^q_reg[9]_0\(17)
    );
\q[89]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \q_reg[89]_2\,
      O => \q[89]_i_4_n_0\
    );
\q[8]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(5),
      I1 => PCTargetEmux(5),
      I2 => \^q_reg[9]_0\(5),
      I3 => \^q\(1),
      I4 => \^q_reg[13]_0\,
      O => D(5)
    );
\q[90]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(25),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(26)
    );
\q[90]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \^q_reg[10]_0\,
      I2 => \q_reg[90]\,
      I3 => \q_reg[90]_0\,
      I4 => \q[90]_i_4_n_0\,
      I5 => \q_reg[90]_1\,
      O => \^q_reg[9]_0\(18)
    );
\q[90]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \q_reg[90]_2\,
      O => \q[90]_i_4_n_0\
    );
\q[91]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(26),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(27)
    );
\q[91]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \^q_reg[10]_0\,
      I2 => \q_reg[91]\,
      I3 => \q_reg[91]_0\,
      I4 => \q[91]_i_4_n_0\,
      I5 => \q_reg[91]_1\,
      O => \^q_reg[9]_0\(19)
    );
\q[91]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \q_reg[91]_2\,
      O => \q[91]_i_4_n_0\
    );
\q[92]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(27),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(28)
    );
\q[92]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \^q_reg[10]_0\,
      I2 => \q_reg[92]\,
      I3 => \q_reg[92]_0\,
      I4 => \q[92]_i_4_n_0\,
      I5 => \q_reg[92]_1\,
      O => \^q_reg[9]_0\(20)
    );
\q[92]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \q_reg[92]_2\,
      O => \q[92]_i_4_n_0\
    );
\q[93]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(28),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(29)
    );
\q[93]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \^q_reg[10]_0\,
      I2 => \q_reg[93]\,
      I3 => \q_reg[93]_0\,
      I4 => \q[93]_i_4_n_0\,
      I5 => \q_reg[93]_1\,
      O => \^q_reg[9]_0\(21)
    );
\q[93]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \q_reg[93]_2\,
      O => \q[93]_i_4_n_0\
    );
\q[94]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(29),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(30)
    );
\q[94]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \^q_reg[10]_0\,
      I2 => \q_reg[94]\,
      I3 => \q_reg[94]_0\,
      I4 => \q[94]_i_4_n_0\,
      I5 => \q_reg[94]_1\,
      O => \^q_reg[9]_0\(22)
    );
\q[94]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \q_reg[94]_2\,
      O => \q[94]_i_4_n_0\
    );
\q[95]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \^q_reg[10]_0\,
      I2 => \q_reg[95]\,
      I3 => \q_reg[95]_0\,
      I4 => \q[95]_i_4_n_0\,
      I5 => \q_reg[95]_1\,
      O => \^q_reg[9]_0\(23)
    );
\q[95]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => InstrF(30),
      I1 => \^q_reg[13]_0\,
      O => \q_reg[2]_0\(31)
    );
\q[95]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \q_reg[95]_2\,
      O => \q[95]_i_4_n_0\
    );
\q[96]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \^q_reg[10]_0\,
      I2 => \q_reg[96]\,
      I3 => \q_reg[96]_0\,
      I4 => \q[96]_i_4_n_0\,
      I5 => \q_reg[96]_1\,
      O => \^q_reg[9]_0\(24)
    );
\q[96]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \q_reg[96]_2\,
      O => \q[96]_i_4_n_0\
    );
\q[97]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \^q_reg[10]_0\,
      I2 => \q_reg[97]\,
      I3 => \q_reg[97]_0\,
      I4 => \q[97]_i_4_n_0\,
      I5 => \q_reg[97]_1\,
      O => \^q_reg[9]_0\(25)
    );
\q[97]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \q_reg[97]_2\,
      O => \q[97]_i_4_n_0\
    );
\q[98]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \^q_reg[9]_1\,
      I1 => \^q_reg[10]_0\,
      I2 => \q_reg[98]\,
      I3 => \q_reg[98]_0\,
      I4 => \q[98]_i_5_n_0\,
      I5 => \q_reg[98]_1\,
      O => \^q_reg[9]_0\(26)
    );
\q[98]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(8),
      I2 => \^q\(9),
      O => \^q_reg[10]_0\
    );
\q[98]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[8]_0\,
      I1 => \q_reg[98]_2\,
      O => \q[98]_i_5_n_0\
    );
\q[99]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(11),
      I2 => SrcBE(0),
      O => \^q_reg[8]_0\
    );
\q[99]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^q\(9),
      I2 => \^q\(10),
      O => \q_reg[11]_0\
    );
\q[99]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(11),
      I2 => SrcBE(0),
      O => \q_reg[8]_1\
    );
\q[9]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => PCPlus4F(6),
      I1 => PCTargetEmux(6),
      I2 => \^q_reg[9]_0\(6),
      I3 => \^q\(1),
      I4 => \^q_reg[13]_0\,
      O => D(6)
    );
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[17]_0\(0),
      Q => \^q\(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[17]_0\(10),
      Q => \^q\(10)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[17]_0\(11),
      Q => \^q\(11)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[17]_0\(12),
      Q => BranchE
    );
\q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[17]_0\(13),
      Q => \^q\(12)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[17]_0\(14),
      Q => \^q\(13)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[17]_0\(15),
      Q => \^q\(14)
    );
\q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[17]_0\(16),
      Q => \^q\(15)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[17]_0\(1),
      Q => \^q\(1)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[17]_0\(2),
      Q => \^q\(2)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[17]_0\(3),
      Q => \^q\(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[17]_0\(4),
      Q => \^q\(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[17]_0\(5),
      Q => \^q\(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[17]_0\(6),
      Q => \^q\(6)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[17]_0\(7),
      Q => \^q\(7)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[17]_0\(8),
      Q => \^q\(8)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[17]_0\(9),
      Q => \^q\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_floprc__parameterized0\ is
  port (
    \q_reg[63]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 69 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    StallD : out STD_LOGIC;
    \FSM_sequential_state_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[9]_0\ : out STD_LOGIC_VECTOR ( 35 downto 0 );
    \q_reg[8]_0\ : out STD_LOGIC;
    \q_reg[32]_0\ : out STD_LOGIC;
    \q_reg[8]_1\ : out STD_LOGIC;
    \q_reg[8]_2\ : out STD_LOGIC;
    \q_reg[8]_3\ : out STD_LOGIC;
    \q_reg[8]_4\ : out STD_LOGIC;
    \q_reg[8]_5\ : out STD_LOGIC;
    \q_reg[8]_6\ : out STD_LOGIC;
    \q_reg[33]_0\ : out STD_LOGIC;
    \q_reg[8]_7\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[8]_8\ : out STD_LOGIC;
    \q_reg[33]_1\ : out STD_LOGIC;
    \q_reg[8]_9\ : out STD_LOGIC;
    \q_reg[8]_10\ : out STD_LOGIC;
    \q_reg[8]_11\ : out STD_LOGIC;
    \q_reg[8]_12\ : out STD_LOGIC;
    \q_reg[8]_13\ : out STD_LOGIC;
    \q_reg[8]_14\ : out STD_LOGIC;
    \q_reg[8]_15\ : out STD_LOGIC;
    \q_reg[8]_16\ : out STD_LOGIC;
    \q_reg[8]_17\ : out STD_LOGIC;
    \q_reg[8]_18\ : out STD_LOGIC;
    \q_reg[8]_19\ : out STD_LOGIC;
    \q_reg[8]_20\ : out STD_LOGIC;
    \q_reg[8]_21\ : out STD_LOGIC;
    \q_reg[8]_22\ : out STD_LOGIC;
    \q_reg[8]_23\ : out STD_LOGIC;
    \q_reg[8]_24\ : out STD_LOGIC;
    \q_reg[8]_25\ : out STD_LOGIC;
    \q_reg[8]_26\ : out STD_LOGIC;
    \q_reg[8]_27\ : out STD_LOGIC;
    \q_reg[34]_0\ : out STD_LOGIC;
    \q_reg[8]_28\ : out STD_LOGIC;
    \q_reg[8]_29\ : out STD_LOGIC;
    \q_reg[8]_30\ : out STD_LOGIC;
    \q_reg[110]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[8]_31\ : out STD_LOGIC;
    \q_reg[34]_1\ : out STD_LOGIC;
    \q_reg[8]_32\ : out STD_LOGIC;
    \q_reg[34]_2\ : out STD_LOGIC;
    \q_reg[8]_33\ : out STD_LOGIC;
    \q_reg[33]_2\ : out STD_LOGIC;
    \q_reg[8]_34\ : out STD_LOGIC;
    \q_reg[33]_3\ : out STD_LOGIC;
    \q_reg[8]_35\ : out STD_LOGIC;
    \q_reg[33]_4\ : out STD_LOGIC;
    \q_reg[8]_36\ : out STD_LOGIC;
    \q_reg[33]_5\ : out STD_LOGIC;
    \q_reg[8]_37\ : out STD_LOGIC;
    \q_reg[33]_6\ : out STD_LOGIC;
    \q_reg[8]_38\ : out STD_LOGIC;
    \q_reg[33]_7\ : out STD_LOGIC;
    \q_reg[8]_39\ : out STD_LOGIC;
    \q_reg[33]_8\ : out STD_LOGIC;
    \q_reg[8]_40\ : out STD_LOGIC;
    \q_reg[33]_9\ : out STD_LOGIC;
    \q_reg[8]_41\ : out STD_LOGIC;
    \q_reg[33]_10\ : out STD_LOGIC;
    \q_reg[8]_42\ : out STD_LOGIC;
    \q_reg[33]_11\ : out STD_LOGIC;
    \q_reg[8]_43\ : out STD_LOGIC;
    \q_reg[33]_12\ : out STD_LOGIC;
    \q_reg[8]_44\ : out STD_LOGIC;
    \q_reg[33]_13\ : out STD_LOGIC;
    \q_reg[8]_45\ : out STD_LOGIC;
    \q_reg[33]_14\ : out STD_LOGIC;
    \q_reg[8]_46\ : out STD_LOGIC;
    \q_reg[33]_15\ : out STD_LOGIC;
    \q_reg[8]_47\ : out STD_LOGIC;
    \q_reg[33]_16\ : out STD_LOGIC;
    \q_reg[8]_48\ : out STD_LOGIC;
    \q_reg[33]_17\ : out STD_LOGIC;
    \q_reg[8]_49\ : out STD_LOGIC;
    \q_reg[33]_18\ : out STD_LOGIC;
    \q_reg[8]_50\ : out STD_LOGIC;
    \q_reg[33]_19\ : out STD_LOGIC;
    \q_reg[8]_51\ : out STD_LOGIC;
    \q_reg[33]_20\ : out STD_LOGIC;
    \q_reg[8]_52\ : out STD_LOGIC;
    \q_reg[33]_21\ : out STD_LOGIC;
    \q_reg[8]_53\ : out STD_LOGIC;
    \q_reg[33]_22\ : out STD_LOGIC;
    \q_reg[8]_54\ : out STD_LOGIC;
    \q_reg[33]_23\ : out STD_LOGIC;
    \q_reg[46]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[63]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[54]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[63]_2\ : out STD_LOGIC;
    \q_reg[63]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[109]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[31]_i_22_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[39]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[43]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[47]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[51]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[55]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[59]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[9]_1\ : out STD_LOGIC;
    \q_reg[9]_2\ : out STD_LOGIC;
    \q_reg[85]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[9]_3\ : out STD_LOGIC;
    \q_reg[9]_4\ : out STD_LOGIC;
    \q_reg[9]_5\ : out STD_LOGIC;
    \q_reg[9]_6\ : out STD_LOGIC;
    \q_reg[9]_7\ : out STD_LOGIC;
    \q_reg[9]_8\ : out STD_LOGIC;
    \q_reg[94]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[9]_9\ : out STD_LOGIC;
    \q_reg[9]_10\ : out STD_LOGIC;
    \q_reg[9]_11\ : out STD_LOGIC;
    \q_reg[9]_12\ : out STD_LOGIC;
    \q_reg[9]_13\ : out STD_LOGIC;
    \q_reg[9]_14\ : out STD_LOGIC;
    \q_reg[9]_15\ : out STD_LOGIC;
    \q_reg[9]_16\ : out STD_LOGIC;
    \q_reg[9]_17\ : out STD_LOGIC;
    \q_reg[9]_18\ : out STD_LOGIC;
    \q_reg[9]_19\ : out STD_LOGIC;
    \q_reg[9]_20\ : out STD_LOGIC;
    \q_reg[109]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[9]_21\ : out STD_LOGIC;
    \q_reg[101]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[9]_22\ : out STD_LOGIC;
    \q_reg[9]_23\ : out STD_LOGIC;
    \q_reg[9]_24\ : out STD_LOGIC;
    \q_reg[9]_25\ : out STD_LOGIC;
    \q_reg[9]_26\ : out STD_LOGIC;
    \q_reg[9]_27\ : out STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 108 downto 0 );
    PCSrcE : in STD_LOGIC;
    \rd21__3\ : in STD_LOGIC;
    rd20 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \rd11__3\ : in STD_LOGIC;
    rd10 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PCready : in STD_LOGIC;
    \q_reg[142]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \q_reg[95]_0\ : in STD_LOGIC;
    \q_reg[95]_1\ : in STD_LOGIC;
    \q[31]_i_3_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    O : in STD_LOGIC_VECTOR ( 0 to 0 );
    PCTargetEmux : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[71]_0\ : in STD_LOGIC;
    \q_reg[70]_0\ : in STD_LOGIC;
    \q_reg[71]_1\ : in STD_LOGIC;
    \q_reg[70]_1\ : in STD_LOGIC;
    \q_reg[99]_0\ : in STD_LOGIC;
    \q_reg[99]_1\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    ResultW : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \q_reg[68]_0\ : in STD_LOGIC_VECTOR ( 36 downto 0 );
    \q_reg[71]_2\ : in STD_LOGIC;
    \q_reg[68]_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    result2_carry_i_40_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \q_reg[57]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q[100]_i_15_0\ : in STD_LOGIC;
    \q[100]_i_15_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q[100]_i_15_2\ : in STD_LOGIC;
    \q[69]_i_3_0\ : in STD_LOGIC;
    \q_reg[69]_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_floprc__parameterized0\ : entity is "floprc";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_floprc__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_floprc__parameterized0\ is
  signal CarryE : STD_LOGIC;
  signal ForwardBE : STD_LOGIC_VECTOR ( 1 to 1 );
  signal ImmExtE : STD_LOGIC_VECTOR ( 31 to 31 );
  signal PCE : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \^q\ : STD_LOGIC_VECTOR ( 69 downto 0 );
  signal RD1E : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal RD2E : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Rs1E : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Rs2E : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal SrcAE : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal SrcBE : STD_LOGIC_VECTOR ( 30 downto 1 );
  signal \^stalld\ : STD_LOGIC;
  signal \alu/data7\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \alu/sum\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \hu/ForwardAE11_out\ : STD_LOGIC;
  signal \hu/ForwardBE10_out\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 174 downto 111 );
  signal \q[100]_i_11_n_0\ : STD_LOGIC;
  signal \q[100]_i_12_n_0\ : STD_LOGIC;
  signal \q[100]_i_13_n_0\ : STD_LOGIC;
  signal \q[100]_i_14_n_0\ : STD_LOGIC;
  signal \q[100]_i_15_n_0\ : STD_LOGIC;
  signal \q[100]_i_16_n_0\ : STD_LOGIC;
  signal \q[100]_i_17_n_0\ : STD_LOGIC;
  signal \q[100]_i_18_n_0\ : STD_LOGIC;
  signal \q[100]_i_19_n_0\ : STD_LOGIC;
  signal \q[100]_i_20_n_0\ : STD_LOGIC;
  signal \q[100]_i_21_n_0\ : STD_LOGIC;
  signal \q[100]_i_22_n_0\ : STD_LOGIC;
  signal \q[100]_i_23_n_0\ : STD_LOGIC;
  signal \q[100]_i_24_n_0\ : STD_LOGIC;
  signal \q[100]_i_25_n_0\ : STD_LOGIC;
  signal \q[100]_i_26_n_0\ : STD_LOGIC;
  signal \q[100]_i_27_n_0\ : STD_LOGIC;
  signal \q[100]_i_28_n_0\ : STD_LOGIC;
  signal \q[100]_i_29_n_0\ : STD_LOGIC;
  signal \q[100]_i_9_n_0\ : STD_LOGIC;
  signal \q[174]_i_2_n_0\ : STD_LOGIC;
  signal \q[31]_i_25_n_0\ : STD_LOGIC;
  signal \q[31]_i_26_n_0\ : STD_LOGIC;
  signal \q[31]_i_27_n_0\ : STD_LOGIC;
  signal \q[31]_i_29_n_0\ : STD_LOGIC;
  signal \q[31]_i_30_n_0\ : STD_LOGIC;
  signal \q[31]_i_31_n_0\ : STD_LOGIC;
  signal \q[31]_i_32_n_0\ : STD_LOGIC;
  signal \q[31]_i_34_n_0\ : STD_LOGIC;
  signal \q[31]_i_35_n_0\ : STD_LOGIC;
  signal \q[31]_i_36_n_0\ : STD_LOGIC;
  signal \q[31]_i_37_n_0\ : STD_LOGIC;
  signal \q[31]_i_39_n_0\ : STD_LOGIC;
  signal \q[31]_i_40_n_0\ : STD_LOGIC;
  signal \q[31]_i_41_n_0\ : STD_LOGIC;
  signal \q[31]_i_42_n_0\ : STD_LOGIC;
  signal \q[31]_i_44_n_0\ : STD_LOGIC;
  signal \q[31]_i_45_n_0\ : STD_LOGIC;
  signal \q[31]_i_46_n_0\ : STD_LOGIC;
  signal \q[31]_i_47_n_0\ : STD_LOGIC;
  signal \q[31]_i_49_n_0\ : STD_LOGIC;
  signal \q[31]_i_50_n_0\ : STD_LOGIC;
  signal \q[31]_i_51_n_0\ : STD_LOGIC;
  signal \q[31]_i_52_n_0\ : STD_LOGIC;
  signal \q[31]_i_54_n_0\ : STD_LOGIC;
  signal \q[31]_i_55_n_0\ : STD_LOGIC;
  signal \q[31]_i_56_n_0\ : STD_LOGIC;
  signal \q[31]_i_57_n_0\ : STD_LOGIC;
  signal \q[31]_i_58_n_0\ : STD_LOGIC;
  signal \q[31]_i_59_n_0\ : STD_LOGIC;
  signal \q[31]_i_5_n_0\ : STD_LOGIC;
  signal \q[31]_i_60_n_0\ : STD_LOGIC;
  signal \q[31]_i_61_n_0\ : STD_LOGIC;
  signal \q[31]_i_7_n_0\ : STD_LOGIC;
  signal \q[68]_i_10_n_0\ : STD_LOGIC;
  signal \q[68]_i_2_n_0\ : STD_LOGIC;
  signal \q[68]_i_4_n_0\ : STD_LOGIC;
  signal \q[68]_i_6_n_0\ : STD_LOGIC;
  signal \q[68]_i_7_n_0\ : STD_LOGIC;
  signal \q[68]_i_8_n_0\ : STD_LOGIC;
  signal \q[69]_i_10_n_0\ : STD_LOGIC;
  signal \q[69]_i_11_n_0\ : STD_LOGIC;
  signal \q[69]_i_12_n_0\ : STD_LOGIC;
  signal \q[69]_i_13_n_0\ : STD_LOGIC;
  signal \q[69]_i_14_n_0\ : STD_LOGIC;
  signal \q[69]_i_15_n_0\ : STD_LOGIC;
  signal \q[69]_i_16_n_0\ : STD_LOGIC;
  signal \q[69]_i_17_n_0\ : STD_LOGIC;
  signal \q[69]_i_18_n_0\ : STD_LOGIC;
  signal \q[69]_i_2_n_0\ : STD_LOGIC;
  signal \q[69]_i_3_n_0\ : STD_LOGIC;
  signal \q[69]_i_6_n_0\ : STD_LOGIC;
  signal \q[69]_i_7_n_0\ : STD_LOGIC;
  signal \q[69]_i_8_n_0\ : STD_LOGIC;
  signal \q[69]_i_9_n_0\ : STD_LOGIC;
  signal \q[70]_i_10_n_0\ : STD_LOGIC;
  signal \q[70]_i_2_n_0\ : STD_LOGIC;
  signal \q[70]_i_3_n_0\ : STD_LOGIC;
  signal \q[70]_i_4_n_0\ : STD_LOGIC;
  signal \q[70]_i_5_n_0\ : STD_LOGIC;
  signal \q[70]_i_6_n_0\ : STD_LOGIC;
  signal \q[70]_i_7_n_0\ : STD_LOGIC;
  signal \q[70]_i_8_n_0\ : STD_LOGIC;
  signal \q[70]_i_9_n_0\ : STD_LOGIC;
  signal \q[71]_i_10_n_0\ : STD_LOGIC;
  signal \q[71]_i_11_n_0\ : STD_LOGIC;
  signal \q[71]_i_12_n_0\ : STD_LOGIC;
  signal \q[71]_i_13_n_0\ : STD_LOGIC;
  signal \q[71]_i_14_n_0\ : STD_LOGIC;
  signal \q[71]_i_2_n_0\ : STD_LOGIC;
  signal \q[71]_i_3_n_0\ : STD_LOGIC;
  signal \q[71]_i_4_n_0\ : STD_LOGIC;
  signal \q[71]_i_5_n_0\ : STD_LOGIC;
  signal \q[71]_i_6_n_0\ : STD_LOGIC;
  signal \q[71]_i_7_n_0\ : STD_LOGIC;
  signal \q[71]_i_8_n_0\ : STD_LOGIC;
  signal \q[71]_i_9_n_0\ : STD_LOGIC;
  signal \q[72]_i_11_n_0\ : STD_LOGIC;
  signal \q[72]_i_12_n_0\ : STD_LOGIC;
  signal \q[72]_i_13_n_0\ : STD_LOGIC;
  signal \q[72]_i_14_n_0\ : STD_LOGIC;
  signal \q[72]_i_6_n_0\ : STD_LOGIC;
  signal \q[72]_i_7_n_0\ : STD_LOGIC;
  signal \q[72]_i_9_n_0\ : STD_LOGIC;
  signal \q[73]_i_10_n_0\ : STD_LOGIC;
  signal \q[73]_i_6_n_0\ : STD_LOGIC;
  signal \q[73]_i_7_n_0\ : STD_LOGIC;
  signal \q[73]_i_9_n_0\ : STD_LOGIC;
  signal \q[74]_i_10_n_0\ : STD_LOGIC;
  signal \q[74]_i_11_n_0\ : STD_LOGIC;
  signal \q[74]_i_6_n_0\ : STD_LOGIC;
  signal \q[74]_i_7_n_0\ : STD_LOGIC;
  signal \q[74]_i_9_n_0\ : STD_LOGIC;
  signal \q[75]_i_10_n_0\ : STD_LOGIC;
  signal \q[75]_i_11_n_0\ : STD_LOGIC;
  signal \q[75]_i_12_n_0\ : STD_LOGIC;
  signal \q[75]_i_6_n_0\ : STD_LOGIC;
  signal \q[75]_i_7_n_0\ : STD_LOGIC;
  signal \q[75]_i_9_n_0\ : STD_LOGIC;
  signal \q[76]_i_10_n_0\ : STD_LOGIC;
  signal \q[76]_i_11_n_0\ : STD_LOGIC;
  signal \q[76]_i_12_n_0\ : STD_LOGIC;
  signal \q[76]_i_13_n_0\ : STD_LOGIC;
  signal \q[76]_i_14_n_0\ : STD_LOGIC;
  signal \q[76]_i_15_n_0\ : STD_LOGIC;
  signal \q[76]_i_6_n_0\ : STD_LOGIC;
  signal \q[76]_i_7_n_0\ : STD_LOGIC;
  signal \q[77]_i_10_n_0\ : STD_LOGIC;
  signal \q[77]_i_11_n_0\ : STD_LOGIC;
  signal \q[77]_i_12_n_0\ : STD_LOGIC;
  signal \q[77]_i_6_n_0\ : STD_LOGIC;
  signal \q[77]_i_7_n_0\ : STD_LOGIC;
  signal \q[77]_i_9_n_0\ : STD_LOGIC;
  signal \q[78]_i_10_n_0\ : STD_LOGIC;
  signal \q[78]_i_11_n_0\ : STD_LOGIC;
  signal \q[78]_i_6_n_0\ : STD_LOGIC;
  signal \q[78]_i_7_n_0\ : STD_LOGIC;
  signal \q[78]_i_9_n_0\ : STD_LOGIC;
  signal \q[79]_i_10_n_0\ : STD_LOGIC;
  signal \q[79]_i_11_n_0\ : STD_LOGIC;
  signal \q[79]_i_12_n_0\ : STD_LOGIC;
  signal \q[79]_i_6_n_0\ : STD_LOGIC;
  signal \q[79]_i_7_n_0\ : STD_LOGIC;
  signal \q[79]_i_9_n_0\ : STD_LOGIC;
  signal \q[80]_i_10_n_0\ : STD_LOGIC;
  signal \q[80]_i_11_n_0\ : STD_LOGIC;
  signal \q[80]_i_12_n_0\ : STD_LOGIC;
  signal \q[80]_i_13_n_0\ : STD_LOGIC;
  signal \q[80]_i_14_n_0\ : STD_LOGIC;
  signal \q[80]_i_15_n_0\ : STD_LOGIC;
  signal \q[80]_i_16_n_0\ : STD_LOGIC;
  signal \q[80]_i_6_n_0\ : STD_LOGIC;
  signal \q[80]_i_7_n_0\ : STD_LOGIC;
  signal \q[81]_i_10_n_0\ : STD_LOGIC;
  signal \q[81]_i_11_n_0\ : STD_LOGIC;
  signal \q[81]_i_6_n_0\ : STD_LOGIC;
  signal \q[81]_i_7_n_0\ : STD_LOGIC;
  signal \q[81]_i_9_n_0\ : STD_LOGIC;
  signal \q[82]_i_10_n_0\ : STD_LOGIC;
  signal \q[82]_i_11_n_0\ : STD_LOGIC;
  signal \q[82]_i_6_n_0\ : STD_LOGIC;
  signal \q[82]_i_7_n_0\ : STD_LOGIC;
  signal \q[82]_i_9_n_0\ : STD_LOGIC;
  signal \q[83]_i_10_n_0\ : STD_LOGIC;
  signal \q[83]_i_11_n_0\ : STD_LOGIC;
  signal \q[83]_i_6_n_0\ : STD_LOGIC;
  signal \q[83]_i_7_n_0\ : STD_LOGIC;
  signal \q[83]_i_9_n_0\ : STD_LOGIC;
  signal \q[84]_i_10_n_0\ : STD_LOGIC;
  signal \q[84]_i_11_n_0\ : STD_LOGIC;
  signal \q[84]_i_12_n_0\ : STD_LOGIC;
  signal \q[84]_i_13_n_0\ : STD_LOGIC;
  signal \q[84]_i_14_n_0\ : STD_LOGIC;
  signal \q[84]_i_15_n_0\ : STD_LOGIC;
  signal \q[84]_i_16_n_0\ : STD_LOGIC;
  signal \q[84]_i_6_n_0\ : STD_LOGIC;
  signal \q[84]_i_7_n_0\ : STD_LOGIC;
  signal \q[85]_i_10_n_0\ : STD_LOGIC;
  signal \q[85]_i_11_n_0\ : STD_LOGIC;
  signal \q[85]_i_12_n_0\ : STD_LOGIC;
  signal \q[85]_i_6_n_0\ : STD_LOGIC;
  signal \q[85]_i_7_n_0\ : STD_LOGIC;
  signal \q[85]_i_9_n_0\ : STD_LOGIC;
  signal \q[86]_i_10_n_0\ : STD_LOGIC;
  signal \q[86]_i_11_n_0\ : STD_LOGIC;
  signal \q[86]_i_12_n_0\ : STD_LOGIC;
  signal \q[86]_i_6_n_0\ : STD_LOGIC;
  signal \q[86]_i_7_n_0\ : STD_LOGIC;
  signal \q[86]_i_9_n_0\ : STD_LOGIC;
  signal \q[87]_i_10_n_0\ : STD_LOGIC;
  signal \q[87]_i_11_n_0\ : STD_LOGIC;
  signal \q[87]_i_12_n_0\ : STD_LOGIC;
  signal \q[87]_i_6_n_0\ : STD_LOGIC;
  signal \q[87]_i_7_n_0\ : STD_LOGIC;
  signal \q[87]_i_9_n_0\ : STD_LOGIC;
  signal \q[88]_i_10_n_0\ : STD_LOGIC;
  signal \q[88]_i_11_n_0\ : STD_LOGIC;
  signal \q[88]_i_12_n_0\ : STD_LOGIC;
  signal \q[88]_i_13_n_0\ : STD_LOGIC;
  signal \q[88]_i_14_n_0\ : STD_LOGIC;
  signal \q[88]_i_15_n_0\ : STD_LOGIC;
  signal \q[88]_i_16_n_0\ : STD_LOGIC;
  signal \q[88]_i_17_n_0\ : STD_LOGIC;
  signal \q[88]_i_18_n_0\ : STD_LOGIC;
  signal \q[88]_i_6_n_0\ : STD_LOGIC;
  signal \q[88]_i_7_n_0\ : STD_LOGIC;
  signal \q[89]_i_10_n_0\ : STD_LOGIC;
  signal \q[89]_i_11_n_0\ : STD_LOGIC;
  signal \q[89]_i_12_n_0\ : STD_LOGIC;
  signal \q[89]_i_6_n_0\ : STD_LOGIC;
  signal \q[89]_i_7_n_0\ : STD_LOGIC;
  signal \q[89]_i_9_n_0\ : STD_LOGIC;
  signal \q[90]_i_10_n_0\ : STD_LOGIC;
  signal \q[90]_i_11_n_0\ : STD_LOGIC;
  signal \q[90]_i_12_n_0\ : STD_LOGIC;
  signal \q[90]_i_6_n_0\ : STD_LOGIC;
  signal \q[90]_i_7_n_0\ : STD_LOGIC;
  signal \q[90]_i_9_n_0\ : STD_LOGIC;
  signal \q[91]_i_10_n_0\ : STD_LOGIC;
  signal \q[91]_i_11_n_0\ : STD_LOGIC;
  signal \q[91]_i_12_n_0\ : STD_LOGIC;
  signal \q[91]_i_6_n_0\ : STD_LOGIC;
  signal \q[91]_i_7_n_0\ : STD_LOGIC;
  signal \q[91]_i_9_n_0\ : STD_LOGIC;
  signal \q[92]_i_10_n_0\ : STD_LOGIC;
  signal \q[92]_i_11_n_0\ : STD_LOGIC;
  signal \q[92]_i_12_n_0\ : STD_LOGIC;
  signal \q[92]_i_13_n_0\ : STD_LOGIC;
  signal \q[92]_i_14_n_0\ : STD_LOGIC;
  signal \q[92]_i_15_n_0\ : STD_LOGIC;
  signal \q[92]_i_16_n_0\ : STD_LOGIC;
  signal \q[92]_i_6_n_0\ : STD_LOGIC;
  signal \q[92]_i_7_n_0\ : STD_LOGIC;
  signal \q[93]_i_10_n_0\ : STD_LOGIC;
  signal \q[93]_i_11_n_0\ : STD_LOGIC;
  signal \q[93]_i_6_n_0\ : STD_LOGIC;
  signal \q[93]_i_7_n_0\ : STD_LOGIC;
  signal \q[93]_i_9_n_0\ : STD_LOGIC;
  signal \q[94]_i_10_n_0\ : STD_LOGIC;
  signal \q[94]_i_11_n_0\ : STD_LOGIC;
  signal \q[94]_i_6_n_0\ : STD_LOGIC;
  signal \q[94]_i_7_n_0\ : STD_LOGIC;
  signal \q[94]_i_9_n_0\ : STD_LOGIC;
  signal \q[95]_i_10_n_0\ : STD_LOGIC;
  signal \q[95]_i_11_n_0\ : STD_LOGIC;
  signal \q[95]_i_6_n_0\ : STD_LOGIC;
  signal \q[95]_i_7_n_0\ : STD_LOGIC;
  signal \q[95]_i_9_n_0\ : STD_LOGIC;
  signal \q[96]_i_10_n_0\ : STD_LOGIC;
  signal \q[96]_i_11_n_0\ : STD_LOGIC;
  signal \q[96]_i_12_n_0\ : STD_LOGIC;
  signal \q[96]_i_13_n_0\ : STD_LOGIC;
  signal \q[96]_i_14_n_0\ : STD_LOGIC;
  signal \q[96]_i_15_n_0\ : STD_LOGIC;
  signal \q[96]_i_16_n_0\ : STD_LOGIC;
  signal \q[96]_i_17_n_0\ : STD_LOGIC;
  signal \q[96]_i_6_n_0\ : STD_LOGIC;
  signal \q[96]_i_7_n_0\ : STD_LOGIC;
  signal \q[97]_i_10_n_0\ : STD_LOGIC;
  signal \q[97]_i_11_n_0\ : STD_LOGIC;
  signal \q[97]_i_12_n_0\ : STD_LOGIC;
  signal \q[97]_i_6_n_0\ : STD_LOGIC;
  signal \q[97]_i_7_n_0\ : STD_LOGIC;
  signal \q[97]_i_9_n_0\ : STD_LOGIC;
  signal \q[98]_i_11_n_0\ : STD_LOGIC;
  signal \q[98]_i_12_n_0\ : STD_LOGIC;
  signal \q[98]_i_13_n_0\ : STD_LOGIC;
  signal \q[98]_i_14_n_0\ : STD_LOGIC;
  signal \q[98]_i_15_n_0\ : STD_LOGIC;
  signal \q[98]_i_16_n_0\ : STD_LOGIC;
  signal \q[98]_i_17_n_0\ : STD_LOGIC;
  signal \q[98]_i_7_n_0\ : STD_LOGIC;
  signal \q[98]_i_8_n_0\ : STD_LOGIC;
  signal \q[98]_i_9_n_0\ : STD_LOGIC;
  signal \q[99]_i_12_n_0\ : STD_LOGIC;
  signal \q[99]_i_2_n_0\ : STD_LOGIC;
  signal \q[99]_i_3_n_0\ : STD_LOGIC;
  signal \q[99]_i_6_n_0\ : STD_LOGIC;
  signal \q[99]_i_7_n_0\ : STD_LOGIC;
  signal \q[99]_i_8_n_0\ : STD_LOGIC;
  signal \q[99]_i_9_n_0\ : STD_LOGIC;
  signal \q_reg[100]_i_8_n_1\ : STD_LOGIC;
  signal \q_reg[100]_i_8_n_2\ : STD_LOGIC;
  signal \q_reg[100]_i_8_n_3\ : STD_LOGIC;
  signal \^q_reg[109]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q_reg[110]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \q_reg[31]_i_22_n_1\ : STD_LOGIC;
  signal \q_reg[31]_i_22_n_2\ : STD_LOGIC;
  signal \q_reg[31]_i_22_n_3\ : STD_LOGIC;
  signal \q_reg[31]_i_23_n_0\ : STD_LOGIC;
  signal \q_reg[31]_i_23_n_1\ : STD_LOGIC;
  signal \q_reg[31]_i_23_n_2\ : STD_LOGIC;
  signal \q_reg[31]_i_23_n_3\ : STD_LOGIC;
  signal \q_reg[31]_i_28_n_0\ : STD_LOGIC;
  signal \q_reg[31]_i_28_n_1\ : STD_LOGIC;
  signal \q_reg[31]_i_28_n_2\ : STD_LOGIC;
  signal \q_reg[31]_i_28_n_3\ : STD_LOGIC;
  signal \q_reg[31]_i_33_n_0\ : STD_LOGIC;
  signal \q_reg[31]_i_33_n_1\ : STD_LOGIC;
  signal \q_reg[31]_i_33_n_2\ : STD_LOGIC;
  signal \q_reg[31]_i_33_n_3\ : STD_LOGIC;
  signal \q_reg[31]_i_38_n_0\ : STD_LOGIC;
  signal \q_reg[31]_i_38_n_1\ : STD_LOGIC;
  signal \q_reg[31]_i_38_n_2\ : STD_LOGIC;
  signal \q_reg[31]_i_38_n_3\ : STD_LOGIC;
  signal \q_reg[31]_i_43_n_0\ : STD_LOGIC;
  signal \q_reg[31]_i_43_n_1\ : STD_LOGIC;
  signal \q_reg[31]_i_43_n_2\ : STD_LOGIC;
  signal \q_reg[31]_i_43_n_3\ : STD_LOGIC;
  signal \q_reg[31]_i_48_n_0\ : STD_LOGIC;
  signal \q_reg[31]_i_48_n_1\ : STD_LOGIC;
  signal \q_reg[31]_i_48_n_2\ : STD_LOGIC;
  signal \q_reg[31]_i_48_n_3\ : STD_LOGIC;
  signal \q_reg[31]_i_53_n_0\ : STD_LOGIC;
  signal \q_reg[31]_i_53_n_1\ : STD_LOGIC;
  signal \q_reg[31]_i_53_n_2\ : STD_LOGIC;
  signal \q_reg[31]_i_53_n_3\ : STD_LOGIC;
  signal \^q_reg[32]_0\ : STD_LOGIC;
  signal \^q_reg[33]_0\ : STD_LOGIC;
  signal \^q_reg[33]_1\ : STD_LOGIC;
  signal \^q_reg[33]_10\ : STD_LOGIC;
  signal \^q_reg[33]_11\ : STD_LOGIC;
  signal \^q_reg[33]_12\ : STD_LOGIC;
  signal \^q_reg[33]_13\ : STD_LOGIC;
  signal \^q_reg[33]_14\ : STD_LOGIC;
  signal \^q_reg[33]_15\ : STD_LOGIC;
  signal \^q_reg[33]_16\ : STD_LOGIC;
  signal \^q_reg[33]_17\ : STD_LOGIC;
  signal \^q_reg[33]_18\ : STD_LOGIC;
  signal \^q_reg[33]_19\ : STD_LOGIC;
  signal \^q_reg[33]_2\ : STD_LOGIC;
  signal \^q_reg[33]_20\ : STD_LOGIC;
  signal \^q_reg[33]_21\ : STD_LOGIC;
  signal \^q_reg[33]_22\ : STD_LOGIC;
  signal \^q_reg[33]_23\ : STD_LOGIC;
  signal \^q_reg[33]_3\ : STD_LOGIC;
  signal \^q_reg[33]_4\ : STD_LOGIC;
  signal \^q_reg[33]_5\ : STD_LOGIC;
  signal \^q_reg[33]_6\ : STD_LOGIC;
  signal \^q_reg[33]_7\ : STD_LOGIC;
  signal \^q_reg[33]_8\ : STD_LOGIC;
  signal \^q_reg[33]_9\ : STD_LOGIC;
  signal \^q_reg[34]_0\ : STD_LOGIC;
  signal \^q_reg[34]_1\ : STD_LOGIC;
  signal \^q_reg[34]_2\ : STD_LOGIC;
  signal \^q_reg[63]_2\ : STD_LOGIC;
  signal \^q_reg[63]_3\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \q_reg[72]_i_8_n_0\ : STD_LOGIC;
  signal \q_reg[72]_i_8_n_1\ : STD_LOGIC;
  signal \q_reg[72]_i_8_n_2\ : STD_LOGIC;
  signal \q_reg[72]_i_8_n_3\ : STD_LOGIC;
  signal \q_reg[76]_i_8_n_0\ : STD_LOGIC;
  signal \q_reg[76]_i_8_n_1\ : STD_LOGIC;
  signal \q_reg[76]_i_8_n_2\ : STD_LOGIC;
  signal \q_reg[76]_i_8_n_3\ : STD_LOGIC;
  signal \q_reg[80]_i_8_n_0\ : STD_LOGIC;
  signal \q_reg[80]_i_8_n_1\ : STD_LOGIC;
  signal \q_reg[80]_i_8_n_2\ : STD_LOGIC;
  signal \q_reg[80]_i_8_n_3\ : STD_LOGIC;
  signal \q_reg[84]_i_8_n_0\ : STD_LOGIC;
  signal \q_reg[84]_i_8_n_1\ : STD_LOGIC;
  signal \q_reg[84]_i_8_n_2\ : STD_LOGIC;
  signal \q_reg[84]_i_8_n_3\ : STD_LOGIC;
  signal \q_reg[88]_i_8_n_0\ : STD_LOGIC;
  signal \q_reg[88]_i_8_n_1\ : STD_LOGIC;
  signal \q_reg[88]_i_8_n_2\ : STD_LOGIC;
  signal \q_reg[88]_i_8_n_3\ : STD_LOGIC;
  signal \q_reg[92]_i_8_n_0\ : STD_LOGIC;
  signal \q_reg[92]_i_8_n_1\ : STD_LOGIC;
  signal \q_reg[92]_i_8_n_2\ : STD_LOGIC;
  signal \q_reg[92]_i_8_n_3\ : STD_LOGIC;
  signal \q_reg[96]_i_8_n_0\ : STD_LOGIC;
  signal \q_reg[96]_i_8_n_1\ : STD_LOGIC;
  signal \q_reg[96]_i_8_n_2\ : STD_LOGIC;
  signal \q_reg[96]_i_8_n_3\ : STD_LOGIC;
  signal \^q_reg[9]_0\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \result2_carry__0_i_25_n_0\ : STD_LOGIC;
  signal \result2_carry__0_i_26_n_0\ : STD_LOGIC;
  signal \result2_carry__0_i_27_n_0\ : STD_LOGIC;
  signal \result2_carry__0_i_28_n_0\ : STD_LOGIC;
  signal \result2_carry__0_i_29_n_0\ : STD_LOGIC;
  signal \result2_carry__0_i_30_n_0\ : STD_LOGIC;
  signal \result2_carry__0_i_31_n_0\ : STD_LOGIC;
  signal \result2_carry__0_i_32_n_0\ : STD_LOGIC;
  signal \result2_carry__1_i_25_n_0\ : STD_LOGIC;
  signal \result2_carry__1_i_26_n_0\ : STD_LOGIC;
  signal \result2_carry__1_i_27_n_0\ : STD_LOGIC;
  signal \result2_carry__1_i_28_n_0\ : STD_LOGIC;
  signal \result2_carry__1_i_29_n_0\ : STD_LOGIC;
  signal \result2_carry__1_i_30_n_0\ : STD_LOGIC;
  signal \result2_carry__1_i_31_n_0\ : STD_LOGIC;
  signal \result2_carry__1_i_32_n_0\ : STD_LOGIC;
  signal \result2_carry__2_i_25_n_0\ : STD_LOGIC;
  signal \result2_carry__2_i_26_n_0\ : STD_LOGIC;
  signal \result2_carry__2_i_27_n_0\ : STD_LOGIC;
  signal \result2_carry__2_i_28_n_0\ : STD_LOGIC;
  signal \result2_carry__2_i_29_n_0\ : STD_LOGIC;
  signal \result2_carry__2_i_30_n_0\ : STD_LOGIC;
  signal \result2_carry__2_i_31_n_0\ : STD_LOGIC;
  signal \result2_carry__2_i_32_n_0\ : STD_LOGIC;
  signal result2_carry_i_25_n_0 : STD_LOGIC;
  signal result2_carry_i_26_n_0 : STD_LOGIC;
  signal result2_carry_i_27_n_0 : STD_LOGIC;
  signal result2_carry_i_28_n_0 : STD_LOGIC;
  signal result2_carry_i_29_n_0 : STD_LOGIC;
  signal result2_carry_i_30_n_0 : STD_LOGIC;
  signal result2_carry_i_31_n_0 : STD_LOGIC;
  signal result2_carry_i_32_n_0 : STD_LOGIC;
  signal result2_carry_i_33_n_0 : STD_LOGIC;
  signal result2_carry_i_34_n_0 : STD_LOGIC;
  signal result2_carry_i_35_n_0 : STD_LOGIC;
  signal result2_carry_i_36_n_0 : STD_LOGIC;
  signal result2_carry_i_37_n_0 : STD_LOGIC;
  signal result2_carry_i_38_n_0 : STD_LOGIC;
  signal result2_carry_i_40_n_0 : STD_LOGIC;
  signal result2_carry_i_41_n_0 : STD_LOGIC;
  signal result2_carry_i_42_n_0 : STD_LOGIC;
  signal result2_carry_i_43_n_0 : STD_LOGIC;
  signal result2_carry_i_44_n_0 : STD_LOGIC;
  signal result2_carry_i_45_n_0 : STD_LOGIC;
  signal result2_carry_i_46_n_0 : STD_LOGIC;
  signal result2_carry_i_47_n_0 : STD_LOGIC;
  signal v2 : STD_LOGIC;
  signal \NLW_q_reg[100]_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_q_reg[31]_i_20_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_q_reg[31]_i_20_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_q_reg[31]_i_22_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_q_reg[31]_i_23_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_q_reg[31]_i_28_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_q_reg[31]_i_33_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_q_reg[31]_i_38_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_q_reg[31]_i_43_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_q_reg[31]_i_48_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_q_reg[31]_i_53_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q[100]_i_11\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \q[100]_i_12\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \q[100]_i_14\ : label is "soft_lutpair223";
  attribute SOFT_HLUTNM of \q[100]_i_26\ : label is "soft_lutpair207";
  attribute SOFT_HLUTNM of \q[100]_i_27\ : label is "soft_lutpair194";
  attribute SOFT_HLUTNM of \q[100]_i_28\ : label is "soft_lutpair202";
  attribute SOFT_HLUTNM of \q[100]_i_29\ : label is "soft_lutpair210";
  attribute SOFT_HLUTNM of \q[111]_i_1\ : label is "soft_lutpair158";
  attribute SOFT_HLUTNM of \q[112]_i_1\ : label is "soft_lutpair158";
  attribute SOFT_HLUTNM of \q[113]_i_1\ : label is "soft_lutpair159";
  attribute SOFT_HLUTNM of \q[114]_i_1\ : label is "soft_lutpair159";
  attribute SOFT_HLUTNM of \q[115]_i_1\ : label is "soft_lutpair160";
  attribute SOFT_HLUTNM of \q[116]_i_1\ : label is "soft_lutpair160";
  attribute SOFT_HLUTNM of \q[117]_i_1\ : label is "soft_lutpair161";
  attribute SOFT_HLUTNM of \q[118]_i_1\ : label is "soft_lutpair161";
  attribute SOFT_HLUTNM of \q[119]_i_1\ : label is "soft_lutpair162";
  attribute SOFT_HLUTNM of \q[120]_i_1\ : label is "soft_lutpair162";
  attribute SOFT_HLUTNM of \q[121]_i_1\ : label is "soft_lutpair163";
  attribute SOFT_HLUTNM of \q[122]_i_1\ : label is "soft_lutpair163";
  attribute SOFT_HLUTNM of \q[123]_i_1\ : label is "soft_lutpair164";
  attribute SOFT_HLUTNM of \q[124]_i_1\ : label is "soft_lutpair164";
  attribute SOFT_HLUTNM of \q[125]_i_1\ : label is "soft_lutpair165";
  attribute SOFT_HLUTNM of \q[126]_i_1\ : label is "soft_lutpair165";
  attribute SOFT_HLUTNM of \q[127]_i_1\ : label is "soft_lutpair166";
  attribute SOFT_HLUTNM of \q[128]_i_1\ : label is "soft_lutpair166";
  attribute SOFT_HLUTNM of \q[129]_i_1\ : label is "soft_lutpair167";
  attribute SOFT_HLUTNM of \q[130]_i_1\ : label is "soft_lutpair167";
  attribute SOFT_HLUTNM of \q[131]_i_1\ : label is "soft_lutpair168";
  attribute SOFT_HLUTNM of \q[132]_i_1\ : label is "soft_lutpair168";
  attribute SOFT_HLUTNM of \q[133]_i_1\ : label is "soft_lutpair169";
  attribute SOFT_HLUTNM of \q[134]_i_1\ : label is "soft_lutpair169";
  attribute SOFT_HLUTNM of \q[135]_i_1\ : label is "soft_lutpair170";
  attribute SOFT_HLUTNM of \q[136]_i_1\ : label is "soft_lutpair170";
  attribute SOFT_HLUTNM of \q[137]_i_1\ : label is "soft_lutpair171";
  attribute SOFT_HLUTNM of \q[138]_i_1\ : label is "soft_lutpair171";
  attribute SOFT_HLUTNM of \q[139]_i_1\ : label is "soft_lutpair172";
  attribute SOFT_HLUTNM of \q[140]_i_1\ : label is "soft_lutpair172";
  attribute SOFT_HLUTNM of \q[141]_i_1\ : label is "soft_lutpair173";
  attribute SOFT_HLUTNM of \q[142]_i_1\ : label is "soft_lutpair173";
  attribute SOFT_HLUTNM of \q[143]_i_1\ : label is "soft_lutpair174";
  attribute SOFT_HLUTNM of \q[144]_i_1\ : label is "soft_lutpair174";
  attribute SOFT_HLUTNM of \q[145]_i_1\ : label is "soft_lutpair175";
  attribute SOFT_HLUTNM of \q[146]_i_1\ : label is "soft_lutpair175";
  attribute SOFT_HLUTNM of \q[147]_i_1\ : label is "soft_lutpair176";
  attribute SOFT_HLUTNM of \q[148]_i_1\ : label is "soft_lutpair176";
  attribute SOFT_HLUTNM of \q[149]_i_1\ : label is "soft_lutpair177";
  attribute SOFT_HLUTNM of \q[150]_i_1\ : label is "soft_lutpair177";
  attribute SOFT_HLUTNM of \q[151]_i_1\ : label is "soft_lutpair178";
  attribute SOFT_HLUTNM of \q[152]_i_1\ : label is "soft_lutpair178";
  attribute SOFT_HLUTNM of \q[153]_i_1\ : label is "soft_lutpair179";
  attribute SOFT_HLUTNM of \q[154]_i_1\ : label is "soft_lutpair179";
  attribute SOFT_HLUTNM of \q[155]_i_1\ : label is "soft_lutpair180";
  attribute SOFT_HLUTNM of \q[156]_i_1\ : label is "soft_lutpair180";
  attribute SOFT_HLUTNM of \q[157]_i_1\ : label is "soft_lutpair181";
  attribute SOFT_HLUTNM of \q[158]_i_1\ : label is "soft_lutpair181";
  attribute SOFT_HLUTNM of \q[159]_i_1\ : label is "soft_lutpair182";
  attribute SOFT_HLUTNM of \q[160]_i_1\ : label is "soft_lutpair182";
  attribute SOFT_HLUTNM of \q[161]_i_1\ : label is "soft_lutpair183";
  attribute SOFT_HLUTNM of \q[162]_i_1\ : label is "soft_lutpair183";
  attribute SOFT_HLUTNM of \q[163]_i_1\ : label is "soft_lutpair184";
  attribute SOFT_HLUTNM of \q[164]_i_1\ : label is "soft_lutpair184";
  attribute SOFT_HLUTNM of \q[165]_i_1\ : label is "soft_lutpair185";
  attribute SOFT_HLUTNM of \q[166]_i_1\ : label is "soft_lutpair185";
  attribute SOFT_HLUTNM of \q[167]_i_1\ : label is "soft_lutpair186";
  attribute SOFT_HLUTNM of \q[168]_i_1\ : label is "soft_lutpair186";
  attribute SOFT_HLUTNM of \q[169]_i_1\ : label is "soft_lutpair187";
  attribute SOFT_HLUTNM of \q[170]_i_1\ : label is "soft_lutpair187";
  attribute SOFT_HLUTNM of \q[171]_i_1\ : label is "soft_lutpair188";
  attribute SOFT_HLUTNM of \q[172]_i_1\ : label is "soft_lutpair188";
  attribute SOFT_HLUTNM of \q[173]_i_1\ : label is "soft_lutpair189";
  attribute SOFT_HLUTNM of \q[174]_i_1\ : label is "soft_lutpair189";
  attribute SOFT_HLUTNM of \q[31]_i_1__0\ : label is "soft_lutpair222";
  attribute SOFT_HLUTNM of \q[69]_i_12\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \q[69]_i_13\ : label is "soft_lutpair198";
  attribute SOFT_HLUTNM of \q[69]_i_14\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \q[69]_i_15\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \q[69]_i_16\ : label is "soft_lutpair201";
  attribute SOFT_HLUTNM of \q[69]_i_17\ : label is "soft_lutpair200";
  attribute SOFT_HLUTNM of \q[69]_i_18\ : label is "soft_lutpair207";
  attribute SOFT_HLUTNM of \q[69]_i_9\ : label is "soft_lutpair196";
  attribute SOFT_HLUTNM of \q[70]_i_6\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \q[70]_i_7\ : label is "soft_lutpair198";
  attribute SOFT_HLUTNM of \q[71]_i_13\ : label is "soft_lutpair199";
  attribute SOFT_HLUTNM of \q[71]_i_14\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \q[71]_i_7\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \q[72]_i_7\ : label is "soft_lutpair157";
  attribute SOFT_HLUTNM of \q[73]_i_6\ : label is "soft_lutpair156";
  attribute SOFT_HLUTNM of \q[73]_i_7\ : label is "soft_lutpair196";
  attribute SOFT_HLUTNM of \q[74]_i_11\ : label is "soft_lutpair199";
  attribute SOFT_HLUTNM of \q[74]_i_6\ : label is "soft_lutpair191";
  attribute SOFT_HLUTNM of \q[74]_i_7\ : label is "soft_lutpair157";
  attribute SOFT_HLUTNM of \q[75]_i_12\ : label is "soft_lutpair202";
  attribute SOFT_HLUTNM of \q[75]_i_6\ : label is "soft_lutpair156";
  attribute SOFT_HLUTNM of \q[75]_i_7\ : label is "soft_lutpair195";
  attribute SOFT_HLUTNM of \q[76]_i_10\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \q[76]_i_11\ : label is "soft_lutpair209";
  attribute SOFT_HLUTNM of \q[77]_i_10\ : label is "soft_lutpair209";
  attribute SOFT_HLUTNM of \q[77]_i_11\ : label is "soft_lutpair192";
  attribute SOFT_HLUTNM of \q[77]_i_9\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \q[78]_i_10\ : label is "soft_lutpair208";
  attribute SOFT_HLUTNM of \q[78]_i_11\ : label is "soft_lutpair194";
  attribute SOFT_HLUTNM of \q[78]_i_9\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \q[79]_i_10\ : label is "soft_lutpair208";
  attribute SOFT_HLUTNM of \q[79]_i_11\ : label is "soft_lutpair192";
  attribute SOFT_HLUTNM of \q[79]_i_9\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \q[80]_i_10\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \q[80]_i_7\ : label is "soft_lutpair195";
  attribute SOFT_HLUTNM of \q[81]_i_7\ : label is "soft_lutpair191";
  attribute SOFT_HLUTNM of \q[81]_i_9\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \q[82]_i_9\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \q[83]_i_7\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \q[83]_i_9\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \q[84]_i_10\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \q[84]_i_11\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \q[84]_i_16\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \q[85]_i_10\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \q[85]_i_11\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \q[85]_i_12\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \q[85]_i_9\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \q[86]_i_10\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \q[86]_i_11\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \q[86]_i_12\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \q[86]_i_9\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \q[87]_i_10\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \q[87]_i_11\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \q[87]_i_12\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \q[87]_i_9\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \q[88]_i_10\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \q[88]_i_11\ : label is "soft_lutpair190";
  attribute SOFT_HLUTNM of \q[88]_i_12\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \q[88]_i_17\ : label is "soft_lutpair190";
  attribute SOFT_HLUTNM of \q[88]_i_18\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \q[89]_i_11\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \q[89]_i_12\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \q[89]_i_7\ : label is "soft_lutpair206";
  attribute SOFT_HLUTNM of \q[89]_i_9\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \q[90]_i_11\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \q[90]_i_12\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \q[90]_i_7\ : label is "soft_lutpair206";
  attribute SOFT_HLUTNM of \q[90]_i_9\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \q[91]_i_11\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \q[91]_i_12\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \q[91]_i_9\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \q[92]_i_10\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \q[92]_i_9\ : label is "soft_lutpair203";
  attribute SOFT_HLUTNM of \q[93]_i_10\ : label is "soft_lutpair201";
  attribute SOFT_HLUTNM of \q[93]_i_8\ : label is "soft_lutpair204";
  attribute SOFT_HLUTNM of \q[93]_i_9\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \q[94]_i_10\ : label is "soft_lutpair210";
  attribute SOFT_HLUTNM of \q[94]_i_8\ : label is "soft_lutpair203";
  attribute SOFT_HLUTNM of \q[94]_i_9\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \q[95]_i_10\ : label is "soft_lutpair200";
  attribute SOFT_HLUTNM of \q[95]_i_1__0\ : label is "soft_lutpair222";
  attribute SOFT_HLUTNM of \q[95]_i_7\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \q[95]_i_8\ : label is "soft_lutpair204";
  attribute SOFT_HLUTNM of \q[95]_i_9\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \q[96]_i_10\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \q[96]_i_11\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \q[96]_i_17\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \q[96]_i_7\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \q[96]_i_9\ : label is "soft_lutpair205";
  attribute SOFT_HLUTNM of \q[97]_i_10\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \q[97]_i_12\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \q[97]_i_7\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \q[97]_i_8\ : label is "soft_lutpair205";
  attribute SOFT_HLUTNM of \q[97]_i_9\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \q[98]_i_11\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \q[98]_i_14\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \q[98]_i_17\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \q[98]_i_9\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \q[99]_i_12\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \q[99]_i_8\ : label is "soft_lutpair223";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \q_reg[100]_i_8\ : label is 35;
  attribute ADDER_THRESHOLD of \q_reg[72]_i_8\ : label is 35;
  attribute ADDER_THRESHOLD of \q_reg[76]_i_8\ : label is 35;
  attribute ADDER_THRESHOLD of \q_reg[80]_i_8\ : label is 35;
  attribute ADDER_THRESHOLD of \q_reg[84]_i_8\ : label is 35;
  attribute ADDER_THRESHOLD of \q_reg[88]_i_8\ : label is 35;
  attribute ADDER_THRESHOLD of \q_reg[92]_i_8\ : label is 35;
  attribute ADDER_THRESHOLD of \q_reg[96]_i_8\ : label is 35;
  attribute SOFT_HLUTNM of \result2_carry__0_i_12\ : label is "soft_lutpair214";
  attribute SOFT_HLUTNM of \result2_carry__0_i_13\ : label is "soft_lutpair213";
  attribute SOFT_HLUTNM of \result2_carry__0_i_16\ : label is "soft_lutpair211";
  attribute SOFT_HLUTNM of \result2_carry__0_i_17\ : label is "soft_lutpair212";
  attribute SOFT_HLUTNM of \result2_carry__0_i_20\ : label is "soft_lutpair211";
  attribute SOFT_HLUTNM of \result2_carry__0_i_21\ : label is "soft_lutpair213";
  attribute SOFT_HLUTNM of \result2_carry__0_i_24\ : label is "soft_lutpair197";
  attribute SOFT_HLUTNM of \result2_carry__0_i_9\ : label is "soft_lutpair212";
  attribute SOFT_HLUTNM of \result2_carry__1_i_12\ : label is "soft_lutpair215";
  attribute SOFT_HLUTNM of \result2_carry__1_i_13\ : label is "soft_lutpair221";
  attribute SOFT_HLUTNM of \result2_carry__1_i_16\ : label is "soft_lutpair217";
  attribute SOFT_HLUTNM of \result2_carry__1_i_17\ : label is "soft_lutpair218";
  attribute SOFT_HLUTNM of \result2_carry__1_i_20\ : label is "soft_lutpair215";
  attribute SOFT_HLUTNM of \result2_carry__1_i_21\ : label is "soft_lutpair220";
  attribute SOFT_HLUTNM of \result2_carry__1_i_24\ : label is "soft_lutpair216";
  attribute SOFT_HLUTNM of \result2_carry__1_i_9\ : label is "soft_lutpair219";
  attribute SOFT_HLUTNM of \result2_carry__2_i_12\ : label is "soft_lutpair221";
  attribute SOFT_HLUTNM of \result2_carry__2_i_15\ : label is "soft_lutpair217";
  attribute SOFT_HLUTNM of \result2_carry__2_i_16\ : label is "soft_lutpair218";
  attribute SOFT_HLUTNM of \result2_carry__2_i_19\ : label is "soft_lutpair214";
  attribute SOFT_HLUTNM of \result2_carry__2_i_20\ : label is "soft_lutpair220";
  attribute SOFT_HLUTNM of \result2_carry__2_i_23\ : label is "soft_lutpair216";
  attribute SOFT_HLUTNM of \result2_carry__2_i_9\ : label is "soft_lutpair219";
  attribute SOFT_HLUTNM of result2_carry_i_12 : label is "soft_lutpair193";
  attribute SOFT_HLUTNM of result2_carry_i_16 : label is "soft_lutpair193";
  attribute SOFT_HLUTNM of result2_carry_i_42 : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of result2_carry_i_47 : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of result2_carry_i_9 : label is "soft_lutpair197";
begin
  Q(69 downto 0) <= \^q\(69 downto 0);
  StallD <= \^stalld\;
  \q_reg[109]_0\(0) <= \^q_reg[109]_0\(0);
  \q_reg[110]_0\(0) <= \^q_reg[110]_0\(0);
  \q_reg[32]_0\ <= \^q_reg[32]_0\;
  \q_reg[33]_0\ <= \^q_reg[33]_0\;
  \q_reg[33]_1\ <= \^q_reg[33]_1\;
  \q_reg[33]_10\ <= \^q_reg[33]_10\;
  \q_reg[33]_11\ <= \^q_reg[33]_11\;
  \q_reg[33]_12\ <= \^q_reg[33]_12\;
  \q_reg[33]_13\ <= \^q_reg[33]_13\;
  \q_reg[33]_14\ <= \^q_reg[33]_14\;
  \q_reg[33]_15\ <= \^q_reg[33]_15\;
  \q_reg[33]_16\ <= \^q_reg[33]_16\;
  \q_reg[33]_17\ <= \^q_reg[33]_17\;
  \q_reg[33]_18\ <= \^q_reg[33]_18\;
  \q_reg[33]_19\ <= \^q_reg[33]_19\;
  \q_reg[33]_2\ <= \^q_reg[33]_2\;
  \q_reg[33]_20\ <= \^q_reg[33]_20\;
  \q_reg[33]_21\ <= \^q_reg[33]_21\;
  \q_reg[33]_22\ <= \^q_reg[33]_22\;
  \q_reg[33]_23\ <= \^q_reg[33]_23\;
  \q_reg[33]_3\ <= \^q_reg[33]_3\;
  \q_reg[33]_4\ <= \^q_reg[33]_4\;
  \q_reg[33]_5\ <= \^q_reg[33]_5\;
  \q_reg[33]_6\ <= \^q_reg[33]_6\;
  \q_reg[33]_7\ <= \^q_reg[33]_7\;
  \q_reg[33]_8\ <= \^q_reg[33]_8\;
  \q_reg[33]_9\ <= \^q_reg[33]_9\;
  \q_reg[34]_0\ <= \^q_reg[34]_0\;
  \q_reg[34]_1\ <= \^q_reg[34]_1\;
  \q_reg[34]_2\ <= \^q_reg[34]_2\;
  \q_reg[63]_2\ <= \^q_reg[63]_2\;
  \q_reg[63]_3\(0) <= \^q_reg[63]_3\(0);
  \q_reg[9]_0\(35 downto 0) <= \^q_reg[9]_0\(35 downto 0);
\q[100]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => SrcBE(4),
      I1 => SrcBE(3),
      I2 => \^q_reg[110]_0\(0),
      O => \q[100]_i_11_n_0\
    );
\q[100]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SrcBE(1),
      I1 => SrcBE(2),
      O => \q[100]_i_12_n_0\
    );
\q[100]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => SrcBE(2),
      I1 => \q[100]_i_23_n_0\,
      I2 => \q[100]_i_24_n_0\,
      I3 => SrcBE(1),
      I4 => \q[100]_i_25_n_0\,
      O => \q[100]_i_13_n_0\
    );
\q[100]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q_reg[32]_0\,
      I1 => \q_reg[142]_0\(4),
      O => \q[100]_i_14_n_0\
    );
\q[100]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(36),
      I1 => RD2E(31),
      I2 => \hu/ForwardBE10_out\,
      I3 => result2_carry_i_43_n_0,
      I4 => \q[68]_i_7_n_0\,
      O => \q[100]_i_15_n_0\
    );
\q[100]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96999666"
    )
        port map (
      I0 => \^q_reg[110]_0\(0),
      I1 => \q_reg[142]_0\(4),
      I2 => ImmExtE(31),
      I3 => \q_reg[142]_0\(1),
      I4 => \^q_reg[9]_0\(31),
      O => \q[100]_i_16_n_0\
    );
\q[100]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(30),
      I1 => SrcBE(30),
      I2 => \q_reg[142]_0\(4),
      O => \q[100]_i_17_n_0\
    );
\q[100]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(29),
      I1 => SrcBE(29),
      I2 => \q_reg[142]_0\(4),
      O => \q[100]_i_18_n_0\
    );
\q[100]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(28),
      I1 => SrcBE(28),
      I2 => \q_reg[142]_0\(4),
      O => \q[100]_i_19_n_0\
    );
\q[100]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8BBB8BBB8"
    )
        port map (
      I0 => \q[98]_i_15_n_0\,
      I1 => SrcBE(2),
      I2 => \q[98]_i_17_n_0\,
      I3 => \q[100]_i_26_n_0\,
      I4 => SrcBE(3),
      I5 => \q[100]_i_27_n_0\,
      O => \q[100]_i_20_n_0\
    );
\q[100]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => SrcAE(27),
      I1 => SrcAE(11),
      I2 => SrcBE(3),
      I3 => SrcAE(3),
      I4 => SrcBE(4),
      I5 => SrcAE(19),
      O => \q[100]_i_21_n_0\
    );
\q[100]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8CCFFFFB800"
    )
        port map (
      I0 => SrcAE(7),
      I1 => SrcBE(4),
      I2 => SrcAE(23),
      I3 => SrcBE(3),
      I4 => \q[100]_i_11_n_0\,
      I5 => SrcAE(15),
      O => \q[100]_i_22_n_0\
    );
\q[100]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8CCFFFFB800"
    )
        port map (
      I0 => SrcAE(6),
      I1 => SrcBE(4),
      I2 => SrcAE(22),
      I3 => SrcBE(3),
      I4 => \q[99]_i_12_n_0\,
      I5 => SrcAE(14),
      O => \q[100]_i_23_n_0\
    );
\q[100]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => SrcAE(26),
      I1 => SrcAE(10),
      I2 => SrcBE(3),
      I3 => SrcAE(2),
      I4 => SrcBE(4),
      I5 => SrcAE(18),
      O => \q[100]_i_24_n_0\
    );
\q[100]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8BBB8BBB8"
    )
        port map (
      I0 => \q[98]_i_12_n_0\,
      I1 => SrcBE(2),
      I2 => \q[97]_i_10_n_0\,
      I3 => \q[100]_i_28_n_0\,
      I4 => SrcBE(3),
      I5 => \q[100]_i_29_n_0\,
      O => \q[100]_i_25_n_0\
    );
\q[100]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => SrcBE(3),
      I1 => SrcBE(4),
      I2 => SrcAE(13),
      O => \q[100]_i_26_n_0\
    );
\q[100]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SrcAE(5),
      I1 => SrcBE(4),
      I2 => SrcAE(21),
      O => \q[100]_i_27_n_0\
    );
\q[100]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => SrcBE(3),
      I1 => SrcBE(4),
      I2 => SrcAE(12),
      O => \q[100]_i_28_n_0\
    );
\q[100]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SrcAE(4),
      I1 => SrcBE(4),
      I2 => SrcAE(20),
      O => \q[100]_i_29_n_0\
    );
\q[100]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAAAEAAAEAAA"
    )
        port map (
      I0 => \q[100]_i_9_n_0\,
      I1 => \q_reg[70]_1\,
      I2 => \q[100]_i_11_n_0\,
      I3 => \q[100]_i_12_n_0\,
      I4 => \q[100]_i_13_n_0\,
      I5 => \q[100]_i_14_n_0\,
      O => \q_reg[8]_7\
    );
\q[100]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => ImmExtE(31),
      I1 => \q_reg[142]_0\(1),
      I2 => \q[100]_i_15_n_0\,
      I3 => \q_reg[68]_1\(15),
      I4 => \q[68]_i_4_n_0\,
      O => \^q_reg[63]_3\(0)
    );
\q[100]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A808A808A8A8080"
    )
        port map (
      I0 => \q[99]_i_8_n_0\,
      I1 => \q[100]_i_20_n_0\,
      I2 => SrcBE(1),
      I3 => \q[100]_i_21_n_0\,
      I4 => \q[100]_i_22_n_0\,
      I5 => SrcBE(2),
      O => \q[100]_i_9_n_0\
    );
\q[111]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(0),
      O => p_0_in(111)
    );
\q[112]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(1),
      O => p_0_in(112)
    );
\q[113]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(2),
      O => p_0_in(113)
    );
\q[114]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(3),
      O => p_0_in(114)
    );
\q[115]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(4),
      O => p_0_in(115)
    );
\q[116]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(5),
      O => p_0_in(116)
    );
\q[117]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(6),
      O => p_0_in(117)
    );
\q[118]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(7),
      O => p_0_in(118)
    );
\q[119]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(8),
      O => p_0_in(119)
    );
\q[120]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(9),
      O => p_0_in(120)
    );
\q[121]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(10),
      O => p_0_in(121)
    );
\q[122]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(11),
      O => p_0_in(122)
    );
\q[123]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(12),
      O => p_0_in(123)
    );
\q[124]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(13),
      O => p_0_in(124)
    );
\q[125]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(14),
      O => p_0_in(125)
    );
\q[126]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(15),
      O => p_0_in(126)
    );
\q[127]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(16),
      O => p_0_in(127)
    );
\q[128]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(17),
      O => p_0_in(128)
    );
\q[129]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(18),
      O => p_0_in(129)
    );
\q[130]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(19),
      O => p_0_in(130)
    );
\q[131]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(20),
      O => p_0_in(131)
    );
\q[132]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(21),
      O => p_0_in(132)
    );
\q[133]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(22),
      O => p_0_in(133)
    );
\q[134]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(23),
      O => p_0_in(134)
    );
\q[135]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(24),
      O => p_0_in(135)
    );
\q[136]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(25),
      O => p_0_in(136)
    );
\q[137]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(26),
      O => p_0_in(137)
    );
\q[138]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(27),
      O => p_0_in(138)
    );
\q[139]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(28),
      O => p_0_in(139)
    );
\q[140]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(29),
      O => p_0_in(140)
    );
\q[141]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(30),
      O => p_0_in(141)
    );
\q[142]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd21__3\,
      I3 => rd20(31),
      O => p_0_in(142)
    );
\q[143]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(0),
      O => p_0_in(143)
    );
\q[144]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(1),
      O => p_0_in(144)
    );
\q[145]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(2),
      O => p_0_in(145)
    );
\q[146]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(3),
      O => p_0_in(146)
    );
\q[147]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(4),
      O => p_0_in(147)
    );
\q[148]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(5),
      O => p_0_in(148)
    );
\q[149]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(6),
      O => p_0_in(149)
    );
\q[150]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(7),
      O => p_0_in(150)
    );
\q[151]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(8),
      O => p_0_in(151)
    );
\q[152]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(9),
      O => p_0_in(152)
    );
\q[153]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(10),
      O => p_0_in(153)
    );
\q[154]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(11),
      O => p_0_in(154)
    );
\q[155]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(12),
      O => p_0_in(155)
    );
\q[156]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(13),
      O => p_0_in(156)
    );
\q[157]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(14),
      O => p_0_in(157)
    );
\q[158]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(15),
      O => p_0_in(158)
    );
\q[159]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(16),
      O => p_0_in(159)
    );
\q[160]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(17),
      O => p_0_in(160)
    );
\q[161]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(18),
      O => p_0_in(161)
    );
\q[162]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(19),
      O => p_0_in(162)
    );
\q[163]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(20),
      O => p_0_in(163)
    );
\q[164]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(21),
      O => p_0_in(164)
    );
\q[165]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(22),
      O => p_0_in(165)
    );
\q[166]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(23),
      O => p_0_in(166)
    );
\q[167]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(24),
      O => p_0_in(167)
    );
\q[168]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(25),
      O => p_0_in(168)
    );
\q[169]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(26),
      O => p_0_in(169)
    );
\q[170]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(27),
      O => p_0_in(170)
    );
\q[171]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(28),
      O => p_0_in(171)
    );
\q[172]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(29),
      O => p_0_in(172)
    );
\q[173]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(30),
      O => p_0_in(173)
    );
\q[174]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \q[174]_i_2_n_0\,
      I1 => PCSrcE,
      I2 => \rd11__3\,
      I3 => rd10(31),
      O => p_0_in(174)
    );
\q[174]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA808080"
    )
        port map (
      I0 => \q_reg[142]_0\(8),
      I1 => \q[31]_i_5_n_0\,
      I2 => \q_reg[95]_0\,
      I3 => \q[31]_i_7_n_0\,
      I4 => \q_reg[95]_1\,
      O => \q[174]_i_2_n_0\
    );
\q[30]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAAAA"
    )
        port map (
      I0 => O(0),
      I1 => PCTargetEmux(0),
      I2 => \^q_reg[9]_0\(35),
      I3 => \q_reg[142]_0\(0),
      I4 => PCSrcE,
      O => \q_reg[1]\(0)
    );
\q[31]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => PCready,
      I1 => \^stalld\,
      O => \FSM_sequential_state_reg[0]\(0)
    );
\q[31]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96999666"
    )
        port map (
      I0 => \^q_reg[110]_0\(0),
      I1 => \q_reg[142]_0\(4),
      I2 => ImmExtE(31),
      I3 => \q_reg[142]_0\(1),
      I4 => \^q_reg[9]_0\(31),
      O => v2
    );
\q[31]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(30),
      I1 => SrcBE(30),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_25_n_0\
    );
\q[31]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(29),
      I1 => SrcBE(29),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_26_n_0\
    );
\q[31]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(28),
      I1 => SrcBE(28),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_27_n_0\
    );
\q[31]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(27),
      I1 => SrcBE(27),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_29_n_0\
    );
\q[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA808080"
    )
        port map (
      I0 => \q_reg[142]_0\(8),
      I1 => \q[31]_i_5_n_0\,
      I2 => \q_reg[95]_0\,
      I3 => \q[31]_i_7_n_0\,
      I4 => \q_reg[95]_1\,
      O => \^stalld\
    );
\q[31]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(26),
      I1 => SrcBE(26),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_30_n_0\
    );
\q[31]_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(25),
      I1 => SrcBE(25),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_31_n_0\
    );
\q[31]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(24),
      I1 => SrcBE(24),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_32_n_0\
    );
\q[31]_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(23),
      I1 => SrcBE(23),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_34_n_0\
    );
\q[31]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(22),
      I1 => SrcBE(22),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_35_n_0\
    );
\q[31]_i_36\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(21),
      I1 => SrcBE(21),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_36_n_0\
    );
\q[31]_i_37\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(20),
      I1 => SrcBE(20),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_37_n_0\
    );
\q[31]_i_39\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(19),
      I1 => SrcBE(19),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_39_n_0\
    );
\q[31]_i_40\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(18),
      I1 => SrcBE(18),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_40_n_0\
    );
\q[31]_i_41\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(17),
      I1 => SrcBE(17),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_41_n_0\
    );
\q[31]_i_42\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(16),
      I1 => SrcBE(16),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_42_n_0\
    );
\q[31]_i_44\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(15),
      I1 => SrcBE(15),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_44_n_0\
    );
\q[31]_i_45\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(14),
      I1 => SrcBE(14),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_45_n_0\
    );
\q[31]_i_46\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(13),
      I1 => SrcBE(13),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_46_n_0\
    );
\q[31]_i_47\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(12),
      I1 => SrcBE(12),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_47_n_0\
    );
\q[31]_i_49\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(11),
      I1 => SrcBE(11),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_49_n_0\
    );
\q[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(65),
      I1 => \q[31]_i_3_0\(2),
      I2 => \^q\(64),
      I3 => \q[31]_i_3_0\(1),
      I4 => \q[31]_i_3_0\(0),
      I5 => \^q\(63),
      O => \q[31]_i_5_n_0\
    );
\q[31]_i_50\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(10),
      I1 => SrcBE(10),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_50_n_0\
    );
\q[31]_i_51\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(9),
      I1 => SrcBE(9),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_51_n_0\
    );
\q[31]_i_52\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(8),
      I1 => SrcBE(8),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_52_n_0\
    );
\q[31]_i_54\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(7),
      I1 => SrcBE(7),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_54_n_0\
    );
\q[31]_i_55\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(6),
      I1 => SrcBE(6),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_55_n_0\
    );
\q[31]_i_56\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(5),
      I1 => SrcBE(5),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_56_n_0\
    );
\q[31]_i_57\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(4),
      I1 => SrcBE(4),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_57_n_0\
    );
\q[31]_i_58\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(3),
      I1 => SrcBE(3),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_58_n_0\
    );
\q[31]_i_59\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(2),
      I1 => SrcBE(2),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_59_n_0\
    );
\q[31]_i_60\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(1),
      I1 => SrcBE(1),
      I2 => \q_reg[142]_0\(4),
      O => \q[31]_i_60_n_0\
    );
\q[31]_i_61\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => SrcAE(0),
      I1 => \q_reg[142]_0\(4),
      O => \q[31]_i_61_n_0\
    );
\q[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(65),
      I1 => \q[31]_i_3_0\(5),
      I2 => \^q\(64),
      I3 => \q[31]_i_3_0\(4),
      I4 => \^q\(63),
      I5 => \q[31]_i_3_0\(3),
      O => \q[31]_i_7_n_0\
    );
\q[37]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(0),
      I2 => \q_reg[68]_0\(5),
      I3 => ForwardBE(1),
      I4 => ResultW(0),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(0)
    );
\q[38]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(1),
      I2 => \q_reg[68]_0\(6),
      I3 => ForwardBE(1),
      I4 => ResultW(1),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(1)
    );
\q[39]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(2),
      I2 => \q_reg[68]_0\(7),
      I3 => ForwardBE(1),
      I4 => ResultW(2),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(2)
    );
\q[40]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(3),
      I2 => \q_reg[68]_0\(8),
      I3 => ForwardBE(1),
      I4 => ResultW(3),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(3)
    );
\q[41]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(4),
      I2 => \q_reg[68]_0\(9),
      I3 => ForwardBE(1),
      I4 => ResultW(4),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(4)
    );
\q[42]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(5),
      I2 => \q_reg[68]_0\(10),
      I3 => ForwardBE(1),
      I4 => ResultW(5),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(5)
    );
\q[43]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(6),
      I2 => \q_reg[68]_0\(11),
      I3 => ForwardBE(1),
      I4 => ResultW(6),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(6)
    );
\q[44]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(7),
      I2 => \q_reg[68]_0\(12),
      I3 => ForwardBE(1),
      I4 => ResultW(7),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(7)
    );
\q[45]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(8),
      I2 => \q_reg[68]_0\(13),
      I3 => ForwardBE(1),
      I4 => ResultW(8),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(8)
    );
\q[46]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(9),
      I2 => \q_reg[68]_0\(14),
      I3 => ForwardBE(1),
      I4 => ResultW(9),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(9)
    );
\q[47]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(10),
      I2 => \q_reg[68]_0\(15),
      I3 => ForwardBE(1),
      I4 => ResultW(10),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(10)
    );
\q[48]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(11),
      I2 => \q_reg[68]_0\(16),
      I3 => ForwardBE(1),
      I4 => ResultW(11),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(11)
    );
\q[49]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(12),
      I2 => \q_reg[68]_0\(17),
      I3 => ForwardBE(1),
      I4 => ResultW(12),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(12)
    );
\q[50]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(13),
      I2 => \q_reg[68]_0\(18),
      I3 => ForwardBE(1),
      I4 => ResultW(13),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(13)
    );
\q[51]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(14),
      I2 => \q_reg[68]_0\(19),
      I3 => ForwardBE(1),
      I4 => ResultW(14),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(14)
    );
\q[52]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(15),
      I2 => \q_reg[68]_0\(20),
      I3 => ForwardBE(1),
      I4 => ResultW(15),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(15)
    );
\q[53]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(16),
      I2 => \q_reg[68]_0\(21),
      I3 => ForwardBE(1),
      I4 => \q_reg[68]_1\(0),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(16)
    );
\q[54]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(17),
      I2 => \q_reg[68]_0\(22),
      I3 => ForwardBE(1),
      I4 => \q_reg[68]_1\(1),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(17)
    );
\q[55]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(18),
      I2 => \q_reg[68]_0\(23),
      I3 => ForwardBE(1),
      I4 => \q_reg[68]_1\(2),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(18)
    );
\q[56]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(19),
      I2 => \q_reg[68]_0\(24),
      I3 => ForwardBE(1),
      I4 => \q_reg[68]_1\(3),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(19)
    );
\q[57]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(20),
      I2 => \q_reg[68]_0\(25),
      I3 => ForwardBE(1),
      I4 => \q_reg[68]_1\(4),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(20)
    );
\q[58]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(21),
      I2 => \q_reg[68]_0\(26),
      I3 => ForwardBE(1),
      I4 => \q_reg[68]_1\(5),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(21)
    );
\q[59]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(22),
      I2 => \q_reg[68]_0\(27),
      I3 => ForwardBE(1),
      I4 => \q_reg[68]_1\(6),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(22)
    );
\q[60]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(23),
      I2 => \q_reg[68]_0\(28),
      I3 => ForwardBE(1),
      I4 => \q_reg[68]_1\(7),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(23)
    );
\q[61]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(24),
      I2 => \q_reg[68]_0\(29),
      I3 => ForwardBE(1),
      I4 => \q_reg[68]_1\(8),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(24)
    );
\q[62]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(25),
      I2 => \q_reg[68]_0\(30),
      I3 => ForwardBE(1),
      I4 => \q_reg[68]_1\(9),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(25)
    );
\q[63]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(26),
      I2 => \q_reg[68]_0\(31),
      I3 => ForwardBE(1),
      I4 => \q_reg[68]_1\(10),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(26)
    );
\q[64]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(27),
      I2 => \q_reg[68]_0\(32),
      I3 => ForwardBE(1),
      I4 => \q_reg[68]_1\(11),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(27)
    );
\q[65]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(28),
      I2 => \q_reg[68]_0\(33),
      I3 => ForwardBE(1),
      I4 => \q_reg[68]_1\(12),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(28)
    );
\q[66]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(29),
      I2 => \q_reg[68]_0\(34),
      I3 => ForwardBE(1),
      I4 => \q_reg[68]_1\(13),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(29)
    );
\q[67]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(30),
      I2 => \q_reg[68]_0\(35),
      I3 => ForwardBE(1),
      I4 => \q_reg[68]_1\(14),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(30)
    );
\q[68]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Rs2E(4),
      I1 => result2_carry_i_40_0(4),
      I2 => Rs2E(0),
      I3 => result2_carry_i_40_0(0),
      O => \q[68]_i_10_n_0\
    );
\q[68]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \q[68]_i_2_n_0\,
      I1 => RD2E(31),
      I2 => ForwardBE(1),
      I3 => \q_reg[68]_0\(36),
      I4 => \q_reg[68]_1\(15),
      I5 => \q[68]_i_4_n_0\,
      O => \^q_reg[9]_0\(31)
    );
\q[68]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"14555555FFFFFFFF"
    )
        port map (
      I0 => \hu/ForwardBE10_out\,
      I1 => Rs2E(1),
      I2 => result2_carry_i_40_0(1),
      I3 => \q_reg[57]_0\(0),
      I4 => \q[68]_i_6_n_0\,
      I5 => \q[68]_i_7_n_0\,
      O => \q[68]_i_2_n_0\
    );
\q[68]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \^q\(67),
      I1 => \^q\(66),
      I2 => Rs2E(1),
      I3 => Rs2E(0),
      I4 => Rs2E(4),
      I5 => \hu/ForwardBE10_out\,
      O => ForwardBE(1)
    );
\q[68]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900000000000"
    )
        port map (
      I0 => Rs2E(1),
      I1 => result2_carry_i_40_0(1),
      I2 => \q_reg[57]_0\(0),
      I3 => \q[68]_i_6_n_0\,
      I4 => \hu/ForwardBE10_out\,
      I5 => \q[68]_i_7_n_0\,
      O => \q[68]_i_4_n_0\
    );
\q[68]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000080"
    )
        port map (
      I0 => \q[68]_i_8_n_0\,
      I1 => \q[100]_i_15_0\,
      I2 => \q[100]_i_15_1\(0),
      I3 => \q_reg[68]_0\(1),
      I4 => Rs2E(1),
      O => \hu/ForwardBE10_out\
    );
\q[68]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => result2_carry_i_40_0(3),
      I1 => \^q\(67),
      I2 => \^q\(66),
      I3 => result2_carry_i_40_0(2),
      I4 => \q[68]_i_10_n_0\,
      O => \q[68]_i_6_n_0\
    );
\q[68]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Rs2E(4),
      I1 => Rs2E(0),
      I2 => Rs2E(1),
      I3 => \^q\(66),
      I4 => \^q\(67),
      O => \q[68]_i_7_n_0\
    );
\q[68]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Rs2E(4),
      I1 => \q_reg[68]_0\(4),
      I2 => Rs2E(0),
      I3 => \q_reg[68]_0\(0),
      O => \q[68]_i_8_n_0\
    );
\q[69]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBB8B8B8"
    )
        port map (
      I0 => \q[75]_i_11_n_0\,
      I1 => SrcBE(2),
      I2 => \q[78]_i_10_n_0\,
      I3 => \q[69]_i_17_n_0\,
      I4 => SrcBE(3),
      I5 => \q[69]_i_18_n_0\,
      O => \q[69]_i_10_n_0\
    );
\q[69]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0CCCCFF00AAAA"
    )
        port map (
      I0 => SrcAE(0),
      I1 => SrcAE(8),
      I2 => SrcAE(24),
      I3 => SrcAE(16),
      I4 => SrcBE(4),
      I5 => SrcBE(3),
      O => \q[69]_i_11_n_0\
    );
\q[69]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => SrcBE(2),
      I1 => SrcBE(1),
      I2 => SrcAE(0),
      I3 => SrcBE(3),
      I4 => SrcBE(4),
      O => \q[69]_i_12_n_0\
    );
\q[69]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => SrcAE(0),
      I1 => \^q_reg[32]_0\,
      I2 => \q_reg[142]_0\(4),
      O => \q[69]_i_13_n_0\
    );
\q[69]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \^q_reg[110]_0\(0),
      I1 => \q_reg[142]_0\(4),
      I2 => \^q_reg[63]_3\(0),
      I3 => \^q_reg[109]_0\(0),
      I4 => \q_reg[142]_0\(5),
      O => \q[69]_i_14_n_0\
    );
\q[69]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC008C00"
    )
        port map (
      I0 => \^q_reg[110]_0\(0),
      I1 => \q_reg[142]_0\(4),
      I2 => \^q_reg[63]_3\(0),
      I3 => \^q_reg[109]_0\(0),
      I4 => \q_reg[142]_0\(5),
      O => \q[69]_i_15_n_0\
    );
\q[69]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SrcAE(24),
      I1 => SrcBE(4),
      I2 => SrcAE(8),
      O => \q[69]_i_16_n_0\
    );
\q[69]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SrcAE(26),
      I1 => SrcBE(4),
      I2 => SrcAE(10),
      O => \q[69]_i_17_n_0\
    );
\q[69]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => SrcBE(3),
      I1 => SrcBE(4),
      I2 => SrcAE(18),
      O => \q[69]_i_18_n_0\
    );
\q[69]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEE00EEF0EEF0EE"
    )
        port map (
      I0 => \q[69]_i_2_n_0\,
      I1 => \q[69]_i_3_n_0\,
      I2 => \alu/data7\(0),
      I3 => \q_reg[142]_0\(7),
      I4 => CO(0),
      I5 => \q_reg[142]_0\(4),
      O => \^q_reg[9]_0\(32)
    );
\q[69]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA88800080"
    )
        port map (
      I0 => \q_reg[142]_0\(6),
      I1 => \q_reg[69]_0\,
      I2 => \q[69]_i_6_n_0\,
      I3 => \^q_reg[32]_0\,
      I4 => \q[70]_i_4_n_0\,
      I5 => \q[69]_i_7_n_0\,
      O => \q[69]_i_2_n_0\
    );
\q[69]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3232320232020202"
    )
        port map (
      I0 => \alu/sum\(0),
      I1 => \q_reg[142]_0\(6),
      I2 => \q_reg[142]_0\(5),
      I3 => \^q_reg[32]_0\,
      I4 => SrcAE(0),
      I5 => \q_reg[142]_0\(4),
      O => \q[69]_i_3_n_0\
    );
\q[69]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8BBB8BBB8"
    )
        port map (
      I0 => \q[70]_i_4_n_0\,
      I1 => \^q_reg[32]_0\,
      I2 => \q[69]_i_8_n_0\,
      I3 => \q[69]_i_9_n_0\,
      I4 => SrcBE(1),
      I5 => \q[69]_i_10_n_0\,
      O => \alu/data7\(0)
    );
\q[69]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \q[69]_i_11_n_0\,
      I1 => \q[73]_i_10_n_0\,
      I2 => SrcBE(1),
      I3 => \q[75]_i_11_n_0\,
      I4 => SrcBE(2),
      I5 => \q[71]_i_12_n_0\,
      O => \q[69]_i_6_n_0\
    );
\q[69]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F8F8F8F8F80"
    )
        port map (
      I0 => \q[69]_i_12_n_0\,
      I1 => \q[99]_i_8_n_0\,
      I2 => \q_reg[142]_0\(5),
      I3 => \q[69]_i_13_n_0\,
      I4 => \q[69]_i_14_n_0\,
      I5 => \q[69]_i_15_n_0\,
      O => \q[69]_i_7_n_0\
    );
\q[69]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0E0C02000"
    )
        port map (
      I0 => SrcBE(4),
      I1 => SrcBE(3),
      I2 => \q[100]_i_12_n_0\,
      I3 => SrcAE(16),
      I4 => \q[69]_i_16_n_0\,
      I5 => \q[76]_i_10_n_0\,
      O => \q[69]_i_8_n_0\
    );
\q[69]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => SrcBE(1),
      I1 => SrcBE(2),
      I2 => \q[73]_i_10_n_0\,
      O => \q[69]_i_9_n_0\
    );
\q[70]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0CCCCFF00AAAA"
    )
        port map (
      I0 => SrcAE(3),
      I1 => SrcAE(11),
      I2 => SrcAE(27),
      I3 => SrcAE(19),
      I4 => SrcBE(4),
      I5 => SrcBE(3),
      O => \q[70]_i_10_n_0\
    );
\q[70]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFA8A8A8"
    )
        port map (
      I0 => \q_reg[71]_0\,
      I1 => \q[70]_i_2_n_0\,
      I2 => \q[70]_i_3_n_0\,
      I3 => \q_reg[70]_0\,
      I4 => \q[70]_i_4_n_0\,
      I5 => \q[70]_i_5_n_0\,
      O => \^q_reg[9]_0\(33)
    );
\q[70]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \q_reg[71]_1\,
      I1 => \q[70]_i_6_n_0\,
      I2 => \q[71]_i_6_n_0\,
      I3 => \q[70]_i_7_n_0\,
      I4 => \q[70]_i_4_n_0\,
      I5 => \q_reg[70]_1\,
      O => \q[70]_i_2_n_0\
    );
\q[70]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcBE(1),
      I1 => SrcAE(1),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(1),
      O => \q[70]_i_3_n_0\
    );
\q[70]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \q[70]_i_8_n_0\,
      I1 => \q[71]_i_9_n_0\,
      I2 => SrcBE(1),
      I3 => \q[70]_i_9_n_0\,
      I4 => SrcBE(2),
      I5 => \q[70]_i_10_n_0\,
      O => \q[70]_i_4_n_0\
    );
\q[70]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \q[71]_i_11_n_0\,
      I1 => \q_reg[71]_2\,
      I2 => SrcBE(1),
      I3 => SrcAE(1),
      I4 => \q_reg[99]_0\,
      I5 => \q_reg[99]_1\,
      O => \q[70]_i_5_n_0\
    );
\q[70]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0808080"
    )
        port map (
      I0 => \q[76]_i_10_n_0\,
      I1 => \q[100]_i_14_n_0\,
      I2 => \q[100]_i_12_n_0\,
      I3 => \q[77]_i_10_n_0\,
      I4 => \q[99]_i_8_n_0\,
      O => \q[70]_i_6_n_0\
    );
\q[70]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q_reg[32]_0\,
      I1 => \q_reg[142]_0\(4),
      O => \q[70]_i_7_n_0\
    );
\q[70]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0CCCCFF00AAAA"
    )
        port map (
      I0 => SrcAE(1),
      I1 => SrcAE(9),
      I2 => SrcAE(25),
      I3 => SrcAE(17),
      I4 => SrcBE(4),
      I5 => SrcBE(3),
      O => \q[70]_i_8_n_0\
    );
\q[70]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFC0C0CFA0AFA0A"
    )
        port map (
      I0 => SrcAE(7),
      I1 => SrcAE(23),
      I2 => SrcBE(3),
      I3 => SrcAE(15),
      I4 => \^q_reg[110]_0\(0),
      I5 => SrcBE(4),
      O => \q[70]_i_9_n_0\
    );
\q[71]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBB8B8B8"
    )
        port map (
      I0 => \q[70]_i_9_n_0\,
      I1 => SrcBE(2),
      I2 => \q[79]_i_10_n_0\,
      I3 => \q[71]_i_13_n_0\,
      I4 => SrcBE(3),
      I5 => \q[71]_i_14_n_0\,
      O => \q[71]_i_10_n_0\
    );
\q[71]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[77]_i_12_n_0\,
      I1 => \q[73]_i_10_n_0\,
      I2 => SrcBE(1),
      I3 => \q[75]_i_11_n_0\,
      I4 => SrcBE(2),
      I5 => \q[71]_i_12_n_0\,
      O => \q[71]_i_11_n_0\
    );
\q[71]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0CCCCFF00AAAA"
    )
        port map (
      I0 => SrcAE(2),
      I1 => SrcAE(10),
      I2 => SrcAE(26),
      I3 => SrcAE(18),
      I4 => SrcBE(4),
      I5 => SrcBE(3),
      O => \q[71]_i_12_n_0\
    );
\q[71]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SrcAE(27),
      I1 => SrcBE(4),
      I2 => SrcAE(11),
      O => \q[71]_i_13_n_0\
    );
\q[71]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => SrcBE(3),
      I1 => SrcBE(4),
      I2 => SrcAE(19),
      O => \q[71]_i_14_n_0\
    );
\q[71]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAA80"
    )
        port map (
      I0 => \q_reg[71]_0\,
      I1 => \q_reg[71]_1\,
      I2 => \q[71]_i_2_n_0\,
      I3 => \q[71]_i_3_n_0\,
      I4 => \q[71]_i_4_n_0\,
      I5 => \q[71]_i_5_n_0\,
      O => \^q_reg[9]_0\(34)
    );
\q[71]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00AAAACCCCF0F0"
    )
        port map (
      I0 => \q[71]_i_6_n_0\,
      I1 => \q[71]_i_7_n_0\,
      I2 => \q[72]_i_7_n_0\,
      I3 => \q[72]_i_6_n_0\,
      I4 => \^q_reg[32]_0\,
      I5 => \q_reg[142]_0\(4),
      O => \q[71]_i_2_n_0\
    );
\q[71]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcBE(2),
      I1 => SrcAE(2),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(2),
      O => \q[71]_i_3_n_0\
    );
\q[71]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B800FF000000"
    )
        port map (
      I0 => \q[71]_i_8_n_0\,
      I1 => SrcBE(2),
      I2 => \q[71]_i_9_n_0\,
      I3 => \q_reg[71]_2\,
      I4 => \q[71]_i_10_n_0\,
      I5 => SrcBE(1),
      O => \q[71]_i_4_n_0\
    );
\q[71]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \q[71]_i_11_n_0\,
      I1 => \q_reg[70]_0\,
      I2 => \q_reg[99]_0\,
      I3 => SrcBE(2),
      I4 => SrcAE(2),
      I5 => \q_reg[99]_1\,
      O => \q[71]_i_5_n_0\
    );
\q[71]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[77]_i_9_n_0\,
      I1 => \q[73]_i_10_n_0\,
      I2 => SrcBE(1),
      I3 => \q[75]_i_11_n_0\,
      I4 => SrcBE(2),
      I5 => \q[71]_i_12_n_0\,
      O => \q[71]_i_6_n_0\
    );
\q[71]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \q[100]_i_12_n_0\,
      I1 => \q[77]_i_10_n_0\,
      O => \q[71]_i_7_n_0\
    );
\q[71]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => SrcAE(17),
      I1 => \^q_reg[110]_0\(0),
      I2 => SrcBE(3),
      I3 => SrcAE(25),
      I4 => SrcBE(4),
      I5 => SrcAE(9),
      O => \q[71]_i_8_n_0\
    );
\q[71]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0CCCCFF00AAAA"
    )
        port map (
      I0 => SrcAE(5),
      I1 => SrcAE(13),
      I2 => SrcAE(29),
      I3 => SrcAE(21),
      I4 => SrcBE(4),
      I5 => SrcBE(3),
      O => \q[71]_i_9_n_0\
    );
\q[72]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(3),
      I1 => SrcBE(3),
      I2 => \q_reg[142]_0\(4),
      O => \q[72]_i_11_n_0\
    );
\q[72]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(2),
      I1 => SrcBE(2),
      I2 => \q_reg[142]_0\(4),
      O => \q[72]_i_12_n_0\
    );
\q[72]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(1),
      I1 => SrcBE(1),
      I2 => \q_reg[142]_0\(4),
      O => \q[72]_i_13_n_0\
    );
\q[72]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => SrcAE(0),
      I1 => \q_reg[142]_0\(4),
      O => \q[72]_i_14_n_0\
    );
\q[72]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \q[72]_i_6_n_0\,
      I1 => \q[73]_i_7_n_0\,
      I2 => \q_reg[142]_0\(4),
      I3 => \^q_reg[32]_0\,
      I4 => \q[73]_i_6_n_0\,
      I5 => \q[72]_i_7_n_0\,
      O => \q_reg[8]_25\
    );
\q[72]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcBE(3),
      I1 => SrcAE(3),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(3),
      O => \q_reg[9]_5\
    );
\q[72]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \q[72]_i_9_n_0\,
      I1 => \q_reg[70]_0\,
      I2 => \q_reg[99]_0\,
      I3 => SrcBE(3),
      I4 => SrcAE(3),
      I5 => \q_reg[99]_1\,
      O => \q_reg[8]_26\
    );
\q[72]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[78]_i_9_n_0\,
      I1 => \q[71]_i_9_n_0\,
      I2 => SrcBE(1),
      I3 => \q[70]_i_9_n_0\,
      I4 => SrcBE(2),
      I5 => \q[70]_i_10_n_0\,
      O => \q[72]_i_6_n_0\
    );
\q[72]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \q[76]_i_10_n_0\,
      I1 => \q[78]_i_10_n_0\,
      I2 => SrcBE(1),
      I3 => SrcBE(2),
      O => \q[72]_i_7_n_0\
    );
\q[72]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \q[71]_i_8_n_0\,
      I1 => SrcBE(2),
      I2 => \q[71]_i_9_n_0\,
      I3 => SrcBE(1),
      I4 => \q[71]_i_10_n_0\,
      O => \q[72]_i_9_n_0\
    );
\q[73]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0CCCCFF00AAAA"
    )
        port map (
      I0 => SrcAE(4),
      I1 => SrcAE(12),
      I2 => SrcAE(28),
      I3 => SrcAE(20),
      I4 => SrcBE(4),
      I5 => SrcBE(3),
      O => \q[73]_i_10_n_0\
    );
\q[73]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \q[73]_i_6_n_0\,
      I1 => \q[74]_i_6_n_0\,
      I2 => \q_reg[142]_0\(4),
      I3 => \^q_reg[32]_0\,
      I4 => \q[74]_i_7_n_0\,
      I5 => \q[73]_i_7_n_0\,
      O => \q_reg[8]_30\
    );
\q[73]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcBE(4),
      I1 => SrcAE(4),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(4),
      O => \q_reg[9]_4\
    );
\q[73]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \^q_reg[34]_2\,
      I1 => \q_reg[70]_0\,
      I2 => \q_reg[99]_0\,
      I3 => SrcBE(4),
      I4 => SrcAE(4),
      I5 => \q_reg[99]_1\,
      O => \q_reg[8]_32\
    );
\q[73]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \q[77]_i_10_n_0\,
      I1 => \q[79]_i_10_n_0\,
      I2 => SrcBE(1),
      I3 => SrcBE(2),
      O => \q[73]_i_6_n_0\
    );
\q[73]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[75]_i_10_n_0\,
      I1 => SrcBE(1),
      I2 => \q[73]_i_9_n_0\,
      O => \q[73]_i_7_n_0\
    );
\q[73]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => \q[77]_i_12_n_0\,
      I1 => SrcBE(2),
      I2 => \q[73]_i_10_n_0\,
      I3 => \q[79]_i_12_n_0\,
      I4 => \q[75]_i_11_n_0\,
      I5 => SrcBE(1),
      O => \^q_reg[34]_2\
    );
\q[73]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7520FFFF75200000"
    )
        port map (
      I0 => SrcBE(3),
      I1 => SrcBE(4),
      I2 => SrcAE(16),
      I3 => \q[69]_i_16_n_0\,
      I4 => SrcBE(2),
      I5 => \q[73]_i_10_n_0\,
      O => \q[73]_i_9_n_0\
    );
\q[74]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7520FFFF75200000"
    )
        port map (
      I0 => SrcBE(3),
      I1 => SrcBE(4),
      I2 => SrcAE(17),
      I3 => \q[74]_i_11_n_0\,
      I4 => SrcBE(2),
      I5 => \q[71]_i_9_n_0\,
      O => \q[74]_i_10_n_0\
    );
\q[74]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SrcAE(25),
      I1 => SrcBE(4),
      I2 => SrcAE(9),
      O => \q[74]_i_11_n_0\
    );
\q[74]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \q[74]_i_6_n_0\,
      I1 => \q[75]_i_7_n_0\,
      I2 => \q_reg[142]_0\(4),
      I3 => \^q_reg[32]_0\,
      I4 => \q[75]_i_6_n_0\,
      I5 => \q[74]_i_7_n_0\,
      O => \q_reg[8]_29\
    );
\q[74]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcAE(5),
      I1 => SrcBE(5),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(5),
      O => \q_reg[9]_2\
    );
\q[74]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \^q_reg[34]_0\,
      I1 => \q_reg[70]_0\,
      I2 => \q_reg[99]_0\,
      I3 => SrcAE(5),
      I4 => SrcBE(5),
      I5 => \q_reg[99]_1\,
      O => \q_reg[8]_27\
    );
\q[74]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[74]_i_9_n_0\,
      I1 => SrcBE(1),
      I2 => \q[74]_i_10_n_0\,
      O => \q[74]_i_6_n_0\
    );
\q[74]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3300B8B8"
    )
        port map (
      I0 => \q[76]_i_10_n_0\,
      I1 => SrcBE(2),
      I2 => \q[76]_i_11_n_0\,
      I3 => \q[78]_i_10_n_0\,
      I4 => SrcBE(1),
      O => \q[74]_i_7_n_0\
    );
\q[74]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => \q[71]_i_8_n_0\,
      I1 => SrcBE(2),
      I2 => \q[71]_i_9_n_0\,
      I3 => \q[80]_i_16_n_0\,
      I4 => \q[70]_i_9_n_0\,
      I5 => SrcBE(1),
      O => \^q_reg[34]_0\
    );
\q[74]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7520FFFF75200000"
    )
        port map (
      I0 => SrcBE(3),
      I1 => SrcBE(4),
      I2 => SrcAE(19),
      I3 => \q[71]_i_13_n_0\,
      I4 => SrcBE(2),
      I5 => \q[70]_i_9_n_0\,
      O => \q[74]_i_9_n_0\
    );
\q[75]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7520FFFF75200000"
    )
        port map (
      I0 => SrcBE(3),
      I1 => SrcBE(4),
      I2 => SrcAE(18),
      I3 => \q[69]_i_17_n_0\,
      I4 => SrcBE(2),
      I5 => \q[75]_i_11_n_0\,
      O => \q[75]_i_10_n_0\
    );
\q[75]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0CCCCFF00AAAA"
    )
        port map (
      I0 => SrcAE(6),
      I1 => SrcAE(14),
      I2 => SrcAE(30),
      I3 => SrcAE(22),
      I4 => SrcBE(4),
      I5 => SrcBE(3),
      O => \q[75]_i_11_n_0\
    );
\q[75]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SrcAE(28),
      I1 => SrcBE(4),
      I2 => SrcAE(12),
      O => \q[75]_i_12_n_0\
    );
\q[75]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \q[75]_i_6_n_0\,
      I1 => \q[76]_i_6_n_0\,
      I2 => \q_reg[142]_0\(4),
      I3 => \^q_reg[32]_0\,
      I4 => \q[76]_i_7_n_0\,
      I5 => \q[75]_i_7_n_0\,
      O => \q_reg[8]_28\
    );
\q[75]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcAE(6),
      I1 => SrcBE(6),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(6),
      O => \q_reg[9]_3\
    );
\q[75]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \^q_reg[34]_1\,
      I1 => \q_reg[70]_0\,
      I2 => \q_reg[99]_0\,
      I3 => SrcAE(6),
      I4 => SrcBE(6),
      I5 => \q_reg[99]_1\,
      O => \q_reg[8]_31\
    );
\q[75]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3300B8B8"
    )
        port map (
      I0 => \q[77]_i_10_n_0\,
      I1 => SrcBE(2),
      I2 => \q[77]_i_11_n_0\,
      I3 => \q[79]_i_10_n_0\,
      I4 => SrcBE(1),
      O => \q[75]_i_6_n_0\
    );
\q[75]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[75]_i_9_n_0\,
      I1 => SrcBE(1),
      I2 => \q[75]_i_10_n_0\,
      O => \q[75]_i_7_n_0\
    );
\q[75]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FF33CC00"
    )
        port map (
      I0 => \q[81]_i_11_n_0\,
      I1 => SrcBE(2),
      I2 => \q[77]_i_12_n_0\,
      I3 => \q[79]_i_12_n_0\,
      I4 => \q[75]_i_11_n_0\,
      I5 => SrcBE(1),
      O => \^q_reg[34]_1\
    );
\q[75]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7520FFFF75200000"
    )
        port map (
      I0 => SrcBE(3),
      I1 => SrcBE(4),
      I2 => SrcAE(20),
      I3 => \q[75]_i_12_n_0\,
      I4 => SrcBE(2),
      I5 => \q[77]_i_9_n_0\,
      O => \q[75]_i_9_n_0\
    );
\q[76]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => SrcBE(4),
      I1 => SrcBE(3),
      I2 => SrcAE(0),
      O => \q[76]_i_10_n_0\
    );
\q[76]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => SrcBE(4),
      I1 => SrcBE(3),
      I2 => SrcAE(4),
      O => \q[76]_i_11_n_0\
    );
\q[76]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(7),
      I1 => SrcBE(7),
      I2 => \q_reg[142]_0\(4),
      O => \q[76]_i_12_n_0\
    );
\q[76]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(6),
      I1 => SrcBE(6),
      I2 => \q_reg[142]_0\(4),
      O => \q[76]_i_13_n_0\
    );
\q[76]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(5),
      I1 => SrcBE(5),
      I2 => \q_reg[142]_0\(4),
      O => \q[76]_i_14_n_0\
    );
\q[76]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(4),
      I1 => SrcBE(4),
      I2 => \q_reg[142]_0\(4),
      O => \q[76]_i_15_n_0\
    );
\q[76]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \q[76]_i_6_n_0\,
      I1 => \q[77]_i_6_n_0\,
      I2 => \q_reg[142]_0\(4),
      I3 => \^q_reg[32]_0\,
      I4 => \q[77]_i_7_n_0\,
      I5 => \q[76]_i_7_n_0\,
      O => \q_reg[8]_24\
    );
\q[76]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcAE(7),
      I1 => SrcBE(7),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(7),
      O => \q_reg[9]_1\
    );
\q[76]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \^q_reg[33]_1\,
      I1 => \q_reg[70]_0\,
      I2 => \q_reg[99]_0\,
      I3 => SrcAE(7),
      I4 => SrcBE(7),
      I5 => \q_reg[99]_1\,
      O => \q_reg[8]_8\
    );
\q[76]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[82]_i_9_n_0\,
      I1 => \q[78]_i_9_n_0\,
      I2 => SrcBE(1),
      I3 => \q[80]_i_10_n_0\,
      I4 => SrcBE(2),
      I5 => \q[70]_i_9_n_0\,
      O => \q[76]_i_6_n_0\
    );
\q[76]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[76]_i_10_n_0\,
      I1 => \q[76]_i_11_n_0\,
      I2 => SrcBE(1),
      I3 => \q[78]_i_10_n_0\,
      I4 => SrcBE(2),
      I5 => \q[78]_i_11_n_0\,
      O => \q[76]_i_7_n_0\
    );
\q[76]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[82]_i_11_n_0\,
      I1 => \q[71]_i_8_n_0\,
      I2 => SrcBE(1),
      I3 => \q[80]_i_16_n_0\,
      I4 => SrcBE(2),
      I5 => \q[70]_i_9_n_0\,
      O => \^q_reg[33]_1\
    );
\q[77]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => SrcBE(4),
      I1 => SrcBE(3),
      I2 => SrcAE(1),
      O => \q[77]_i_10_n_0\
    );
\q[77]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => SrcBE(4),
      I1 => SrcBE(3),
      I2 => SrcAE(5),
      O => \q[77]_i_11_n_0\
    );
\q[77]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => SrcAE(16),
      I1 => \^q_reg[110]_0\(0),
      I2 => SrcBE(3),
      I3 => SrcAE(24),
      I4 => SrcBE(4),
      I5 => SrcAE(8),
      O => \q[77]_i_12_n_0\
    );
\q[77]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00AAAACCCCF0F0"
    )
        port map (
      I0 => \q[77]_i_6_n_0\,
      I1 => \q[77]_i_7_n_0\,
      I2 => \q[78]_i_7_n_0\,
      I3 => \q[78]_i_6_n_0\,
      I4 => \^q_reg[32]_0\,
      I5 => \q_reg[142]_0\(4),
      O => \q_reg[8]_23\
    );
\q[77]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcAE(8),
      I1 => SrcBE(8),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(8),
      O => \q_reg[9]_11\
    );
\q[77]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \^q_reg[33]_6\,
      I1 => \q_reg[70]_0\,
      I2 => \q_reg[99]_0\,
      I3 => SrcAE(8),
      I4 => SrcBE(8),
      I5 => \q_reg[99]_1\,
      O => \q_reg[8]_37\
    );
\q[77]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[83]_i_9_n_0\,
      I1 => \q[79]_i_9_n_0\,
      I2 => SrcBE(1),
      I3 => \q[81]_i_9_n_0\,
      I4 => SrcBE(2),
      I5 => \q[77]_i_9_n_0\,
      O => \q[77]_i_6_n_0\
    );
\q[77]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[77]_i_10_n_0\,
      I1 => \q[77]_i_11_n_0\,
      I2 => SrcBE(1),
      I3 => \q[79]_i_10_n_0\,
      I4 => SrcBE(2),
      I5 => \q[79]_i_11_n_0\,
      O => \q[77]_i_7_n_0\
    );
\q[77]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[83]_i_11_n_0\,
      I1 => \q[79]_i_12_n_0\,
      I2 => SrcBE(1),
      I3 => \q[81]_i_11_n_0\,
      I4 => SrcBE(2),
      I5 => \q[77]_i_12_n_0\,
      O => \^q_reg[33]_6\
    );
\q[77]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => SrcAE(16),
      I1 => SrcBE(3),
      I2 => SrcAE(24),
      I3 => SrcBE(4),
      I4 => SrcAE(8),
      O => \q[77]_i_9_n_0\
    );
\q[78]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => SrcBE(4),
      I1 => SrcBE(3),
      I2 => SrcAE(2),
      O => \q[78]_i_10_n_0\
    );
\q[78]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => SrcBE(4),
      I1 => SrcBE(3),
      I2 => SrcAE(6),
      O => \q[78]_i_11_n_0\
    );
\q[78]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \q[78]_i_6_n_0\,
      I1 => \q[79]_i_6_n_0\,
      I2 => \q_reg[142]_0\(4),
      I3 => \^q_reg[32]_0\,
      I4 => \q[79]_i_7_n_0\,
      I5 => \q[78]_i_7_n_0\,
      O => \q_reg[8]_21\
    );
\q[78]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcAE(9),
      I1 => SrcBE(9),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(9),
      O => \q_reg[9]_6\
    );
\q[78]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \^q_reg[33]_3\,
      I1 => \q_reg[70]_0\,
      I2 => \q_reg[99]_0\,
      I3 => SrcAE(9),
      I4 => SrcBE(9),
      I5 => \q_reg[99]_1\,
      O => \q_reg[8]_34\
    );
\q[78]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[84]_i_10_n_0\,
      I1 => \q[80]_i_10_n_0\,
      I2 => SrcBE(1),
      I3 => \q[82]_i_9_n_0\,
      I4 => SrcBE(2),
      I5 => \q[78]_i_9_n_0\,
      O => \q[78]_i_6_n_0\
    );
\q[78]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \q[78]_i_10_n_0\,
      I1 => SrcBE(2),
      I2 => \q[78]_i_11_n_0\,
      I3 => SrcBE(1),
      I4 => \q[80]_i_11_n_0\,
      O => \q[78]_i_7_n_0\
    );
\q[78]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[84]_i_16_n_0\,
      I1 => \q[80]_i_16_n_0\,
      I2 => SrcBE(1),
      I3 => \q[82]_i_11_n_0\,
      I4 => SrcBE(2),
      I5 => \q[71]_i_8_n_0\,
      O => \^q_reg[33]_3\
    );
\q[78]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => SrcAE(17),
      I1 => SrcBE(3),
      I2 => SrcAE(25),
      I3 => SrcBE(4),
      I4 => SrcAE(9),
      O => \q[78]_i_9_n_0\
    );
\q[79]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => SrcBE(4),
      I1 => SrcBE(3),
      I2 => SrcAE(3),
      O => \q[79]_i_10_n_0\
    );
\q[79]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => SrcBE(4),
      I1 => SrcBE(3),
      I2 => SrcAE(7),
      O => \q[79]_i_11_n_0\
    );
\q[79]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => SrcAE(18),
      I1 => \^q_reg[110]_0\(0),
      I2 => SrcBE(3),
      I3 => SrcAE(26),
      I4 => SrcBE(4),
      I5 => SrcAE(10),
      O => \q[79]_i_12_n_0\
    );
\q[79]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00AAAACCCCF0F0"
    )
        port map (
      I0 => \q[79]_i_6_n_0\,
      I1 => \q[79]_i_7_n_0\,
      I2 => \q[80]_i_7_n_0\,
      I3 => \q[80]_i_6_n_0\,
      I4 => \^q_reg[32]_0\,
      I5 => \q_reg[142]_0\(4),
      O => \q_reg[8]_22\
    );
\q[79]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcAE(10),
      I1 => SrcBE(10),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(10),
      O => \q_reg[9]_9\
    );
\q[79]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \^q_reg[33]_8\,
      I1 => \q_reg[70]_0\,
      I2 => \q_reg[99]_0\,
      I3 => SrcAE(10),
      I4 => SrcBE(10),
      I5 => \q_reg[99]_1\,
      O => \q_reg[8]_39\
    );
\q[79]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[85]_i_11_n_0\,
      I1 => \q[81]_i_9_n_0\,
      I2 => SrcBE(1),
      I3 => \q[83]_i_9_n_0\,
      I4 => SrcBE(2),
      I5 => \q[79]_i_9_n_0\,
      O => \q[79]_i_6_n_0\
    );
\q[79]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \q[79]_i_10_n_0\,
      I1 => SrcBE(2),
      I2 => \q[79]_i_11_n_0\,
      I3 => SrcBE(1),
      I4 => \q[81]_i_10_n_0\,
      O => \q[79]_i_7_n_0\
    );
\q[79]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[85]_i_12_n_0\,
      I1 => \q[81]_i_11_n_0\,
      I2 => SrcBE(1),
      I3 => \q[83]_i_11_n_0\,
      I4 => SrcBE(2),
      I5 => \q[79]_i_12_n_0\,
      O => \^q_reg[33]_8\
    );
\q[79]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => SrcAE(18),
      I1 => SrcBE(3),
      I2 => SrcAE(26),
      I3 => SrcBE(4),
      I4 => SrcAE(10),
      O => \q[79]_i_9_n_0\
    );
\q[80]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => SrcAE(19),
      I1 => SrcBE(3),
      I2 => SrcAE(27),
      I3 => SrcBE(4),
      I4 => SrcAE(11),
      O => \q[80]_i_10_n_0\
    );
\q[80]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => SrcAE(4),
      I1 => SrcBE(2),
      I2 => SrcAE(0),
      I3 => SrcAE(8),
      I4 => SrcBE(3),
      I5 => SrcBE(4),
      O => \q[80]_i_11_n_0\
    );
\q[80]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(11),
      I1 => SrcBE(11),
      I2 => \q_reg[142]_0\(4),
      O => \q[80]_i_12_n_0\
    );
\q[80]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(10),
      I1 => SrcBE(10),
      I2 => \q_reg[142]_0\(4),
      O => \q[80]_i_13_n_0\
    );
\q[80]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(9),
      I1 => SrcBE(9),
      I2 => \q_reg[142]_0\(4),
      O => \q[80]_i_14_n_0\
    );
\q[80]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(8),
      I1 => SrcBE(8),
      I2 => \q_reg[142]_0\(4),
      O => \q[80]_i_15_n_0\
    );
\q[80]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => SrcAE(19),
      I1 => \^q_reg[110]_0\(0),
      I2 => SrcBE(3),
      I3 => SrcAE(27),
      I4 => SrcBE(4),
      I5 => SrcAE(11),
      O => \q[80]_i_16_n_0\
    );
\q[80]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \q[80]_i_6_n_0\,
      I1 => \q[81]_i_6_n_0\,
      I2 => \q_reg[142]_0\(4),
      I3 => \^q_reg[32]_0\,
      I4 => \q[81]_i_7_n_0\,
      I5 => \q[80]_i_7_n_0\,
      O => \q_reg[8]_17\
    );
\q[80]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcAE(11),
      I1 => SrcBE(11),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(11),
      O => \q_reg[9]_7\
    );
\q[80]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \^q_reg[33]_2\,
      I1 => \q_reg[70]_0\,
      I2 => \q_reg[99]_0\,
      I3 => SrcAE(11),
      I4 => SrcBE(11),
      I5 => \q_reg[99]_1\,
      O => \q_reg[8]_33\
    );
\q[80]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[86]_i_11_n_0\,
      I1 => \q[82]_i_9_n_0\,
      I2 => SrcBE(1),
      I3 => \q[84]_i_10_n_0\,
      I4 => SrcBE(2),
      I5 => \q[80]_i_10_n_0\,
      O => \q[80]_i_6_n_0\
    );
\q[80]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[80]_i_11_n_0\,
      I1 => SrcBE(1),
      I2 => \q[82]_i_10_n_0\,
      O => \q[80]_i_7_n_0\
    );
\q[80]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[86]_i_12_n_0\,
      I1 => \q[82]_i_11_n_0\,
      I2 => SrcBE(1),
      I3 => \q[84]_i_16_n_0\,
      I4 => SrcBE(2),
      I5 => \q[80]_i_16_n_0\,
      O => \^q_reg[33]_2\
    );
\q[81]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => SrcAE(5),
      I1 => SrcBE(2),
      I2 => SrcAE(1),
      I3 => SrcAE(9),
      I4 => SrcBE(3),
      I5 => SrcBE(4),
      O => \q[81]_i_10_n_0\
    );
\q[81]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => SrcAE(20),
      I1 => \^q_reg[110]_0\(0),
      I2 => SrcBE(3),
      I3 => SrcAE(28),
      I4 => SrcBE(4),
      I5 => SrcAE(12),
      O => \q[81]_i_11_n_0\
    );
\q[81]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00AAAACCCCF0F0"
    )
        port map (
      I0 => \q[81]_i_6_n_0\,
      I1 => \q[81]_i_7_n_0\,
      I2 => \q[82]_i_7_n_0\,
      I3 => \q[82]_i_6_n_0\,
      I4 => \^q_reg[32]_0\,
      I5 => \q_reg[142]_0\(4),
      O => \q_reg[8]_18\
    );
\q[81]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcAE(12),
      I1 => SrcBE(12),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(12),
      O => \q_reg[9]_12\
    );
\q[81]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \^q_reg[33]_7\,
      I1 => \q_reg[70]_0\,
      I2 => \q_reg[99]_0\,
      I3 => SrcAE(12),
      I4 => SrcBE(12),
      I5 => \q_reg[99]_1\,
      O => \q_reg[8]_38\
    );
\q[81]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[87]_i_11_n_0\,
      I1 => \q[83]_i_9_n_0\,
      I2 => SrcBE(1),
      I3 => \q[85]_i_11_n_0\,
      I4 => SrcBE(2),
      I5 => \q[81]_i_9_n_0\,
      O => \q[81]_i_6_n_0\
    );
\q[81]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[81]_i_10_n_0\,
      I1 => SrcBE(1),
      I2 => \q[83]_i_10_n_0\,
      O => \q[81]_i_7_n_0\
    );
\q[81]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[87]_i_12_n_0\,
      I1 => \q[83]_i_11_n_0\,
      I2 => SrcBE(1),
      I3 => \q[85]_i_12_n_0\,
      I4 => SrcBE(2),
      I5 => \q[81]_i_11_n_0\,
      O => \^q_reg[33]_7\
    );
\q[81]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => SrcAE(20),
      I1 => SrcBE(3),
      I2 => SrcAE(28),
      I3 => SrcBE(4),
      I4 => SrcAE(12),
      O => \q[81]_i_9_n_0\
    );
\q[82]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => SrcAE(6),
      I1 => SrcBE(2),
      I2 => SrcAE(2),
      I3 => SrcAE(10),
      I4 => SrcBE(3),
      I5 => SrcBE(4),
      O => \q[82]_i_10_n_0\
    );
\q[82]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => SrcAE(21),
      I1 => \^q_reg[110]_0\(0),
      I2 => SrcBE(3),
      I3 => SrcAE(29),
      I4 => SrcBE(4),
      I5 => SrcAE(13),
      O => \q[82]_i_11_n_0\
    );
\q[82]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \q[82]_i_6_n_0\,
      I1 => \q[83]_i_6_n_0\,
      I2 => \q_reg[142]_0\(4),
      I3 => \^q_reg[32]_0\,
      I4 => \q[83]_i_7_n_0\,
      I5 => \q[82]_i_7_n_0\,
      O => \q_reg[8]_19\
    );
\q[82]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcAE(13),
      I1 => SrcBE(13),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(13),
      O => \q_reg[9]_8\
    );
\q[82]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \^q_reg[33]_4\,
      I1 => \q_reg[70]_0\,
      I2 => \q_reg[99]_0\,
      I3 => SrcAE(13),
      I4 => SrcBE(13),
      I5 => \q_reg[99]_1\,
      O => \q_reg[8]_35\
    );
\q[82]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[88]_i_12_n_0\,
      I1 => \q[84]_i_10_n_0\,
      I2 => SrcBE(1),
      I3 => \q[86]_i_11_n_0\,
      I4 => SrcBE(2),
      I5 => \q[82]_i_9_n_0\,
      O => \q[82]_i_6_n_0\
    );
\q[82]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \q[82]_i_10_n_0\,
      I1 => SrcBE(1),
      I2 => \q[84]_i_11_n_0\,
      I3 => SrcBE(2),
      I4 => \q[88]_i_10_n_0\,
      O => \q[82]_i_7_n_0\
    );
\q[82]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[88]_i_18_n_0\,
      I1 => \q[84]_i_16_n_0\,
      I2 => SrcBE(1),
      I3 => \q[86]_i_12_n_0\,
      I4 => SrcBE(2),
      I5 => \q[82]_i_11_n_0\,
      O => \^q_reg[33]_4\
    );
\q[82]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => SrcAE(21),
      I1 => SrcBE(3),
      I2 => SrcAE(29),
      I3 => SrcBE(4),
      I4 => SrcAE(13),
      O => \q[82]_i_9_n_0\
    );
\q[83]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => SrcAE(7),
      I1 => SrcBE(2),
      I2 => SrcAE(3),
      I3 => SrcAE(11),
      I4 => SrcBE(3),
      I5 => SrcBE(4),
      O => \q[83]_i_10_n_0\
    );
\q[83]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => SrcAE(22),
      I1 => \^q_reg[110]_0\(0),
      I2 => SrcBE(3),
      I3 => SrcAE(30),
      I4 => SrcBE(4),
      I5 => SrcAE(14),
      O => \q[83]_i_11_n_0\
    );
\q[83]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00AAAACCCCF0F0"
    )
        port map (
      I0 => \q[83]_i_6_n_0\,
      I1 => \q[83]_i_7_n_0\,
      I2 => \q[84]_i_7_n_0\,
      I3 => \q[84]_i_6_n_0\,
      I4 => \^q_reg[32]_0\,
      I5 => \q_reg[142]_0\(4),
      O => \q_reg[8]_20\
    );
\q[83]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcAE(14),
      I1 => SrcBE(14),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(14),
      O => \q_reg[9]_10\
    );
\q[83]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \^q_reg[33]_9\,
      I1 => \q_reg[70]_0\,
      I2 => \q_reg[99]_0\,
      I3 => SrcAE(14),
      I4 => SrcBE(14),
      I5 => \q_reg[99]_1\,
      O => \q_reg[8]_40\
    );
\q[83]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[85]_i_10_n_0\,
      I1 => \q[85]_i_11_n_0\,
      I2 => SrcBE(1),
      I3 => \q[87]_i_11_n_0\,
      I4 => SrcBE(2),
      I5 => \q[83]_i_9_n_0\,
      O => \q[83]_i_6_n_0\
    );
\q[83]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \q[83]_i_10_n_0\,
      I1 => SrcBE(1),
      I2 => \q[85]_i_9_n_0\,
      I3 => SrcBE(2),
      I4 => \q[89]_i_9_n_0\,
      O => \q[83]_i_7_n_0\
    );
\q[83]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[89]_i_12_n_0\,
      I1 => \q[85]_i_12_n_0\,
      I2 => SrcBE(1),
      I3 => \q[87]_i_12_n_0\,
      I4 => SrcBE(2),
      I5 => \q[83]_i_11_n_0\,
      O => \^q_reg[33]_9\
    );
\q[83]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => SrcAE(22),
      I1 => SrcBE(3),
      I2 => SrcAE(30),
      I3 => SrcBE(4),
      I4 => SrcAE(14),
      O => \q[83]_i_9_n_0\
    );
\q[84]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3300B8B8"
    )
        port map (
      I0 => SrcAE(23),
      I1 => SrcBE(3),
      I2 => SrcAE(15),
      I3 => \^q_reg[110]_0\(0),
      I4 => SrcBE(4),
      O => \q[84]_i_10_n_0\
    );
\q[84]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => SrcAE(0),
      I1 => SrcAE(8),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \q[84]_i_11_n_0\
    );
\q[84]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(15),
      I1 => SrcBE(15),
      I2 => \q_reg[142]_0\(4),
      O => \q[84]_i_12_n_0\
    );
\q[84]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(14),
      I1 => SrcBE(14),
      I2 => \q_reg[142]_0\(4),
      O => \q[84]_i_13_n_0\
    );
\q[84]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(13),
      I1 => SrcBE(13),
      I2 => \q_reg[142]_0\(4),
      O => \q[84]_i_14_n_0\
    );
\q[84]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(12),
      I1 => SrcBE(12),
      I2 => \q_reg[142]_0\(4),
      O => \q[84]_i_15_n_0\
    );
\q[84]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => SrcAE(23),
      I1 => SrcBE(3),
      I2 => SrcAE(15),
      I3 => \^q_reg[110]_0\(0),
      I4 => SrcBE(4),
      O => \q[84]_i_16_n_0\
    );
\q[84]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \q[84]_i_6_n_0\,
      I1 => \q[85]_i_7_n_0\,
      I2 => \q_reg[142]_0\(4),
      I3 => \^q_reg[32]_0\,
      I4 => \q[85]_i_6_n_0\,
      I5 => \q[84]_i_7_n_0\,
      O => \q_reg[8]_13\
    );
\q[84]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcAE(15),
      I1 => SrcBE(15),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(15),
      O => \q_reg[9]_13\
    );
\q[84]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \^q_reg[33]_5\,
      I1 => \q_reg[70]_0\,
      I2 => \q_reg[99]_0\,
      I3 => SrcAE(15),
      I4 => SrcBE(15),
      I5 => \q_reg[99]_1\,
      O => \q_reg[8]_36\
    );
\q[84]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[86]_i_10_n_0\,
      I1 => \q[86]_i_11_n_0\,
      I2 => SrcBE(1),
      I3 => \q[88]_i_12_n_0\,
      I4 => SrcBE(2),
      I5 => \q[84]_i_10_n_0\,
      O => \q[84]_i_6_n_0\
    );
\q[84]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[84]_i_11_n_0\,
      I1 => \q[88]_i_10_n_0\,
      I2 => SrcBE(1),
      I3 => \q[86]_i_9_n_0\,
      I4 => SrcBE(2),
      I5 => \q[90]_i_9_n_0\,
      O => \q[84]_i_7_n_0\
    );
\q[84]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[90]_i_12_n_0\,
      I1 => \q[86]_i_12_n_0\,
      I2 => SrcBE(1),
      I3 => \q[88]_i_18_n_0\,
      I4 => SrcBE(2),
      I5 => \q[84]_i_16_n_0\,
      O => \^q_reg[33]_5\
    );
\q[85]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => SrcAE(28),
      I1 => SrcAE(20),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \q[85]_i_10_n_0\
    );
\q[85]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => SrcAE(24),
      I1 => SrcAE(16),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \q[85]_i_11_n_0\
    );
\q[85]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => SrcAE(24),
      I1 => SrcBE(3),
      I2 => SrcAE(16),
      I3 => \^q_reg[110]_0\(0),
      I4 => SrcBE(4),
      O => \q[85]_i_12_n_0\
    );
\q[85]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \q[85]_i_6_n_0\,
      I1 => \q[86]_i_7_n_0\,
      I2 => \q_reg[142]_0\(4),
      I3 => \^q_reg[32]_0\,
      I4 => \q[86]_i_6_n_0\,
      I5 => \q[85]_i_7_n_0\,
      O => \q_reg[8]_14\
    );
\q[85]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcAE(16),
      I1 => SrcBE(16),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(16),
      O => \q_reg[9]_25\
    );
\q[85]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \^q_reg[33]_16\,
      I1 => \q_reg[70]_0\,
      I2 => \q_reg[99]_0\,
      I3 => SrcAE(16),
      I4 => SrcBE(16),
      I5 => \q_reg[99]_1\,
      O => \q_reg[8]_47\
    );
\q[85]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[85]_i_9_n_0\,
      I1 => \q[89]_i_9_n_0\,
      I2 => SrcBE(1),
      I3 => \q[87]_i_9_n_0\,
      I4 => SrcBE(2),
      I5 => \q[91]_i_9_n_0\,
      O => \q[85]_i_6_n_0\
    );
\q[85]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[87]_i_10_n_0\,
      I1 => \q[87]_i_11_n_0\,
      I2 => SrcBE(1),
      I3 => \q[85]_i_10_n_0\,
      I4 => SrcBE(2),
      I5 => \q[85]_i_11_n_0\,
      O => \q[85]_i_7_n_0\
    );
\q[85]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[91]_i_12_n_0\,
      I1 => \q[87]_i_12_n_0\,
      I2 => SrcBE(1),
      I3 => \q[89]_i_12_n_0\,
      I4 => SrcBE(2),
      I5 => \q[85]_i_12_n_0\,
      O => \^q_reg[33]_16\
    );
\q[85]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => SrcAE(1),
      I1 => SrcAE(9),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \q[85]_i_9_n_0\
    );
\q[86]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => SrcAE(29),
      I1 => SrcAE(21),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \q[86]_i_10_n_0\
    );
\q[86]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => SrcAE(25),
      I1 => SrcAE(17),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \q[86]_i_11_n_0\
    );
\q[86]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => SrcAE(25),
      I1 => SrcBE(3),
      I2 => SrcAE(17),
      I3 => \^q_reg[110]_0\(0),
      I4 => SrcBE(4),
      O => \q[86]_i_12_n_0\
    );
\q[86]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \q[86]_i_6_n_0\,
      I1 => \q[87]_i_7_n_0\,
      I2 => \q_reg[142]_0\(4),
      I3 => \^q_reg[32]_0\,
      I4 => \q[87]_i_6_n_0\,
      I5 => \q[86]_i_7_n_0\,
      O => \q_reg[8]_16\
    );
\q[86]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcAE(17),
      I1 => SrcBE(17),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(17),
      O => \q_reg[9]_18\
    );
\q[86]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \^q_reg[33]_17\,
      I1 => \q_reg[70]_0\,
      I2 => \q_reg[99]_0\,
      I3 => SrcAE(17),
      I4 => SrcBE(17),
      I5 => \q_reg[99]_1\,
      O => \q_reg[8]_48\
    );
\q[86]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[86]_i_9_n_0\,
      I1 => \q[90]_i_9_n_0\,
      I2 => SrcBE(1),
      I3 => \q[88]_i_10_n_0\,
      I4 => SrcBE(2),
      I5 => \q[92]_i_10_n_0\,
      O => \q[86]_i_6_n_0\
    );
\q[86]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[88]_i_11_n_0\,
      I1 => \q[88]_i_12_n_0\,
      I2 => SrcBE(1),
      I3 => \q[86]_i_10_n_0\,
      I4 => SrcBE(2),
      I5 => \q[86]_i_11_n_0\,
      O => \q[86]_i_7_n_0\
    );
\q[86]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[88]_i_17_n_0\,
      I1 => \q[88]_i_18_n_0\,
      I2 => SrcBE(1),
      I3 => \q[90]_i_12_n_0\,
      I4 => SrcBE(2),
      I5 => \q[86]_i_12_n_0\,
      O => \^q_reg[33]_17\
    );
\q[86]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => SrcAE(2),
      I1 => SrcAE(10),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \q[86]_i_9_n_0\
    );
\q[87]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => SrcAE(30),
      I1 => SrcAE(22),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \q[87]_i_10_n_0\
    );
\q[87]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => SrcAE(26),
      I1 => SrcAE(18),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \q[87]_i_11_n_0\
    );
\q[87]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => SrcAE(26),
      I1 => SrcBE(3),
      I2 => SrcAE(18),
      I3 => \^q_reg[110]_0\(0),
      I4 => SrcBE(4),
      O => \q[87]_i_12_n_0\
    );
\q[87]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \q[87]_i_6_n_0\,
      I1 => \q[88]_i_7_n_0\,
      I2 => \q_reg[142]_0\(4),
      I3 => \^q_reg[32]_0\,
      I4 => \q[88]_i_6_n_0\,
      I5 => \q[87]_i_7_n_0\,
      O => \q_reg[8]_15\
    );
\q[87]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcAE(18),
      I1 => SrcBE(18),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(18),
      O => \q_reg[9]_22\
    );
\q[87]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \^q_reg[33]_14\,
      I1 => \q_reg[70]_0\,
      I2 => \q_reg[99]_0\,
      I3 => SrcAE(18),
      I4 => SrcBE(18),
      I5 => \q_reg[99]_1\,
      O => \q_reg[8]_45\
    );
\q[87]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[87]_i_9_n_0\,
      I1 => \q[91]_i_9_n_0\,
      I2 => SrcBE(1),
      I3 => \q[89]_i_9_n_0\,
      I4 => SrcBE(2),
      I5 => \q[93]_i_9_n_0\,
      O => \q[87]_i_6_n_0\
    );
\q[87]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \q[89]_i_10_n_0\,
      I1 => SrcBE(1),
      I2 => \q[87]_i_10_n_0\,
      I3 => SrcBE(2),
      I4 => \q[87]_i_11_n_0\,
      O => \q[87]_i_7_n_0\
    );
\q[87]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[89]_i_11_n_0\,
      I1 => \q[89]_i_12_n_0\,
      I2 => SrcBE(1),
      I3 => \q[91]_i_12_n_0\,
      I4 => SrcBE(2),
      I5 => \q[87]_i_12_n_0\,
      O => \^q_reg[33]_14\
    );
\q[87]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => SrcAE(3),
      I1 => SrcAE(11),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \q[87]_i_9_n_0\
    );
\q[88]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => SrcAE(4),
      I1 => SrcAE(12),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \q[88]_i_10_n_0\
    );
\q[88]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \^q_reg[110]_0\(0),
      I1 => SrcAE(23),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \q[88]_i_11_n_0\
    );
\q[88]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => SrcAE(27),
      I1 => SrcAE(19),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \q[88]_i_12_n_0\
    );
\q[88]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(19),
      I1 => SrcBE(19),
      I2 => \q_reg[142]_0\(4),
      O => \q[88]_i_13_n_0\
    );
\q[88]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(18),
      I1 => SrcBE(18),
      I2 => \q_reg[142]_0\(4),
      O => \q[88]_i_14_n_0\
    );
\q[88]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(17),
      I1 => SrcBE(17),
      I2 => \q_reg[142]_0\(4),
      O => \q[88]_i_15_n_0\
    );
\q[88]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(16),
      I1 => SrcBE(16),
      I2 => \q_reg[142]_0\(4),
      O => \q[88]_i_16_n_0\
    );
\q[88]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E2"
    )
        port map (
      I0 => SrcAE(23),
      I1 => SrcBE(4),
      I2 => \^q_reg[110]_0\(0),
      I3 => SrcBE(3),
      O => \q[88]_i_17_n_0\
    );
\q[88]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => SrcAE(27),
      I1 => SrcBE(3),
      I2 => SrcAE(19),
      I3 => \^q_reg[110]_0\(0),
      I4 => SrcBE(4),
      O => \q[88]_i_18_n_0\
    );
\q[88]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \q[88]_i_6_n_0\,
      I1 => \q[89]_i_7_n_0\,
      I2 => \q_reg[142]_0\(4),
      I3 => \^q_reg[32]_0\,
      I4 => \q[89]_i_6_n_0\,
      I5 => \q[88]_i_7_n_0\,
      O => \q_reg[8]_12\
    );
\q[88]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcAE(19),
      I1 => SrcBE(19),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(19),
      O => \q_reg[9]_15\
    );
\q[88]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \^q_reg[33]_15\,
      I1 => \q_reg[70]_0\,
      I2 => \q_reg[99]_0\,
      I3 => SrcAE(19),
      I4 => SrcBE(19),
      I5 => \q_reg[99]_1\,
      O => \q_reg[8]_46\
    );
\q[88]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[88]_i_10_n_0\,
      I1 => \q[92]_i_10_n_0\,
      I2 => SrcBE(1),
      I3 => \q[90]_i_9_n_0\,
      I4 => SrcBE(2),
      I5 => \q[94]_i_9_n_0\,
      O => \q[88]_i_6_n_0\
    );
\q[88]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \q[90]_i_10_n_0\,
      I1 => SrcBE(1),
      I2 => \q[88]_i_11_n_0\,
      I3 => SrcBE(2),
      I4 => \q[88]_i_12_n_0\,
      O => \q[88]_i_7_n_0\
    );
\q[88]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[90]_i_11_n_0\,
      I1 => \q[90]_i_12_n_0\,
      I2 => SrcBE(1),
      I3 => \q[88]_i_17_n_0\,
      I4 => SrcBE(2),
      I5 => \q[88]_i_18_n_0\,
      O => \^q_reg[33]_15\
    );
\q[89]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => SrcAE(24),
      I1 => SrcBE(2),
      I2 => SrcAE(28),
      I3 => SrcAE(20),
      I4 => SrcBE(3),
      I5 => SrcBE(4),
      O => \q[89]_i_10_n_0\
    );
\q[89]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E2"
    )
        port map (
      I0 => SrcAE(24),
      I1 => SrcBE(4),
      I2 => \^q_reg[110]_0\(0),
      I3 => SrcBE(3),
      O => \q[89]_i_11_n_0\
    );
\q[89]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => SrcAE(28),
      I1 => SrcBE(3),
      I2 => SrcAE(20),
      I3 => \^q_reg[110]_0\(0),
      I4 => SrcBE(4),
      O => \q[89]_i_12_n_0\
    );
\q[89]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \q[89]_i_6_n_0\,
      I1 => \q[90]_i_7_n_0\,
      I2 => \q_reg[142]_0\(4),
      I3 => \^q_reg[32]_0\,
      I4 => \q[90]_i_6_n_0\,
      I5 => \q[89]_i_7_n_0\,
      O => \q_reg[8]_11\
    );
\q[89]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcAE(20),
      I1 => SrcBE(20),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(20),
      O => \q_reg[9]_27\
    );
\q[89]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \^q_reg[33]_10\,
      I1 => \q_reg[70]_0\,
      I2 => \q_reg[99]_0\,
      I3 => SrcAE(20),
      I4 => SrcBE(20),
      I5 => \q_reg[99]_1\,
      O => \q_reg[8]_41\
    );
\q[89]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[89]_i_9_n_0\,
      I1 => \q[93]_i_9_n_0\,
      I2 => SrcBE(1),
      I3 => \q[91]_i_9_n_0\,
      I4 => SrcBE(2),
      I5 => \q[95]_i_9_n_0\,
      O => \q[89]_i_6_n_0\
    );
\q[89]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[91]_i_10_n_0\,
      I1 => SrcBE(1),
      I2 => \q[89]_i_10_n_0\,
      O => \q[89]_i_7_n_0\
    );
\q[89]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[91]_i_11_n_0\,
      I1 => \q[91]_i_12_n_0\,
      I2 => SrcBE(1),
      I3 => \q[89]_i_11_n_0\,
      I4 => SrcBE(2),
      I5 => \q[89]_i_12_n_0\,
      O => \^q_reg[33]_10\
    );
\q[89]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => SrcAE(5),
      I1 => SrcAE(13),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \q[89]_i_9_n_0\
    );
\q[90]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => SrcAE(25),
      I1 => SrcBE(2),
      I2 => SrcAE(29),
      I3 => SrcAE(21),
      I4 => SrcBE(3),
      I5 => SrcBE(4),
      O => \q[90]_i_10_n_0\
    );
\q[90]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E2"
    )
        port map (
      I0 => SrcAE(25),
      I1 => SrcBE(4),
      I2 => \^q_reg[110]_0\(0),
      I3 => SrcBE(3),
      O => \q[90]_i_11_n_0\
    );
\q[90]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => SrcAE(29),
      I1 => SrcBE(3),
      I2 => SrcAE(21),
      I3 => \^q_reg[110]_0\(0),
      I4 => SrcBE(4),
      O => \q[90]_i_12_n_0\
    );
\q[90]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \q[90]_i_6_n_0\,
      I1 => \q[91]_i_7_n_0\,
      I2 => \q_reg[142]_0\(4),
      I3 => \^q_reg[32]_0\,
      I4 => \q[91]_i_6_n_0\,
      I5 => \q[90]_i_7_n_0\,
      O => \q_reg[8]_9\
    );
\q[90]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcAE(21),
      I1 => SrcBE(21),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(21),
      O => \q_reg[9]_20\
    );
\q[90]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \^q_reg[33]_11\,
      I1 => \q_reg[70]_0\,
      I2 => \q_reg[99]_0\,
      I3 => SrcAE(21),
      I4 => SrcBE(21),
      I5 => \q_reg[99]_1\,
      O => \q_reg[8]_42\
    );
\q[90]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[90]_i_9_n_0\,
      I1 => \q[94]_i_9_n_0\,
      I2 => SrcBE(1),
      I3 => \q[92]_i_10_n_0\,
      I4 => SrcBE(2),
      I5 => \q[96]_i_10_n_0\,
      O => \q[90]_i_6_n_0\
    );
\q[90]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[92]_i_11_n_0\,
      I1 => SrcBE(1),
      I2 => \q[90]_i_10_n_0\,
      O => \q[90]_i_7_n_0\
    );
\q[90]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \q[92]_i_16_n_0\,
      I1 => SrcBE(1),
      I2 => \q[90]_i_11_n_0\,
      I3 => SrcBE(2),
      I4 => \q[90]_i_12_n_0\,
      O => \^q_reg[33]_11\
    );
\q[90]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => SrcAE(6),
      I1 => SrcAE(14),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \q[90]_i_9_n_0\
    );
\q[91]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => SrcAE(26),
      I1 => SrcBE(2),
      I2 => SrcAE(30),
      I3 => SrcAE(22),
      I4 => SrcBE(3),
      I5 => SrcBE(4),
      O => \q[91]_i_10_n_0\
    );
\q[91]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E2"
    )
        port map (
      I0 => SrcAE(26),
      I1 => SrcBE(4),
      I2 => \^q_reg[110]_0\(0),
      I3 => SrcBE(3),
      O => \q[91]_i_11_n_0\
    );
\q[91]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => SrcAE(30),
      I1 => SrcBE(3),
      I2 => SrcAE(22),
      I3 => \^q_reg[110]_0\(0),
      I4 => SrcBE(4),
      O => \q[91]_i_12_n_0\
    );
\q[91]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \q[91]_i_6_n_0\,
      I1 => \q[92]_i_7_n_0\,
      I2 => \q_reg[142]_0\(4),
      I3 => \^q_reg[32]_0\,
      I4 => \q[92]_i_6_n_0\,
      I5 => \q[91]_i_7_n_0\,
      O => \q_reg[8]_10\
    );
\q[91]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcAE(22),
      I1 => SrcBE(22),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(22),
      O => \q_reg[9]_23\
    );
\q[91]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \^q_reg[33]_12\,
      I1 => \q_reg[70]_0\,
      I2 => \q_reg[99]_0\,
      I3 => SrcAE(22),
      I4 => SrcBE(22),
      I5 => \q_reg[99]_1\,
      O => \q_reg[8]_43\
    );
\q[91]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[91]_i_9_n_0\,
      I1 => \q[95]_i_9_n_0\,
      I2 => SrcBE(1),
      I3 => \q[93]_i_9_n_0\,
      I4 => SrcBE(2),
      I5 => \q[97]_i_9_n_0\,
      O => \q[91]_i_6_n_0\
    );
\q[91]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \q[97]_i_10_n_0\,
      I1 => SrcBE(2),
      I2 => \q[93]_i_10_n_0\,
      I3 => SrcBE(1),
      I4 => \q[91]_i_10_n_0\,
      O => \q[91]_i_7_n_0\
    );
\q[91]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \q[93]_i_11_n_0\,
      I1 => SrcBE(1),
      I2 => \q[91]_i_11_n_0\,
      I3 => SrcBE(2),
      I4 => \q[91]_i_12_n_0\,
      O => \^q_reg[33]_12\
    );
\q[91]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => SrcAE(7),
      I1 => SrcAE(15),
      I2 => SrcBE(3),
      I3 => SrcBE(4),
      O => \q[91]_i_9_n_0\
    );
\q[92]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => SrcAE(8),
      I1 => SrcBE(3),
      I2 => SrcAE(0),
      I3 => SrcBE(4),
      I4 => SrcAE(16),
      O => \q[92]_i_10_n_0\
    );
\q[92]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003030BB88"
    )
        port map (
      I0 => SrcAE(27),
      I1 => SrcBE(2),
      I2 => \^q_reg[110]_0\(0),
      I3 => SrcAE(23),
      I4 => SrcBE(3),
      I5 => SrcBE(4),
      O => \q[92]_i_11_n_0\
    );
\q[92]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(23),
      I1 => SrcBE(23),
      I2 => \q_reg[142]_0\(4),
      O => \q[92]_i_12_n_0\
    );
\q[92]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(22),
      I1 => SrcBE(22),
      I2 => \q_reg[142]_0\(4),
      O => \q[92]_i_13_n_0\
    );
\q[92]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(21),
      I1 => SrcBE(21),
      I2 => \q_reg[142]_0\(4),
      O => \q[92]_i_14_n_0\
    );
\q[92]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(20),
      I1 => SrcBE(20),
      I2 => \q_reg[142]_0\(4),
      O => \q[92]_i_15_n_0\
    );
\q[92]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFB800B8"
    )
        port map (
      I0 => SrcAE(27),
      I1 => SrcBE(2),
      I2 => SrcAE(23),
      I3 => SrcBE(4),
      I4 => \^q_reg[110]_0\(0),
      I5 => SrcBE(3),
      O => \q[92]_i_16_n_0\
    );
\q[92]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \q[92]_i_6_n_0\,
      I1 => \q[93]_i_7_n_0\,
      I2 => \q_reg[142]_0\(4),
      I3 => \^q_reg[32]_0\,
      I4 => \q[93]_i_6_n_0\,
      I5 => \q[92]_i_7_n_0\,
      O => \q_reg[8]_0\
    );
\q[92]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcAE(23),
      I1 => SrcBE(23),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(23),
      O => \q_reg[9]_16\
    );
\q[92]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \^q_reg[33]_13\,
      I1 => \q_reg[70]_0\,
      I2 => \q_reg[99]_0\,
      I3 => SrcAE(23),
      I4 => SrcBE(23),
      I5 => \q_reg[99]_1\,
      O => \q_reg[8]_44\
    );
\q[92]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[92]_i_10_n_0\,
      I1 => \q[96]_i_10_n_0\,
      I2 => SrcBE(1),
      I3 => \q[94]_i_9_n_0\,
      I4 => SrcBE(2),
      I5 => \q[98]_i_11_n_0\,
      O => \q[92]_i_6_n_0\
    );
\q[92]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \q[98]_i_17_n_0\,
      I1 => SrcBE(2),
      I2 => \q[94]_i_10_n_0\,
      I3 => SrcBE(1),
      I4 => \q[92]_i_11_n_0\,
      O => \q[92]_i_7_n_0\
    );
\q[92]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[94]_i_11_n_0\,
      I1 => SrcBE(1),
      I2 => \q[92]_i_16_n_0\,
      O => \^q_reg[33]_13\
    );
\q[93]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => SrcBE(4),
      I1 => SrcBE(3),
      I2 => SrcAE(24),
      O => \q[93]_i_10_n_0\
    );
\q[93]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFB800B8"
    )
        port map (
      I0 => SrcAE(28),
      I1 => SrcBE(2),
      I2 => SrcAE(24),
      I3 => SrcBE(4),
      I4 => \^q_reg[110]_0\(0),
      I5 => SrcBE(3),
      O => \q[93]_i_11_n_0\
    );
\q[93]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \q[93]_i_6_n_0\,
      I1 => \q[94]_i_7_n_0\,
      I2 => \q_reg[142]_0\(4),
      I3 => \^q_reg[32]_0\,
      I4 => \q[94]_i_6_n_0\,
      I5 => \q[93]_i_7_n_0\,
      O => \q_reg[8]_1\
    );
\q[93]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcAE(24),
      I1 => SrcBE(24),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(24),
      O => \q_reg[9]_24\
    );
\q[93]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \^q_reg[33]_18\,
      I1 => \q_reg[70]_0\,
      I2 => \q_reg[99]_0\,
      I3 => SrcAE(24),
      I4 => SrcBE(24),
      I5 => \q_reg[99]_1\,
      O => \q_reg[8]_49\
    );
\q[93]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[93]_i_9_n_0\,
      I1 => \q[97]_i_9_n_0\,
      I2 => SrcBE(1),
      I3 => \q[95]_i_9_n_0\,
      I4 => SrcBE(2),
      I5 => \q[98]_i_14_n_0\,
      O => \q[93]_i_6_n_0\
    );
\q[93]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[99]_i_12_n_0\,
      I1 => \q[95]_i_10_n_0\,
      I2 => SrcBE(1),
      I3 => \q[97]_i_10_n_0\,
      I4 => SrcBE(2),
      I5 => \q[93]_i_10_n_0\,
      O => \q[93]_i_7_n_0\
    );
\q[93]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[95]_i_11_n_0\,
      I1 => SrcBE(1),
      I2 => \q[93]_i_11_n_0\,
      O => \^q_reg[33]_18\
    );
\q[93]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => SrcAE(9),
      I1 => SrcBE(3),
      I2 => SrcAE(1),
      I3 => SrcBE(4),
      I4 => SrcAE(17),
      O => \q[93]_i_9_n_0\
    );
\q[94]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => SrcBE(4),
      I1 => SrcBE(3),
      I2 => SrcAE(25),
      O => \q[94]_i_10_n_0\
    );
\q[94]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFB800B8"
    )
        port map (
      I0 => SrcAE(29),
      I1 => SrcBE(2),
      I2 => SrcAE(25),
      I3 => SrcBE(4),
      I4 => \^q_reg[110]_0\(0),
      I5 => SrcBE(3),
      O => \q[94]_i_11_n_0\
    );
\q[94]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \q[94]_i_6_n_0\,
      I1 => \q[95]_i_7_n_0\,
      I2 => \q_reg[142]_0\(4),
      I3 => \^q_reg[32]_0\,
      I4 => \q[95]_i_6_n_0\,
      I5 => \q[94]_i_7_n_0\,
      O => \q_reg[8]_2\
    );
\q[94]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcAE(25),
      I1 => SrcBE(25),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(25),
      O => \q_reg[9]_17\
    );
\q[94]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \^q_reg[33]_19\,
      I1 => \q_reg[70]_0\,
      I2 => \q_reg[99]_0\,
      I3 => SrcAE(25),
      I4 => SrcBE(25),
      I5 => \q_reg[99]_1\,
      O => \q_reg[8]_50\
    );
\q[94]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[94]_i_9_n_0\,
      I1 => \q[98]_i_11_n_0\,
      I2 => SrcBE(1),
      I3 => \q[96]_i_10_n_0\,
      I4 => SrcBE(2),
      I5 => \q[98]_i_12_n_0\,
      O => \q[94]_i_6_n_0\
    );
\q[94]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[100]_i_11_n_0\,
      I1 => \q[96]_i_11_n_0\,
      I2 => SrcBE(1),
      I3 => \q[98]_i_17_n_0\,
      I4 => SrcBE(2),
      I5 => \q[94]_i_10_n_0\,
      O => \q[94]_i_7_n_0\
    );
\q[94]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[96]_i_17_n_0\,
      I1 => SrcBE(1),
      I2 => \q[94]_i_11_n_0\,
      O => \^q_reg[33]_19\
    );
\q[94]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => SrcAE(10),
      I1 => SrcBE(3),
      I2 => SrcAE(2),
      I3 => SrcBE(4),
      I4 => SrcAE(18),
      O => \q[94]_i_9_n_0\
    );
\q[95]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => SrcBE(4),
      I1 => SrcBE(3),
      I2 => SrcAE(26),
      O => \q[95]_i_10_n_0\
    );
\q[95]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFB800B8"
    )
        port map (
      I0 => SrcAE(30),
      I1 => SrcBE(2),
      I2 => SrcAE(26),
      I3 => SrcBE(4),
      I4 => \^q_reg[110]_0\(0),
      I5 => SrcBE(3),
      O => \q[95]_i_11_n_0\
    );
\q[95]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^stalld\,
      O => E(0)
    );
\q[95]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \q[95]_i_6_n_0\,
      I1 => \q[96]_i_7_n_0\,
      I2 => \q_reg[142]_0\(4),
      I3 => \^q_reg[32]_0\,
      I4 => \q[96]_i_6_n_0\,
      I5 => \q[95]_i_7_n_0\,
      O => \q_reg[8]_3\
    );
\q[95]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcAE(26),
      I1 => SrcBE(26),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(26),
      O => \q_reg[9]_21\
    );
\q[95]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \^q_reg[33]_20\,
      I1 => \q_reg[70]_0\,
      I2 => \q_reg[99]_0\,
      I3 => SrcAE(26),
      I4 => SrcBE(26),
      I5 => \q_reg[99]_1\,
      O => \q_reg[8]_51\
    );
\q[95]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[95]_i_9_n_0\,
      I1 => \q[98]_i_14_n_0\,
      I2 => SrcBE(1),
      I3 => \q[97]_i_9_n_0\,
      I4 => SrcBE(2),
      I5 => \q[98]_i_15_n_0\,
      O => \q[95]_i_6_n_0\
    );
\q[95]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \q[97]_i_10_n_0\,
      I1 => SrcBE(1),
      I2 => \q[99]_i_12_n_0\,
      I3 => SrcBE(2),
      I4 => \q[95]_i_10_n_0\,
      O => \q[95]_i_7_n_0\
    );
\q[95]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[97]_i_12_n_0\,
      I1 => SrcBE(1),
      I2 => \q[95]_i_11_n_0\,
      O => \^q_reg[33]_20\
    );
\q[95]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => SrcAE(11),
      I1 => SrcBE(3),
      I2 => SrcAE(3),
      I3 => SrcBE(4),
      I4 => SrcAE(19),
      O => \q[95]_i_9_n_0\
    );
\q[96]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => SrcAE(12),
      I1 => SrcBE(3),
      I2 => SrcAE(4),
      I3 => SrcBE(4),
      I4 => SrcAE(20),
      O => \q[96]_i_10_n_0\
    );
\q[96]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => SrcBE(4),
      I1 => SrcBE(3),
      I2 => SrcAE(27),
      O => \q[96]_i_11_n_0\
    );
\q[96]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(27),
      I1 => SrcBE(27),
      I2 => \q_reg[142]_0\(4),
      O => \q[96]_i_12_n_0\
    );
\q[96]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(26),
      I1 => SrcBE(26),
      I2 => \q_reg[142]_0\(4),
      O => \q[96]_i_13_n_0\
    );
\q[96]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(25),
      I1 => SrcBE(25),
      I2 => \q_reg[142]_0\(4),
      O => \q[96]_i_14_n_0\
    );
\q[96]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => SrcAE(24),
      I1 => SrcBE(24),
      I2 => \q_reg[142]_0\(4),
      O => \q[96]_i_15_n_0\
    );
\q[96]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE02"
    )
        port map (
      I0 => SrcAE(29),
      I1 => SrcBE(4),
      I2 => SrcBE(3),
      I3 => \^q_reg[110]_0\(0),
      I4 => SrcBE(2),
      O => \q[96]_i_16_n_0\
    );
\q[96]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE02"
    )
        port map (
      I0 => SrcAE(27),
      I1 => SrcBE(4),
      I2 => SrcBE(3),
      I3 => \^q_reg[110]_0\(0),
      I4 => SrcBE(2),
      O => \q[96]_i_17_n_0\
    );
\q[96]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \q[96]_i_6_n_0\,
      I1 => \q[97]_i_7_n_0\,
      I2 => \q_reg[142]_0\(4),
      I3 => \^q_reg[32]_0\,
      I4 => \q[97]_i_6_n_0\,
      I5 => \q[96]_i_7_n_0\,
      O => \q_reg[8]_4\
    );
\q[96]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcAE(27),
      I1 => SrcBE(27),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(27),
      O => \q_reg[9]_14\
    );
\q[96]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \^q_reg[33]_21\,
      I1 => \q_reg[70]_0\,
      I2 => \q_reg[99]_0\,
      I3 => SrcAE(27),
      I4 => SrcBE(27),
      I5 => \q_reg[99]_1\,
      O => \q_reg[8]_52\
    );
\q[96]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[96]_i_10_n_0\,
      I1 => \q[98]_i_12_n_0\,
      I2 => SrcBE(1),
      I3 => \q[98]_i_11_n_0\,
      I4 => SrcBE(2),
      I5 => \q[100]_i_24_n_0\,
      O => \q[96]_i_6_n_0\
    );
\q[96]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \q[98]_i_17_n_0\,
      I1 => SrcBE(1),
      I2 => \q[100]_i_11_n_0\,
      I3 => SrcBE(2),
      I4 => \q[96]_i_11_n_0\,
      O => \q[96]_i_7_n_0\
    );
\q[96]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[96]_i_16_n_0\,
      I1 => SrcBE(1),
      I2 => \q[96]_i_17_n_0\,
      O => \^q_reg[33]_21\
    );
\q[97]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => SrcBE(4),
      I1 => SrcBE(3),
      I2 => SrcAE(28),
      O => \q[97]_i_10_n_0\
    );
\q[97]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE02"
    )
        port map (
      I0 => SrcAE(30),
      I1 => SrcBE(4),
      I2 => SrcBE(3),
      I3 => \^q_reg[110]_0\(0),
      I4 => SrcBE(2),
      O => \q[97]_i_11_n_0\
    );
\q[97]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE02"
    )
        port map (
      I0 => SrcAE(28),
      I1 => SrcBE(4),
      I2 => SrcBE(3),
      I3 => \^q_reg[110]_0\(0),
      I4 => SrcBE(2),
      O => \q[97]_i_12_n_0\
    );
\q[97]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \q[97]_i_6_n_0\,
      I1 => \q[98]_i_9_n_0\,
      I2 => \q_reg[142]_0\(4),
      I3 => \^q_reg[32]_0\,
      I4 => \q[98]_i_7_n_0\,
      I5 => \q[97]_i_7_n_0\,
      O => \q_reg[8]_5\
    );
\q[97]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcAE(28),
      I1 => SrcBE(28),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(28),
      O => \q_reg[9]_26\
    );
\q[97]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \^q_reg[33]_22\,
      I1 => \q_reg[70]_0\,
      I2 => \q_reg[99]_0\,
      I3 => SrcAE(28),
      I4 => SrcBE(28),
      I5 => \q_reg[99]_1\,
      O => \q_reg[8]_53\
    );
\q[97]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[97]_i_9_n_0\,
      I1 => \q[98]_i_15_n_0\,
      I2 => SrcBE(1),
      I3 => \q[98]_i_14_n_0\,
      I4 => SrcBE(2),
      I5 => \q[100]_i_21_n_0\,
      O => \q[97]_i_6_n_0\
    );
\q[97]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \q[99]_i_12_n_0\,
      I1 => \q[97]_i_10_n_0\,
      I2 => SrcBE(1),
      I3 => SrcBE(2),
      O => \q[97]_i_7_n_0\
    );
\q[97]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \q[97]_i_11_n_0\,
      I1 => SrcBE(1),
      I2 => \q[97]_i_12_n_0\,
      O => \^q_reg[33]_22\
    );
\q[97]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => SrcAE(13),
      I1 => SrcBE(3),
      I2 => SrcAE(5),
      I3 => SrcBE(4),
      I4 => SrcAE(21),
      O => \q[97]_i_9_n_0\
    );
\q[98]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0004"
    )
        port map (
      I0 => SrcBE(1),
      I1 => SrcAE(29),
      I2 => SrcBE(4),
      I3 => SrcBE(3),
      I4 => \^q_reg[110]_0\(0),
      I5 => SrcBE(2),
      O => \^q_reg[33]_23\
    );
\q[98]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => SrcAE(14),
      I1 => SrcBE(3),
      I2 => SrcAE(6),
      I3 => SrcBE(4),
      I4 => SrcAE(22),
      O => \q[98]_i_11_n_0\
    );
\q[98]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => SrcAE(24),
      I1 => SrcAE(8),
      I2 => SrcBE(3),
      I3 => SrcAE(0),
      I4 => SrcBE(4),
      I5 => SrcAE(16),
      O => \q[98]_i_12_n_0\
    );
\q[98]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => SrcAE(28),
      I1 => SrcAE(12),
      I2 => SrcBE(3),
      I3 => SrcAE(4),
      I4 => SrcBE(4),
      I5 => SrcAE(20),
      O => \q[98]_i_13_n_0\
    );
\q[98]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => SrcAE(15),
      I1 => SrcBE(3),
      I2 => SrcAE(7),
      I3 => SrcBE(4),
      I4 => SrcAE(23),
      O => \q[98]_i_14_n_0\
    );
\q[98]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => SrcAE(25),
      I1 => SrcAE(9),
      I2 => SrcBE(3),
      I3 => SrcAE(1),
      I4 => SrcBE(4),
      I5 => SrcAE(17),
      O => \q[98]_i_15_n_0\
    );
\q[98]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => SrcAE(29),
      I1 => SrcAE(13),
      I2 => SrcBE(3),
      I3 => SrcAE(5),
      I4 => SrcBE(4),
      I5 => SrcAE(21),
      O => \q[98]_i_16_n_0\
    );
\q[98]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => SrcBE(4),
      I1 => SrcBE(3),
      I2 => SrcAE(29),
      O => \q[98]_i_17_n_0\
    );
\q[98]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \q[98]_i_7_n_0\,
      I1 => \q[99]_i_7_n_0\,
      I2 => \q_reg[142]_0\(4),
      I3 => \^q_reg[32]_0\,
      I4 => \q[98]_i_8_n_0\,
      I5 => \q[98]_i_9_n_0\,
      O => \q_reg[8]_6\
    );
\q[98]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcAE(29),
      I1 => SrcBE(29),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(29),
      O => \q_reg[9]_19\
    );
\q[98]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \^q_reg[33]_23\,
      I1 => \q_reg[70]_0\,
      I2 => \q_reg[99]_0\,
      I3 => SrcAE(29),
      I4 => SrcBE(29),
      I5 => \q_reg[99]_1\,
      O => \q_reg[8]_54\
    );
\q[98]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[98]_i_11_n_0\,
      I1 => \q[100]_i_24_n_0\,
      I2 => SrcBE(1),
      I3 => \q[98]_i_12_n_0\,
      I4 => SrcBE(2),
      I5 => \q[98]_i_13_n_0\,
      O => \q[98]_i_7_n_0\
    );
\q[98]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q[98]_i_14_n_0\,
      I1 => \q[100]_i_21_n_0\,
      I2 => SrcBE(1),
      I3 => \q[98]_i_15_n_0\,
      I4 => SrcBE(2),
      I5 => \q[98]_i_16_n_0\,
      O => \q[98]_i_8_n_0\
    );
\q[98]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => \q[100]_i_11_n_0\,
      I1 => \q[98]_i_17_n_0\,
      I2 => SrcBE(1),
      I3 => SrcBE(2),
      O => \q[98]_i_9_n_0\
    );
\q[99]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => SrcBE(4),
      I1 => SrcBE(3),
      I2 => SrcAE(30),
      O => \q[99]_i_12_n_0\
    );
\q[99]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFA8A8A8"
    )
        port map (
      I0 => \q_reg[71]_0\,
      I1 => \q[99]_i_2_n_0\,
      I2 => \q[99]_i_3_n_0\,
      I3 => \q_reg[70]_0\,
      I4 => \^q_reg[33]_0\,
      I5 => \q[99]_i_6_n_0\,
      O => \^q_reg[9]_0\(35)
    );
\q[99]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA808080"
    )
        port map (
      I0 => \q_reg[71]_1\,
      I1 => \q[99]_i_7_n_0\,
      I2 => \q_reg[70]_1\,
      I3 => \q[100]_i_13_n_0\,
      I4 => \q[99]_i_8_n_0\,
      I5 => \q[99]_i_9_n_0\,
      O => \q[99]_i_2_n_0\
    );
\q[99]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060FFF00060000"
    )
        port map (
      I0 => SrcAE(30),
      I1 => SrcBE(30),
      I2 => \q_reg[142]_0\(5),
      I3 => \q_reg[142]_0\(4),
      I4 => \q_reg[142]_0\(6),
      I5 => \alu/sum\(30),
      O => \q[99]_i_3_n_0\
    );
\q[99]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFE0004"
    )
        port map (
      I0 => SrcBE(1),
      I1 => SrcAE(30),
      I2 => SrcBE(4),
      I3 => SrcBE(3),
      I4 => \^q_reg[110]_0\(0),
      I5 => SrcBE(2),
      O => \^q_reg[33]_0\
    );
\q[99]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F88888888888"
    )
        port map (
      I0 => \^q_reg[110]_0\(0),
      I1 => \q_reg[71]_2\,
      I2 => \q_reg[99]_0\,
      I3 => SrcAE(30),
      I4 => SrcBE(30),
      I5 => \q_reg[99]_1\,
      O => \q[99]_i_6_n_0\
    );
\q[99]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \q[100]_i_12_n_0\,
      I1 => \q[99]_i_12_n_0\,
      O => \q[99]_i_7_n_0\
    );
\q[99]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q_reg[32]_0\,
      I1 => \q_reg[142]_0\(4),
      O => \q[99]_i_8_n_0\
    );
\q[99]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => \q[100]_i_12_n_0\,
      I1 => \q[100]_i_11_n_0\,
      I2 => \q[70]_i_7_n_0\,
      I3 => \q[98]_i_8_n_0\,
      I4 => \q[100]_i_14_n_0\,
      O => \q[99]_i_9_n_0\
    );
\q_reg[100]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(98),
      Q => PCE(21)
    );
\q_reg[100]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[96]_i_8_n_0\,
      CO(3) => \NLW_q_reg[100]_i_8_CO_UNCONNECTED\(3),
      CO(2) => \q_reg[100]_i_8_n_1\,
      CO(1) => \q_reg[100]_i_8_n_2\,
      CO(0) => \q_reg[100]_i_8_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => SrcAE(30 downto 28),
      O(3) => \^q_reg[109]_0\(0),
      O(2 downto 0) => \alu/sum\(30 downto 28),
      S(3) => \q[100]_i_16_n_0\,
      S(2) => \q[100]_i_17_n_0\,
      S(1) => \q[100]_i_18_n_0\,
      S(0) => \q[100]_i_19_n_0\
    );
\q_reg[101]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(99),
      Q => PCE(22)
    );
\q_reg[102]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(100),
      Q => PCE(23)
    );
\q_reg[103]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(101),
      Q => PCE(24)
    );
\q_reg[104]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(102),
      Q => PCE(25)
    );
\q_reg[105]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(103),
      Q => PCE(26)
    );
\q_reg[106]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(104),
      Q => PCE(27)
    );
\q_reg[107]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(105),
      Q => PCE(28)
    );
\q_reg[108]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(106),
      Q => PCE(29)
    );
\q_reg[109]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(107),
      Q => PCE(30)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(8),
      Q => \^q\(8)
    );
\q_reg[110]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(108),
      Q => PCE(31)
    );
\q_reg[111]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(111),
      Q => RD2E(0)
    );
\q_reg[112]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(112),
      Q => RD2E(1)
    );
\q_reg[113]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(113),
      Q => RD2E(2)
    );
\q_reg[114]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(114),
      Q => RD2E(3)
    );
\q_reg[115]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(115),
      Q => RD2E(4)
    );
\q_reg[116]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(116),
      Q => RD2E(5)
    );
\q_reg[117]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(117),
      Q => RD2E(6)
    );
\q_reg[118]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(118),
      Q => RD2E(7)
    );
\q_reg[119]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(119),
      Q => RD2E(8)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(9),
      Q => \^q\(9)
    );
\q_reg[120]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(120),
      Q => RD2E(9)
    );
\q_reg[121]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(121),
      Q => RD2E(10)
    );
\q_reg[122]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(122),
      Q => RD2E(11)
    );
\q_reg[123]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(123),
      Q => RD2E(12)
    );
\q_reg[124]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(124),
      Q => RD2E(13)
    );
\q_reg[125]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(125),
      Q => RD2E(14)
    );
\q_reg[126]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(126),
      Q => RD2E(15)
    );
\q_reg[127]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(127),
      Q => RD2E(16)
    );
\q_reg[128]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(128),
      Q => RD2E(17)
    );
\q_reg[129]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(129),
      Q => RD2E(18)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(10),
      Q => \^q\(10)
    );
\q_reg[130]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(130),
      Q => RD2E(19)
    );
\q_reg[131]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(131),
      Q => RD2E(20)
    );
\q_reg[132]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(132),
      Q => RD2E(21)
    );
\q_reg[133]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(133),
      Q => RD2E(22)
    );
\q_reg[134]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(134),
      Q => RD2E(23)
    );
\q_reg[135]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(135),
      Q => RD2E(24)
    );
\q_reg[136]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(136),
      Q => RD2E(25)
    );
\q_reg[137]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(137),
      Q => RD2E(26)
    );
\q_reg[138]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(138),
      Q => RD2E(27)
    );
\q_reg[139]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(139),
      Q => RD2E(28)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(11),
      Q => \^q\(11)
    );
\q_reg[140]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(140),
      Q => RD2E(29)
    );
\q_reg[141]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(141),
      Q => RD2E(30)
    );
\q_reg[142]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(142),
      Q => RD2E(31)
    );
\q_reg[143]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(143),
      Q => RD1E(0)
    );
\q_reg[144]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(144),
      Q => RD1E(1)
    );
\q_reg[145]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(145),
      Q => RD1E(2)
    );
\q_reg[146]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(146),
      Q => RD1E(3)
    );
\q_reg[147]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(147),
      Q => RD1E(4)
    );
\q_reg[148]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(148),
      Q => RD1E(5)
    );
\q_reg[149]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(149),
      Q => RD1E(6)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(12),
      Q => \^q\(12)
    );
\q_reg[150]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(150),
      Q => RD1E(7)
    );
\q_reg[151]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(151),
      Q => RD1E(8)
    );
\q_reg[152]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(152),
      Q => RD1E(9)
    );
\q_reg[153]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(153),
      Q => RD1E(10)
    );
\q_reg[154]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(154),
      Q => RD1E(11)
    );
\q_reg[155]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(155),
      Q => RD1E(12)
    );
\q_reg[156]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(156),
      Q => RD1E(13)
    );
\q_reg[157]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(157),
      Q => RD1E(14)
    );
\q_reg[158]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(158),
      Q => RD1E(15)
    );
\q_reg[159]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(159),
      Q => RD1E(16)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(13),
      Q => \^q\(13)
    );
\q_reg[160]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(160),
      Q => RD1E(17)
    );
\q_reg[161]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(161),
      Q => RD1E(18)
    );
\q_reg[162]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(162),
      Q => RD1E(19)
    );
\q_reg[163]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(163),
      Q => RD1E(20)
    );
\q_reg[164]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(164),
      Q => RD1E(21)
    );
\q_reg[165]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(165),
      Q => RD1E(22)
    );
\q_reg[166]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(166),
      Q => RD1E(23)
    );
\q_reg[167]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(167),
      Q => RD1E(24)
    );
\q_reg[168]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(168),
      Q => RD1E(25)
    );
\q_reg[169]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(169),
      Q => RD1E(26)
    );
\q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(14),
      Q => \^q\(14)
    );
\q_reg[170]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(170),
      Q => RD1E(27)
    );
\q_reg[171]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(171),
      Q => RD1E(28)
    );
\q_reg[172]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(172),
      Q => RD1E(29)
    );
\q_reg[173]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(173),
      Q => RD1E(30)
    );
\q_reg[174]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => p_0_in(174),
      Q => RD1E(31)
    );
\q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(15),
      Q => \^q\(15)
    );
\q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(16),
      Q => \^q\(16)
    );
\q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(17),
      Q => \^q\(17)
    );
\q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(18),
      Q => \^q\(18)
    );
\q_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(19),
      Q => \^q\(19)
    );
\q_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(20),
      Q => \^q\(20)
    );
\q_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(21),
      Q => \^q\(21)
    );
\q_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(22),
      Q => \^q\(22)
    );
\q_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(23),
      Q => \^q\(23)
    );
\q_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(24),
      Q => \^q\(24)
    );
\q_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(25),
      Q => \^q\(25)
    );
\q_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(26),
      Q => \^q\(26)
    );
\q_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(27),
      Q => \^q\(27)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(0),
      Q => \^q\(0)
    );
\q_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(28),
      Q => \^q\(28)
    );
\q_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(29),
      Q => \^q\(29)
    );
\q_reg[31]_i_20\: unisim.vcomponents.CARRY4
     port map (
      CI => CarryE,
      CO(3 downto 0) => \NLW_q_reg[31]_i_20_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_q_reg[31]_i_20_O_UNCONNECTED\(3 downto 1),
      O(0) => \q_reg[31]_i_22_0\(0),
      S(3 downto 0) => B"0001"
    );
\q_reg[31]_i_22\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[31]_i_23_n_0\,
      CO(3) => CarryE,
      CO(2) => \q_reg[31]_i_22_n_1\,
      CO(1) => \q_reg[31]_i_22_n_2\,
      CO(0) => \q_reg[31]_i_22_n_3\,
      CYINIT => '0',
      DI(3) => \^q_reg[110]_0\(0),
      DI(2 downto 0) => SrcAE(30 downto 28),
      O(3 downto 0) => \NLW_q_reg[31]_i_22_O_UNCONNECTED\(3 downto 0),
      S(3) => v2,
      S(2) => \q[31]_i_25_n_0\,
      S(1) => \q[31]_i_26_n_0\,
      S(0) => \q[31]_i_27_n_0\
    );
\q_reg[31]_i_23\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[31]_i_28_n_0\,
      CO(3) => \q_reg[31]_i_23_n_0\,
      CO(2) => \q_reg[31]_i_23_n_1\,
      CO(1) => \q_reg[31]_i_23_n_2\,
      CO(0) => \q_reg[31]_i_23_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcAE(27 downto 24),
      O(3 downto 0) => \NLW_q_reg[31]_i_23_O_UNCONNECTED\(3 downto 0),
      S(3) => \q[31]_i_29_n_0\,
      S(2) => \q[31]_i_30_n_0\,
      S(1) => \q[31]_i_31_n_0\,
      S(0) => \q[31]_i_32_n_0\
    );
\q_reg[31]_i_28\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[31]_i_33_n_0\,
      CO(3) => \q_reg[31]_i_28_n_0\,
      CO(2) => \q_reg[31]_i_28_n_1\,
      CO(1) => \q_reg[31]_i_28_n_2\,
      CO(0) => \q_reg[31]_i_28_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcAE(23 downto 20),
      O(3 downto 0) => \NLW_q_reg[31]_i_28_O_UNCONNECTED\(3 downto 0),
      S(3) => \q[31]_i_34_n_0\,
      S(2) => \q[31]_i_35_n_0\,
      S(1) => \q[31]_i_36_n_0\,
      S(0) => \q[31]_i_37_n_0\
    );
\q_reg[31]_i_33\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[31]_i_38_n_0\,
      CO(3) => \q_reg[31]_i_33_n_0\,
      CO(2) => \q_reg[31]_i_33_n_1\,
      CO(1) => \q_reg[31]_i_33_n_2\,
      CO(0) => \q_reg[31]_i_33_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcAE(19 downto 16),
      O(3 downto 0) => \NLW_q_reg[31]_i_33_O_UNCONNECTED\(3 downto 0),
      S(3) => \q[31]_i_39_n_0\,
      S(2) => \q[31]_i_40_n_0\,
      S(1) => \q[31]_i_41_n_0\,
      S(0) => \q[31]_i_42_n_0\
    );
\q_reg[31]_i_38\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[31]_i_43_n_0\,
      CO(3) => \q_reg[31]_i_38_n_0\,
      CO(2) => \q_reg[31]_i_38_n_1\,
      CO(1) => \q_reg[31]_i_38_n_2\,
      CO(0) => \q_reg[31]_i_38_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcAE(15 downto 12),
      O(3 downto 0) => \NLW_q_reg[31]_i_38_O_UNCONNECTED\(3 downto 0),
      S(3) => \q[31]_i_44_n_0\,
      S(2) => \q[31]_i_45_n_0\,
      S(1) => \q[31]_i_46_n_0\,
      S(0) => \q[31]_i_47_n_0\
    );
\q_reg[31]_i_43\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[31]_i_48_n_0\,
      CO(3) => \q_reg[31]_i_43_n_0\,
      CO(2) => \q_reg[31]_i_43_n_1\,
      CO(1) => \q_reg[31]_i_43_n_2\,
      CO(0) => \q_reg[31]_i_43_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcAE(11 downto 8),
      O(3 downto 0) => \NLW_q_reg[31]_i_43_O_UNCONNECTED\(3 downto 0),
      S(3) => \q[31]_i_49_n_0\,
      S(2) => \q[31]_i_50_n_0\,
      S(1) => \q[31]_i_51_n_0\,
      S(0) => \q[31]_i_52_n_0\
    );
\q_reg[31]_i_48\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[31]_i_53_n_0\,
      CO(3) => \q_reg[31]_i_48_n_0\,
      CO(2) => \q_reg[31]_i_48_n_1\,
      CO(1) => \q_reg[31]_i_48_n_2\,
      CO(0) => \q_reg[31]_i_48_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcAE(7 downto 4),
      O(3 downto 0) => \NLW_q_reg[31]_i_48_O_UNCONNECTED\(3 downto 0),
      S(3) => \q[31]_i_54_n_0\,
      S(2) => \q[31]_i_55_n_0\,
      S(1) => \q[31]_i_56_n_0\,
      S(0) => \q[31]_i_57_n_0\
    );
\q_reg[31]_i_53\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \q_reg[31]_i_53_n_0\,
      CO(2) => \q_reg[31]_i_53_n_1\,
      CO(1) => \q_reg[31]_i_53_n_2\,
      CO(0) => \q_reg[31]_i_53_n_3\,
      CYINIT => \q[69]_i_3_0\,
      DI(3 downto 0) => SrcAE(3 downto 0),
      O(3 downto 0) => \NLW_q_reg[31]_i_53_O_UNCONNECTED\(3 downto 0),
      S(3) => \q[31]_i_58_n_0\,
      S(2) => \q[31]_i_59_n_0\,
      S(1) => \q[31]_i_60_n_0\,
      S(0) => \q[31]_i_61_n_0\
    );
\q_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(30),
      Q => \^q\(30)
    );
\q_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(31),
      Q => \^q\(31)
    );
\q_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(32),
      Q => \^q\(32)
    );
\q_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(33),
      Q => \^q\(33)
    );
\q_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(34),
      Q => \^q\(34)
    );
\q_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(35),
      Q => \^q\(35)
    );
\q_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(36),
      Q => \^q\(36)
    );
\q_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(37),
      Q => \^q\(37)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(1),
      Q => \^q\(1)
    );
\q_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(38),
      Q => \^q\(38)
    );
\q_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(39),
      Q => \^q\(39)
    );
\q_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(40),
      Q => \^q\(40)
    );
\q_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(41),
      Q => \^q\(41)
    );
\q_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(42),
      Q => \^q\(42)
    );
\q_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(43),
      Q => \^q\(43)
    );
\q_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(44),
      Q => \^q\(44)
    );
\q_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(45),
      Q => \^q\(45)
    );
\q_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(46),
      Q => \^q\(46)
    );
\q_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(47),
      Q => \^q\(47)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(2),
      Q => \^q\(2)
    );
\q_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(48),
      Q => \^q\(48)
    );
\q_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(49),
      Q => \^q\(49)
    );
\q_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(50),
      Q => \^q\(50)
    );
\q_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(51),
      Q => \^q\(51)
    );
\q_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(52),
      Q => \^q\(52)
    );
\q_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(53),
      Q => \^q\(53)
    );
\q_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(54),
      Q => \^q\(54)
    );
\q_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(55),
      Q => \^q\(55)
    );
\q_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(56),
      Q => \^q\(56)
    );
\q_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(57),
      Q => \^q\(57)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(3),
      Q => \^q\(3)
    );
\q_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(58),
      Q => \^q\(58)
    );
\q_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(59),
      Q => \^q\(59)
    );
\q_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(60),
      Q => \^q\(60)
    );
\q_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(61),
      Q => ImmExtE(31)
    );
\q_reg[64]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(62),
      Q => \^q\(61)
    );
\q_reg[65]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(63),
      Q => \^q\(62)
    );
\q_reg[66]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(64),
      Q => \^q\(63)
    );
\q_reg[67]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(65),
      Q => \^q\(64)
    );
\q_reg[68]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(66),
      Q => \^q\(65)
    );
\q_reg[69]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(67),
      Q => Rs2E(0)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(4),
      Q => \^q\(4)
    );
\q_reg[70]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(68),
      Q => Rs2E(1)
    );
\q_reg[71]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(69),
      Q => \^q\(66)
    );
\q_reg[72]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(70),
      Q => \^q\(67)
    );
\q_reg[72]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \q_reg[72]_i_8_n_0\,
      CO(2) => \q_reg[72]_i_8_n_1\,
      CO(1) => \q_reg[72]_i_8_n_2\,
      CO(0) => \q_reg[72]_i_8_n_3\,
      CYINIT => \q[69]_i_3_0\,
      DI(3 downto 0) => SrcAE(3 downto 0),
      O(3 downto 0) => \alu/sum\(3 downto 0),
      S(3) => \q[72]_i_11_n_0\,
      S(2) => \q[72]_i_12_n_0\,
      S(1) => \q[72]_i_13_n_0\,
      S(0) => \q[72]_i_14_n_0\
    );
\q_reg[73]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(71),
      Q => Rs2E(4)
    );
\q_reg[74]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(72),
      Q => Rs1E(0)
    );
\q_reg[75]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(73),
      Q => Rs1E(1)
    );
\q_reg[76]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(74),
      Q => Rs1E(2)
    );
\q_reg[76]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[72]_i_8_n_0\,
      CO(3) => \q_reg[76]_i_8_n_0\,
      CO(2) => \q_reg[76]_i_8_n_1\,
      CO(1) => \q_reg[76]_i_8_n_2\,
      CO(0) => \q_reg[76]_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcAE(7 downto 4),
      O(3 downto 0) => \alu/sum\(7 downto 4),
      S(3) => \q[76]_i_12_n_0\,
      S(2) => \q[76]_i_13_n_0\,
      S(1) => \q[76]_i_14_n_0\,
      S(0) => \q[76]_i_15_n_0\
    );
\q_reg[77]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(75),
      Q => Rs1E(3)
    );
\q_reg[78]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(76),
      Q => Rs1E(4)
    );
\q_reg[79]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(77),
      Q => \^q\(68)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(5),
      Q => \^q\(5)
    );
\q_reg[80]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(78),
      Q => \^q\(69)
    );
\q_reg[80]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[76]_i_8_n_0\,
      CO(3) => \q_reg[80]_i_8_n_0\,
      CO(2) => \q_reg[80]_i_8_n_1\,
      CO(1) => \q_reg[80]_i_8_n_2\,
      CO(0) => \q_reg[80]_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcAE(11 downto 8),
      O(3 downto 0) => \alu/sum\(11 downto 8),
      S(3) => \q[80]_i_12_n_0\,
      S(2) => \q[80]_i_13_n_0\,
      S(1) => \q[80]_i_14_n_0\,
      S(0) => \q[80]_i_15_n_0\
    );
\q_reg[81]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(79),
      Q => PCE(2)
    );
\q_reg[82]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(80),
      Q => PCE(3)
    );
\q_reg[83]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(81),
      Q => PCE(4)
    );
\q_reg[84]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(82),
      Q => PCE(5)
    );
\q_reg[84]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[80]_i_8_n_0\,
      CO(3) => \q_reg[84]_i_8_n_0\,
      CO(2) => \q_reg[84]_i_8_n_1\,
      CO(1) => \q_reg[84]_i_8_n_2\,
      CO(0) => \q_reg[84]_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcAE(15 downto 12),
      O(3 downto 0) => \alu/sum\(15 downto 12),
      S(3) => \q[84]_i_12_n_0\,
      S(2) => \q[84]_i_13_n_0\,
      S(1) => \q[84]_i_14_n_0\,
      S(0) => \q[84]_i_15_n_0\
    );
\q_reg[85]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(83),
      Q => PCE(6)
    );
\q_reg[86]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(84),
      Q => PCE(7)
    );
\q_reg[87]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(85),
      Q => PCE(8)
    );
\q_reg[88]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(86),
      Q => PCE(9)
    );
\q_reg[88]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[84]_i_8_n_0\,
      CO(3) => \q_reg[88]_i_8_n_0\,
      CO(2) => \q_reg[88]_i_8_n_1\,
      CO(1) => \q_reg[88]_i_8_n_2\,
      CO(0) => \q_reg[88]_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcAE(19 downto 16),
      O(3 downto 0) => \alu/sum\(19 downto 16),
      S(3) => \q[88]_i_13_n_0\,
      S(2) => \q[88]_i_14_n_0\,
      S(1) => \q[88]_i_15_n_0\,
      S(0) => \q[88]_i_16_n_0\
    );
\q_reg[89]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(87),
      Q => PCE(10)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(6),
      Q => \^q\(6)
    );
\q_reg[90]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(88),
      Q => PCE(11)
    );
\q_reg[91]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(89),
      Q => PCE(12)
    );
\q_reg[92]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(90),
      Q => PCE(13)
    );
\q_reg[92]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[88]_i_8_n_0\,
      CO(3) => \q_reg[92]_i_8_n_0\,
      CO(2) => \q_reg[92]_i_8_n_1\,
      CO(1) => \q_reg[92]_i_8_n_2\,
      CO(0) => \q_reg[92]_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcAE(23 downto 20),
      O(3 downto 0) => \alu/sum\(23 downto 20),
      S(3) => \q[92]_i_12_n_0\,
      S(2) => \q[92]_i_13_n_0\,
      S(1) => \q[92]_i_14_n_0\,
      S(0) => \q[92]_i_15_n_0\
    );
\q_reg[93]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(91),
      Q => PCE(14)
    );
\q_reg[94]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(92),
      Q => PCE(15)
    );
\q_reg[95]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(93),
      Q => PCE(16)
    );
\q_reg[96]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(94),
      Q => PCE(17)
    );
\q_reg[96]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \q_reg[92]_i_8_n_0\,
      CO(3) => \q_reg[96]_i_8_n_0\,
      CO(2) => \q_reg[96]_i_8_n_1\,
      CO(1) => \q_reg[96]_i_8_n_2\,
      CO(0) => \q_reg[96]_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => SrcAE(27 downto 24),
      O(3 downto 0) => \alu/sum\(27 downto 24),
      S(3) => \q[96]_i_12_n_0\,
      S(2) => \q[96]_i_13_n_0\,
      S(1) => \q[96]_i_14_n_0\,
      S(0) => \q[96]_i_15_n_0\
    );
\q_reg[97]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(95),
      Q => PCE(18)
    );
\q_reg[98]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(96),
      Q => PCE(19)
    );
\q_reg[99]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(97),
      Q => PCE(20)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => D(7),
      Q => \^q\(7)
    );
\result2_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcBE(14),
      I1 => SrcAE(14),
      I2 => SrcAE(15),
      I3 => SrcBE(15),
      O => \q_reg[46]_0\(3)
    );
\result2_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(14),
      I1 => \result2_carry__0_i_25_n_0\,
      I2 => ResultW(14),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(14)
    );
\result2_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(15),
      I1 => \result2_carry__0_i_26_n_0\,
      I2 => ResultW(15),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(15)
    );
\result2_carry__0_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(45),
      I1 => \q_reg[142]_0\(1),
      I2 => \^q_reg[9]_0\(15),
      O => SrcBE(15)
    );
\result2_carry__0_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(42),
      I1 => \q_reg[142]_0\(1),
      I2 => \^q_reg[9]_0\(12),
      O => SrcBE(12)
    );
\result2_carry__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(12),
      I1 => \result2_carry__0_i_27_n_0\,
      I2 => ResultW(12),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(12)
    );
\result2_carry__0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(13),
      I1 => \result2_carry__0_i_28_n_0\,
      I2 => ResultW(13),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(13)
    );
\result2_carry__0_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(43),
      I1 => \q_reg[142]_0\(1),
      I2 => \^q_reg[9]_0\(13),
      O => SrcBE(13)
    );
\result2_carry__0_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(40),
      I1 => \q_reg[142]_0\(1),
      I2 => \^q_reg[9]_0\(10),
      O => SrcBE(10)
    );
\result2_carry__0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(10),
      I1 => \result2_carry__0_i_29_n_0\,
      I2 => ResultW(10),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(10)
    );
\result2_carry__0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(11),
      I1 => \result2_carry__0_i_30_n_0\,
      I2 => ResultW(11),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(11)
    );
\result2_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcBE(12),
      I1 => SrcAE(12),
      I2 => SrcAE(13),
      I3 => SrcBE(13),
      O => \q_reg[46]_0\(2)
    );
\result2_carry__0_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(41),
      I1 => \q_reg[142]_0\(1),
      I2 => \^q_reg[9]_0\(11),
      O => SrcBE(11)
    );
\result2_carry__0_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(38),
      I1 => \q_reg[142]_0\(1),
      I2 => \^q_reg[9]_0\(8),
      O => SrcBE(8)
    );
\result2_carry__0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(8),
      I1 => \result2_carry__0_i_31_n_0\,
      I2 => ResultW(8),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(8)
    );
\result2_carry__0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(9),
      I1 => \result2_carry__0_i_32_n_0\,
      I2 => ResultW(9),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(9)
    );
\result2_carry__0_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(39),
      I1 => \q_reg[142]_0\(1),
      I2 => \^q_reg[9]_0\(9),
      O => SrcBE(9)
    );
\result2_carry__0_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(19),
      I1 => RD1E(14),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => \result2_carry__0_i_25_n_0\
    );
\result2_carry__0_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(20),
      I1 => RD1E(15),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => \result2_carry__0_i_26_n_0\
    );
\result2_carry__0_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(17),
      I1 => RD1E(12),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => \result2_carry__0_i_27_n_0\
    );
\result2_carry__0_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(18),
      I1 => RD1E(13),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => \result2_carry__0_i_28_n_0\
    );
\result2_carry__0_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(15),
      I1 => RD1E(10),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => \result2_carry__0_i_29_n_0\
    );
\result2_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcBE(10),
      I1 => SrcAE(10),
      I2 => SrcAE(11),
      I3 => SrcBE(11),
      O => \q_reg[46]_0\(1)
    );
\result2_carry__0_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(16),
      I1 => RD1E(11),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => \result2_carry__0_i_30_n_0\
    );
\result2_carry__0_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(13),
      I1 => RD1E(8),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => \result2_carry__0_i_31_n_0\
    );
\result2_carry__0_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(14),
      I1 => RD1E(9),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => \result2_carry__0_i_32_n_0\
    );
\result2_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcBE(8),
      I1 => SrcAE(8),
      I2 => SrcAE(9),
      I3 => SrcBE(9),
      O => \q_reg[46]_0\(0)
    );
\result2_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => SrcAE(15),
      I1 => SrcBE(15),
      I2 => SrcAE(14),
      I3 => SrcBE(14),
      O => \q_reg[94]_0\(3)
    );
\result2_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => SrcAE(12),
      I1 => SrcBE(12),
      I2 => SrcAE(13),
      I3 => SrcBE(13),
      O => \q_reg[94]_0\(2)
    );
\result2_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => SrcAE(10),
      I1 => SrcBE(10),
      I2 => SrcAE(11),
      I3 => SrcBE(11),
      O => \q_reg[94]_0\(1)
    );
\result2_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => SrcAE(8),
      I1 => SrcBE(8),
      I2 => SrcAE(9),
      I3 => SrcBE(9),
      O => \q_reg[94]_0\(0)
    );
\result2_carry__0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(44),
      I1 => \q_reg[142]_0\(1),
      I2 => \^q_reg[9]_0\(14),
      O => SrcBE(14)
    );
\result2_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcBE(22),
      I1 => SrcAE(22),
      I2 => SrcAE(23),
      I3 => SrcBE(23),
      O => \q_reg[54]_0\(3)
    );
\result2_carry__1_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(22),
      I1 => \result2_carry__1_i_25_n_0\,
      I2 => \q_reg[68]_1\(6),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(22)
    );
\result2_carry__1_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(23),
      I1 => \result2_carry__1_i_26_n_0\,
      I2 => \q_reg[68]_1\(7),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(23)
    );
\result2_carry__1_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(53),
      I1 => \q_reg[142]_0\(1),
      I2 => \^q_reg[9]_0\(23),
      O => SrcBE(23)
    );
\result2_carry__1_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(50),
      I1 => \q_reg[142]_0\(1),
      I2 => \^q_reg[9]_0\(20),
      O => SrcBE(20)
    );
\result2_carry__1_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(20),
      I1 => \result2_carry__1_i_27_n_0\,
      I2 => \q_reg[68]_1\(4),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(20)
    );
\result2_carry__1_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(21),
      I1 => \result2_carry__1_i_28_n_0\,
      I2 => \q_reg[68]_1\(5),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(21)
    );
\result2_carry__1_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(51),
      I1 => \q_reg[142]_0\(1),
      I2 => \^q_reg[9]_0\(21),
      O => SrcBE(21)
    );
\result2_carry__1_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(48),
      I1 => \q_reg[142]_0\(1),
      I2 => \^q_reg[9]_0\(18),
      O => SrcBE(18)
    );
\result2_carry__1_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(18),
      I1 => \result2_carry__1_i_29_n_0\,
      I2 => \q_reg[68]_1\(2),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(18)
    );
\result2_carry__1_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(19),
      I1 => \result2_carry__1_i_30_n_0\,
      I2 => \q_reg[68]_1\(3),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(19)
    );
\result2_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcBE(20),
      I1 => SrcAE(20),
      I2 => SrcAE(21),
      I3 => SrcBE(21),
      O => \q_reg[54]_0\(2)
    );
\result2_carry__1_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(49),
      I1 => \q_reg[142]_0\(1),
      I2 => \^q_reg[9]_0\(19),
      O => SrcBE(19)
    );
\result2_carry__1_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(46),
      I1 => \q_reg[142]_0\(1),
      I2 => \^q_reg[9]_0\(16),
      O => SrcBE(16)
    );
\result2_carry__1_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(16),
      I1 => \result2_carry__1_i_31_n_0\,
      I2 => \q_reg[68]_1\(0),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(16)
    );
\result2_carry__1_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(17),
      I1 => \result2_carry__1_i_32_n_0\,
      I2 => \q_reg[68]_1\(1),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(17)
    );
\result2_carry__1_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(47),
      I1 => \q_reg[142]_0\(1),
      I2 => \^q_reg[9]_0\(17),
      O => SrcBE(17)
    );
\result2_carry__1_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(27),
      I1 => RD1E(22),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => \result2_carry__1_i_25_n_0\
    );
\result2_carry__1_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(28),
      I1 => RD1E(23),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => \result2_carry__1_i_26_n_0\
    );
\result2_carry__1_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(25),
      I1 => RD1E(20),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => \result2_carry__1_i_27_n_0\
    );
\result2_carry__1_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(26),
      I1 => RD1E(21),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => \result2_carry__1_i_28_n_0\
    );
\result2_carry__1_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(23),
      I1 => RD1E(18),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => \result2_carry__1_i_29_n_0\
    );
\result2_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcBE(18),
      I1 => SrcAE(18),
      I2 => SrcAE(19),
      I3 => SrcBE(19),
      O => \q_reg[54]_0\(1)
    );
\result2_carry__1_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(24),
      I1 => RD1E(19),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => \result2_carry__1_i_30_n_0\
    );
\result2_carry__1_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(21),
      I1 => RD1E(16),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => \result2_carry__1_i_31_n_0\
    );
\result2_carry__1_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(22),
      I1 => RD1E(17),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => \result2_carry__1_i_32_n_0\
    );
\result2_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcBE(16),
      I1 => SrcAE(16),
      I2 => SrcAE(17),
      I3 => SrcBE(17),
      O => \q_reg[54]_0\(0)
    );
\result2_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => SrcAE(22),
      I1 => SrcBE(22),
      I2 => SrcAE(23),
      I3 => SrcBE(23),
      O => \q_reg[101]_0\(3)
    );
\result2_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => SrcAE(20),
      I1 => SrcBE(20),
      I2 => SrcAE(21),
      I3 => SrcBE(21),
      O => \q_reg[101]_0\(2)
    );
\result2_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => SrcAE(18),
      I1 => SrcBE(18),
      I2 => SrcAE(19),
      I3 => SrcBE(19),
      O => \q_reg[101]_0\(1)
    );
\result2_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => SrcAE(16),
      I1 => SrcBE(16),
      I2 => SrcAE(17),
      I3 => SrcBE(17),
      O => \q_reg[101]_0\(0)
    );
\result2_carry__1_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(52),
      I1 => \q_reg[142]_0\(1),
      I2 => \^q_reg[9]_0\(22),
      O => SrcBE(22)
    );
\result2_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F022F2F2F020202"
    )
        port map (
      I0 => SrcBE(30),
      I1 => SrcAE(30),
      I2 => \^q_reg[110]_0\(0),
      I3 => ImmExtE(31),
      I4 => \q_reg[142]_0\(1),
      I5 => \^q_reg[9]_0\(31),
      O => \q_reg[63]_1\(3)
    );
\result2_carry__2_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(30),
      I1 => \result2_carry__2_i_25_n_0\,
      I2 => \q_reg[68]_1\(14),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(30)
    );
\result2_carry__2_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(31),
      I1 => \result2_carry__2_i_26_n_0\,
      I2 => \q_reg[68]_1\(15),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => \^q_reg[110]_0\(0)
    );
\result2_carry__2_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(58),
      I1 => \q_reg[142]_0\(1),
      I2 => \^q_reg[9]_0\(28),
      O => SrcBE(28)
    );
\result2_carry__2_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(28),
      I1 => \result2_carry__2_i_27_n_0\,
      I2 => \q_reg[68]_1\(12),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(28)
    );
\result2_carry__2_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(29),
      I1 => \result2_carry__2_i_28_n_0\,
      I2 => \q_reg[68]_1\(13),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(29)
    );
\result2_carry__2_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(59),
      I1 => \q_reg[142]_0\(1),
      I2 => \^q_reg[9]_0\(29),
      O => SrcBE(29)
    );
\result2_carry__2_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(56),
      I1 => \q_reg[142]_0\(1),
      I2 => \^q_reg[9]_0\(26),
      O => SrcBE(26)
    );
\result2_carry__2_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(26),
      I1 => \result2_carry__2_i_29_n_0\,
      I2 => \q_reg[68]_1\(10),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(26)
    );
\result2_carry__2_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(27),
      I1 => \result2_carry__2_i_30_n_0\,
      I2 => \q_reg[68]_1\(11),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(27)
    );
\result2_carry__2_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(57),
      I1 => \q_reg[142]_0\(1),
      I2 => \^q_reg[9]_0\(27),
      O => SrcBE(27)
    );
\result2_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcBE(28),
      I1 => SrcAE(28),
      I2 => SrcAE(29),
      I3 => SrcBE(29),
      O => \q_reg[63]_1\(2)
    );
\result2_carry__2_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(54),
      I1 => \q_reg[142]_0\(1),
      I2 => \^q_reg[9]_0\(24),
      O => SrcBE(24)
    );
\result2_carry__2_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(24),
      I1 => \result2_carry__2_i_31_n_0\,
      I2 => \q_reg[68]_1\(8),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(24)
    );
\result2_carry__2_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(25),
      I1 => \result2_carry__2_i_32_n_0\,
      I2 => \q_reg[68]_1\(9),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(25)
    );
\result2_carry__2_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(55),
      I1 => \q_reg[142]_0\(1),
      I2 => \^q_reg[9]_0\(25),
      O => SrcBE(25)
    );
\result2_carry__2_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => ImmExtE(31),
      I1 => \q_reg[142]_0\(1),
      I2 => \^q_reg[9]_0\(31),
      I3 => \^q_reg[110]_0\(0),
      O => \^q_reg[63]_2\
    );
\result2_carry__2_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(35),
      I1 => RD1E(30),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => \result2_carry__2_i_25_n_0\
    );
\result2_carry__2_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(36),
      I1 => RD1E(31),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => \result2_carry__2_i_26_n_0\
    );
\result2_carry__2_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(33),
      I1 => RD1E(28),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => \result2_carry__2_i_27_n_0\
    );
\result2_carry__2_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(34),
      I1 => RD1E(29),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => \result2_carry__2_i_28_n_0\
    );
\result2_carry__2_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(31),
      I1 => RD1E(26),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => \result2_carry__2_i_29_n_0\
    );
\result2_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcBE(26),
      I1 => SrcAE(26),
      I2 => SrcAE(27),
      I3 => SrcBE(27),
      O => \q_reg[63]_1\(1)
    );
\result2_carry__2_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(32),
      I1 => RD1E(27),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => \result2_carry__2_i_30_n_0\
    );
\result2_carry__2_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(29),
      I1 => RD1E(24),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => \result2_carry__2_i_31_n_0\
    );
\result2_carry__2_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(30),
      I1 => RD1E(25),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => \result2_carry__2_i_32_n_0\
    );
\result2_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcBE(24),
      I1 => SrcAE(24),
      I2 => SrcAE(25),
      I3 => SrcBE(25),
      O => \q_reg[63]_1\(0)
    );
\result2_carry__2_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => SrcAE(30),
      I1 => SrcBE(30),
      I2 => \^q_reg[63]_2\,
      O => \q_reg[109]_1\(3)
    );
\result2_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => SrcAE(28),
      I1 => SrcBE(28),
      I2 => SrcAE(29),
      I3 => SrcBE(29),
      O => \q_reg[109]_1\(2)
    );
\result2_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => SrcAE(26),
      I1 => SrcBE(26),
      I2 => SrcAE(27),
      I3 => SrcBE(27),
      O => \q_reg[109]_1\(1)
    );
\result2_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => SrcAE(24),
      I1 => SrcBE(24),
      I2 => SrcAE(25),
      I3 => SrcBE(25),
      O => \q_reg[109]_1\(0)
    );
\result2_carry__2_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(60),
      I1 => \q_reg[142]_0\(1),
      I2 => \^q_reg[9]_0\(30),
      O => SrcBE(30)
    );
result2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcBE(6),
      I1 => SrcAE(6),
      I2 => SrcAE(7),
      I3 => SrcBE(7),
      O => DI(3)
    );
result2_carry_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(6),
      I1 => result2_carry_i_25_n_0,
      I2 => ResultW(6),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(6)
    );
result2_carry_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(7),
      I1 => result2_carry_i_27_n_0,
      I2 => ResultW(7),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(7)
    );
result2_carry_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(37),
      I1 => \q_reg[142]_0\(1),
      I2 => \^q_reg[9]_0\(7),
      O => SrcBE(7)
    );
result2_carry_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => \^q\(34),
      I1 => \q_reg[142]_0\(1),
      I2 => result2_carry_i_28_n_0,
      I3 => ResultW(4),
      I4 => \q[68]_i_4_n_0\,
      O => SrcBE(4)
    );
result2_carry_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(4),
      I1 => result2_carry_i_29_n_0,
      I2 => ResultW(4),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(4)
    );
result2_carry_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(5),
      I1 => result2_carry_i_30_n_0,
      I2 => ResultW(5),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(5)
    );
result2_carry_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(35),
      I1 => \q_reg[142]_0\(1),
      I2 => \^q_reg[9]_0\(5),
      O => SrcBE(5)
    );
result2_carry_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => \^q\(32),
      I1 => \q_reg[142]_0\(1),
      I2 => result2_carry_i_31_n_0,
      I3 => ResultW(2),
      I4 => \q[68]_i_4_n_0\,
      O => SrcBE(2)
    );
result2_carry_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(2),
      I1 => result2_carry_i_32_n_0,
      I2 => ResultW(2),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(2)
    );
result2_carry_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => PCE(3),
      I1 => result2_carry_i_33_n_0,
      I2 => ResultW(3),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(3)
    );
result2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcBE(4),
      I1 => SrcAE(4),
      I2 => SrcAE(5),
      I3 => SrcBE(5),
      O => DI(2)
    );
result2_carry_i_20: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => \^q\(33),
      I1 => \q_reg[142]_0\(1),
      I2 => result2_carry_i_34_n_0,
      I3 => ResultW(3),
      I4 => \q[68]_i_4_n_0\,
      O => SrcBE(3)
    );
result2_carry_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => \^q\(68),
      I1 => result2_carry_i_35_n_0,
      I2 => ResultW(0),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(0)
    );
result2_carry_i_22: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => \^q\(30),
      I1 => \q_reg[142]_0\(1),
      I2 => result2_carry_i_36_n_0,
      I3 => ResultW(0),
      I4 => \q[68]_i_4_n_0\,
      O => \^q_reg[32]_0\
    );
result2_carry_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFCCC"
    )
        port map (
      I0 => \^q\(69),
      I1 => result2_carry_i_37_n_0,
      I2 => ResultW(1),
      I3 => result2_carry_i_26_n_0,
      I4 => \q_reg[142]_0\(3),
      I5 => \q_reg[142]_0\(2),
      O => SrcAE(1)
    );
result2_carry_i_24: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => \^q\(31),
      I1 => \q_reg[142]_0\(1),
      I2 => result2_carry_i_38_n_0,
      I3 => ResultW(1),
      I4 => \q[68]_i_4_n_0\,
      O => SrcBE(1)
    );
result2_carry_i_25: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(11),
      I1 => RD1E(6),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => result2_carry_i_25_n_0
    );
result2_carry_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900000000000"
    )
        port map (
      I0 => Rs1E(1),
      I1 => result2_carry_i_40_0(1),
      I2 => \q_reg[57]_0\(0),
      I3 => result2_carry_i_42_n_0,
      I4 => \hu/ForwardAE11_out\,
      I5 => result2_carry_i_41_n_0,
      O => result2_carry_i_26_n_0
    );
result2_carry_i_27: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(12),
      I1 => RD1E(7),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => result2_carry_i_27_n_0
    );
result2_carry_i_28: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(9),
      I1 => RD2E(4),
      I2 => \hu/ForwardBE10_out\,
      I3 => result2_carry_i_43_n_0,
      I4 => \q[68]_i_7_n_0\,
      O => result2_carry_i_28_n_0
    );
result2_carry_i_29: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(9),
      I1 => RD1E(4),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => result2_carry_i_29_n_0
    );
result2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => SrcBE(2),
      I1 => SrcAE(2),
      I2 => SrcAE(3),
      I3 => SrcBE(3),
      O => DI(1)
    );
result2_carry_i_30: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(10),
      I1 => RD1E(5),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => result2_carry_i_30_n_0
    );
result2_carry_i_31: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(7),
      I1 => RD2E(2),
      I2 => \hu/ForwardBE10_out\,
      I3 => result2_carry_i_43_n_0,
      I4 => \q[68]_i_7_n_0\,
      O => result2_carry_i_31_n_0
    );
result2_carry_i_32: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(7),
      I1 => RD1E(2),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => result2_carry_i_32_n_0
    );
result2_carry_i_33: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(8),
      I1 => RD1E(3),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => result2_carry_i_33_n_0
    );
result2_carry_i_34: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(8),
      I1 => RD2E(3),
      I2 => \hu/ForwardBE10_out\,
      I3 => result2_carry_i_43_n_0,
      I4 => \q[68]_i_7_n_0\,
      O => result2_carry_i_34_n_0
    );
result2_carry_i_35: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(5),
      I1 => RD1E(0),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => result2_carry_i_35_n_0
    );
result2_carry_i_36: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(5),
      I1 => RD2E(0),
      I2 => \hu/ForwardBE10_out\,
      I3 => result2_carry_i_43_n_0,
      I4 => \q[68]_i_7_n_0\,
      O => result2_carry_i_36_n_0
    );
result2_carry_i_37: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(6),
      I1 => RD1E(1),
      I2 => \hu/ForwardAE11_out\,
      I3 => result2_carry_i_40_n_0,
      I4 => result2_carry_i_41_n_0,
      O => result2_carry_i_37_n_0
    );
result2_carry_i_38: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0ACCCCC"
    )
        port map (
      I0 => \q_reg[68]_0\(6),
      I1 => RD2E(1),
      I2 => \hu/ForwardBE10_out\,
      I3 => result2_carry_i_43_n_0,
      I4 => \q[68]_i_7_n_0\,
      O => result2_carry_i_38_n_0
    );
result2_carry_i_39: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000080"
    )
        port map (
      I0 => result2_carry_i_44_n_0,
      I1 => result2_carry_i_45_n_0,
      I2 => \q[100]_i_15_1\(0),
      I3 => \q_reg[68]_0\(1),
      I4 => Rs1E(1),
      O => \hu/ForwardAE11_out\
    );
result2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F04"
    )
        port map (
      I0 => SrcAE(0),
      I1 => \^q_reg[32]_0\,
      I2 => SrcAE(1),
      I3 => SrcBE(1),
      O => DI(0)
    );
result2_carry_i_40: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000080"
    )
        port map (
      I0 => result2_carry_i_46_n_0,
      I1 => result2_carry_i_47_n_0,
      I2 => \q_reg[57]_0\(0),
      I3 => result2_carry_i_40_0(1),
      I4 => Rs1E(1),
      O => result2_carry_i_40_n_0
    );
result2_carry_i_41: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Rs1E(4),
      I1 => Rs1E(0),
      I2 => Rs1E(1),
      I3 => Rs1E(2),
      I4 => Rs1E(3),
      O => result2_carry_i_41_n_0
    );
result2_carry_i_42: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => result2_carry_i_40_0(3),
      I1 => Rs1E(3),
      I2 => result2_carry_i_40_0(2),
      I3 => Rs1E(2),
      I4 => result2_carry_i_46_n_0,
      O => result2_carry_i_42_n_0
    );
result2_carry_i_43: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000080"
    )
        port map (
      I0 => \q[68]_i_10_n_0\,
      I1 => \q[100]_i_15_2\,
      I2 => \q_reg[57]_0\(0),
      I3 => result2_carry_i_40_0(1),
      I4 => Rs2E(1),
      O => result2_carry_i_43_n_0
    );
result2_carry_i_44: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Rs1E(4),
      I1 => \q_reg[68]_0\(4),
      I2 => Rs1E(0),
      I3 => \q_reg[68]_0\(0),
      O => result2_carry_i_44_n_0
    );
result2_carry_i_45: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Rs1E(2),
      I1 => \q_reg[68]_0\(2),
      I2 => Rs1E(3),
      I3 => \q_reg[68]_0\(3),
      O => result2_carry_i_45_n_0
    );
result2_carry_i_46: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Rs1E(4),
      I1 => result2_carry_i_40_0(4),
      I2 => Rs1E(0),
      I3 => result2_carry_i_40_0(0),
      O => result2_carry_i_46_n_0
    );
result2_carry_i_47: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Rs1E(2),
      I1 => result2_carry_i_40_0(2),
      I2 => Rs1E(3),
      I3 => result2_carry_i_40_0(3),
      O => result2_carry_i_47_n_0
    );
result2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => SrcAE(6),
      I1 => SrcBE(6),
      I2 => SrcAE(7),
      I3 => SrcBE(7),
      O => \q_reg[85]_0\(3)
    );
result2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => SrcBE(4),
      I1 => SrcAE(4),
      I2 => SrcAE(5),
      I3 => SrcBE(5),
      O => \q_reg[85]_0\(2)
    );
result2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => SrcBE(3),
      I1 => SrcAE(3),
      I2 => SrcAE(2),
      I3 => SrcBE(2),
      O => \q_reg[85]_0\(1)
    );
result2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => SrcBE(1),
      I1 => SrcAE(1),
      I2 => \^q_reg[32]_0\,
      I3 => SrcAE(0),
      O => \q_reg[85]_0\(0)
    );
result2_carry_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(36),
      I1 => \q_reg[142]_0\(1),
      I2 => \^q_reg[9]_0\(6),
      O => SrcBE(6)
    );
\y_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(37),
      I1 => PCE(7),
      O => \q_reg[39]_0\(3)
    );
\y_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(36),
      I1 => PCE(6),
      O => \q_reg[39]_0\(2)
    );
\y_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(35),
      I1 => PCE(5),
      O => \q_reg[39]_0\(1)
    );
\y_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(34),
      I1 => PCE(4),
      O => \q_reg[39]_0\(0)
    );
\y_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(41),
      I1 => PCE(11),
      O => \q_reg[43]_0\(3)
    );
\y_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(40),
      I1 => PCE(10),
      O => \q_reg[43]_0\(2)
    );
\y_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(39),
      I1 => PCE(9),
      O => \q_reg[43]_0\(1)
    );
\y_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(38),
      I1 => PCE(8),
      O => \q_reg[43]_0\(0)
    );
\y_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(45),
      I1 => PCE(15),
      O => \q_reg[47]_0\(3)
    );
\y_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(44),
      I1 => PCE(14),
      O => \q_reg[47]_0\(2)
    );
\y_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(43),
      I1 => PCE(13),
      O => \q_reg[47]_0\(1)
    );
\y_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(42),
      I1 => PCE(12),
      O => \q_reg[47]_0\(0)
    );
\y_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(49),
      I1 => PCE(19),
      O => \q_reg[51]_0\(3)
    );
\y_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(48),
      I1 => PCE(18),
      O => \q_reg[51]_0\(2)
    );
\y_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(47),
      I1 => PCE(17),
      O => \q_reg[51]_0\(1)
    );
\y_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(46),
      I1 => PCE(16),
      O => \q_reg[51]_0\(0)
    );
\y_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(53),
      I1 => PCE(23),
      O => \q_reg[55]_0\(3)
    );
\y_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(52),
      I1 => PCE(22),
      O => \q_reg[55]_0\(2)
    );
\y_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(51),
      I1 => PCE(21),
      O => \q_reg[55]_0\(1)
    );
\y_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(50),
      I1 => PCE(20),
      O => \q_reg[55]_0\(0)
    );
\y_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(57),
      I1 => PCE(27),
      O => \q_reg[59]_0\(3)
    );
\y_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(56),
      I1 => PCE(26),
      O => \q_reg[59]_0\(2)
    );
\y_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(55),
      I1 => PCE(25),
      O => \q_reg[59]_0\(1)
    );
\y_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(54),
      I1 => PCE(24),
      O => \q_reg[59]_0\(0)
    );
\y_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ImmExtE(31),
      I1 => PCE(31),
      O => \q_reg[63]_0\(3)
    );
\y_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(60),
      I1 => PCE(30),
      O => \q_reg[63]_0\(2)
    );
\y_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(59),
      I1 => PCE(29),
      O => \q_reg[63]_0\(1)
    );
\y_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(58),
      I1 => PCE(28),
      O => \q_reg[63]_0\(0)
    );
y_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(33),
      I1 => PCE(3),
      O => S(3)
    );
y_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(32),
      I1 => PCE(2),
      O => S(2)
    );
y_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(31),
      I1 => \^q\(69),
      O => S(1)
    );
y_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(30),
      I1 => \^q\(68),
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imem is
  port (
    a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rd : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imem;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imem is
  signal \^rd\ : STD_LOGIC_VECTOR ( 31 downto 1 );
begin
  rd(31 downto 27) <= \^rd\(31 downto 27);
  rd(26) <= \^rd\(29);
  rd(25 downto 1) <= \^rd\(25 downto 1);
  rd(0) <= \^rd\(1);
g0_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07FFFFFFFFFFFFFF"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(7),
      O => \^rd\(1)
    );
g0_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07FC000400000C15"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(7),
      O => \^rd\(2)
    );
g0_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000DFFFFC0000"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(7),
      O => \^rd\(11)
    );
g0_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002AE07F2730C01"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(7),
      O => \^rd\(12)
    );
g0_b12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003003006FFE004"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(7),
      O => \^rd\(13)
    );
g0_b13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003C4836FC00405"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(7),
      O => \^rd\(14)
    );
g0_b14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000AB001BFF57326"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(7),
      O => \^rd\(15)
    );
g0_b15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00084003602A8238"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(7),
      O => \^rd\(16)
    );
g0_b16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000B0FF800000000"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(7),
      O => \^rd\(17)
    );
g0_b17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000FF800000405"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(7),
      O => \^rd\(18)
    );
g0_b18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000FF800000004"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(7),
      O => \^rd\(19)
    );
g0_b19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000158238FED97A5"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(7),
      O => \^rd\(20)
    );
g0_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07F4000000000000"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(7),
      O => \^rd\(3)
    );
g0_b20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A7000FD585A5"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(7),
      O => \^rd\(21)
    );
g0_b21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02AF09207E2190A0"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(7),
      O => \^rd\(22)
    );
g0_b22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"019001280E01E0A6"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(7),
      O => \^rd\(23)
    );
g0_b23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007001280003C02A"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(7),
      O => \^rd\(24)
    );
g0_b24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003F0080001A42F"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(7),
      O => \^rd\(25)
    );
g0_b25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000003A02C"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(7),
      O => \^rd\(27)
    );
g0_b26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000080003A425"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(7),
      O => \^rd\(28)
    );
g0_b27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000080003A02A"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(7),
      O => \^rd\(29)
    );
g0_b28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A4003C22A"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(7),
      O => \^rd\(30)
    );
g0_b29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000080000C02C"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(7),
      O => \^rd\(31)
    );
g0_b3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => a(4),
      I1 => a(5),
      I2 => a(6),
      I3 => a(7),
      O => \^rd\(4)
    );
g0_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07FFF92071FC0715"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(7),
      O => \^rd\(5)
    );
g0_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07FFF00000000000"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(7),
      O => \^rd\(6)
    );
g0_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00040392AAAAAAB3"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(7),
      O => \^rd\(7)
    );
g0_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00040CC33333333C"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(7),
      O => \^rd\(8)
    );
g0_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00040EFFC3C3C3C0"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(7),
      O => \^rd\(9)
    );
g0_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000800DFFC03FC00"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(4),
      I3 => a(5),
      I4 => a(6),
      I5 => a(7),
      O => \^rd\(10)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regfile is
  port (
    rd10 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rd20 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[142]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \q_reg[142]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \q_reg[136]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    wd3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regfile;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regfile is
  signal NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED\ : STD_LOGIC;
  signal NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED\ : STD_LOGIC;
  signal NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_0_5 : label is "";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of rf_reg_r1_0_31_0_5 : label is "MLO";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_0_5 : label is 1024;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_0_5 : label is "dp/rf/rf_reg_r1_0_31_0_5";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of rf_reg_r1_0_31_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of rf_reg_r1_0_31_0_5 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of rf_reg_r1_0_31_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of rf_reg_r1_0_31_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of rf_reg_r1_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_12_17 : label is "";
  attribute OPT_MODIFIED of rf_reg_r1_0_31_12_17 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_12_17 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_12_17 : label is "dp/rf/rf_reg_r1_0_31_12_17";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_12_17 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_12_17 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_12_17 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_12_17 : label is 12;
  attribute ram_slice_end of rf_reg_r1_0_31_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_18_23 : label is "";
  attribute OPT_MODIFIED of rf_reg_r1_0_31_18_23 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_18_23 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_18_23 : label is "dp/rf/rf_reg_r1_0_31_18_23";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_18_23 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_18_23 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_18_23 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_18_23 : label is 18;
  attribute ram_slice_end of rf_reg_r1_0_31_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_24_29 : label is "";
  attribute OPT_MODIFIED of rf_reg_r1_0_31_24_29 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_24_29 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_24_29 : label is "dp/rf/rf_reg_r1_0_31_24_29";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_24_29 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_24_29 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_24_29 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_24_29 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_24_29 : label is 24;
  attribute ram_slice_end of rf_reg_r1_0_31_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_30_31 : label is "";
  attribute OPT_MODIFIED of rf_reg_r1_0_31_30_31 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_30_31 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_30_31 : label is "dp/rf/rf_reg_r1_0_31_30_31";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_30_31 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_30_31 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_30_31 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_30_31 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_30_31 : label is 30;
  attribute ram_slice_end of rf_reg_r1_0_31_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of \rf_reg_r1_0_31_30_31__0\ : label is "";
  attribute OPT_MODIFIED of \rf_reg_r1_0_31_30_31__0\ : label is "MLO";
  attribute RTL_RAM_BITS of \rf_reg_r1_0_31_30_31__0\ : label is 1024;
  attribute RTL_RAM_NAME of \rf_reg_r1_0_31_30_31__0\ : label is "dp/rf/rf_reg_r1_0_31_30_31";
  attribute RTL_RAM_TYPE of \rf_reg_r1_0_31_30_31__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \rf_reg_r1_0_31_30_31__0\ : label is 0;
  attribute ram_addr_end of \rf_reg_r1_0_31_30_31__0\ : label is 31;
  attribute ram_offset of \rf_reg_r1_0_31_30_31__0\ : label is 0;
  attribute ram_slice_begin of \rf_reg_r1_0_31_30_31__0\ : label is 30;
  attribute ram_slice_end of \rf_reg_r1_0_31_30_31__0\ : label is 31;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_31_6_11 : label is "";
  attribute OPT_MODIFIED of rf_reg_r1_0_31_6_11 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r1_0_31_6_11 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r1_0_31_6_11 : label is "dp/rf/rf_reg_r1_0_31_6_11";
  attribute RTL_RAM_TYPE of rf_reg_r1_0_31_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r1_0_31_6_11 : label is 0;
  attribute ram_addr_end of rf_reg_r1_0_31_6_11 : label is 31;
  attribute ram_offset of rf_reg_r1_0_31_6_11 : label is 0;
  attribute ram_slice_begin of rf_reg_r1_0_31_6_11 : label is 6;
  attribute ram_slice_end of rf_reg_r1_0_31_6_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_0_5 : label is "";
  attribute OPT_MODIFIED of rf_reg_r2_0_31_0_5 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_0_5 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_0_5 : label is "dp/rf/rf_reg_r2_0_31_0_5";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_0_5 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_0_5 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_0_5 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_0_5 : label is 0;
  attribute ram_slice_end of rf_reg_r2_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_12_17 : label is "";
  attribute OPT_MODIFIED of rf_reg_r2_0_31_12_17 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_12_17 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_12_17 : label is "dp/rf/rf_reg_r2_0_31_12_17";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_12_17 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_12_17 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_12_17 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_12_17 : label is 12;
  attribute ram_slice_end of rf_reg_r2_0_31_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_18_23 : label is "";
  attribute OPT_MODIFIED of rf_reg_r2_0_31_18_23 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_18_23 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_18_23 : label is "dp/rf/rf_reg_r2_0_31_18_23";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_18_23 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_18_23 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_18_23 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_18_23 : label is 18;
  attribute ram_slice_end of rf_reg_r2_0_31_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_24_29 : label is "";
  attribute OPT_MODIFIED of rf_reg_r2_0_31_24_29 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_24_29 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_24_29 : label is "dp/rf/rf_reg_r2_0_31_24_29";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_24_29 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_24_29 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_24_29 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_24_29 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_24_29 : label is 24;
  attribute ram_slice_end of rf_reg_r2_0_31_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_30_31 : label is "";
  attribute OPT_MODIFIED of rf_reg_r2_0_31_30_31 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_30_31 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_30_31 : label is "dp/rf/rf_reg_r2_0_31_30_31";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_30_31 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_30_31 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_30_31 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_30_31 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_30_31 : label is 30;
  attribute ram_slice_end of rf_reg_r2_0_31_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of \rf_reg_r2_0_31_30_31__0\ : label is "";
  attribute OPT_MODIFIED of \rf_reg_r2_0_31_30_31__0\ : label is "MLO";
  attribute RTL_RAM_BITS of \rf_reg_r2_0_31_30_31__0\ : label is 1024;
  attribute RTL_RAM_NAME of \rf_reg_r2_0_31_30_31__0\ : label is "dp/rf/rf_reg_r2_0_31_30_31";
  attribute RTL_RAM_TYPE of \rf_reg_r2_0_31_30_31__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \rf_reg_r2_0_31_30_31__0\ : label is 0;
  attribute ram_addr_end of \rf_reg_r2_0_31_30_31__0\ : label is 31;
  attribute ram_offset of \rf_reg_r2_0_31_30_31__0\ : label is 0;
  attribute ram_slice_begin of \rf_reg_r2_0_31_30_31__0\ : label is 30;
  attribute ram_slice_end of \rf_reg_r2_0_31_30_31__0\ : label is 31;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_31_6_11 : label is "";
  attribute OPT_MODIFIED of rf_reg_r2_0_31_6_11 : label is "MLO";
  attribute RTL_RAM_BITS of rf_reg_r2_0_31_6_11 : label is 1024;
  attribute RTL_RAM_NAME of rf_reg_r2_0_31_6_11 : label is "dp/rf/rf_reg_r2_0_31_6_11";
  attribute RTL_RAM_TYPE of rf_reg_r2_0_31_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of rf_reg_r2_0_31_6_11 : label is 0;
  attribute ram_addr_end of rf_reg_r2_0_31_6_11 : label is 31;
  attribute ram_offset of rf_reg_r2_0_31_6_11 : label is 0;
  attribute ram_slice_begin of rf_reg_r2_0_31_6_11 : label is 6;
  attribute ram_slice_end of rf_reg_r2_0_31_6_11 : label is 11;
begin
rf_reg_r1_0_31_0_5: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[136]\(4 downto 0),
      ADDRB(4 downto 0) => \q_reg[136]\(4 downto 0),
      ADDRC(4 downto 0) => \q_reg[136]\(4 downto 0),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => wd3(1 downto 0),
      DIB(1 downto 0) => wd3(3 downto 2),
      DIC(1 downto 0) => wd3(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(1 downto 0),
      DOB(1 downto 0) => rd10(3 downto 2),
      DOC(1 downto 0) => rd10(5 downto 4),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \q_reg[142]_0\(0)
    );
rf_reg_r1_0_31_12_17: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[136]\(4 downto 0),
      ADDRB(4 downto 0) => \q_reg[136]\(4 downto 0),
      ADDRC(4 downto 0) => \q_reg[136]\(4 downto 0),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => wd3(13 downto 12),
      DIB(1 downto 0) => wd3(15 downto 14),
      DIC(1 downto 0) => \q_reg[142]\(1 downto 0),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(13 downto 12),
      DOB(1 downto 0) => rd10(15 downto 14),
      DOC(1 downto 0) => rd10(17 downto 16),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \q_reg[142]_0\(0)
    );
rf_reg_r1_0_31_18_23: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[136]\(4 downto 0),
      ADDRB(4 downto 0) => \q_reg[136]\(4 downto 0),
      ADDRC(4 downto 0) => \q_reg[136]\(4 downto 0),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => \q_reg[142]\(3 downto 2),
      DIB(1 downto 0) => \q_reg[142]\(5 downto 4),
      DIC(1 downto 0) => \q_reg[142]\(7 downto 6),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(19 downto 18),
      DOB(1 downto 0) => rd10(21 downto 20),
      DOC(1 downto 0) => rd10(23 downto 22),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \q_reg[142]_0\(0)
    );
rf_reg_r1_0_31_24_29: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[136]\(4 downto 0),
      ADDRB(4 downto 0) => \q_reg[136]\(4 downto 0),
      ADDRC(4 downto 0) => \q_reg[136]\(4 downto 0),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => \q_reg[142]\(9 downto 8),
      DIB(1 downto 0) => \q_reg[142]\(11 downto 10),
      DIC(1 downto 0) => \q_reg[142]\(13 downto 12),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(25 downto 24),
      DOB(1 downto 0) => rd10(27 downto 26),
      DOC(1 downto 0) => rd10(29 downto 28),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \q_reg[142]_0\(0)
    );
rf_reg_r1_0_31_30_31: unisim.vcomponents.RAM32X1D
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => \q_reg[142]\(14),
      DPO => rd10(30),
      DPRA0 => \q_reg[136]\(0),
      DPRA1 => \q_reg[136]\(1),
      DPRA2 => \q_reg[136]\(2),
      DPRA3 => \q_reg[136]\(3),
      DPRA4 => \q_reg[136]\(4),
      SPO => NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \q_reg[142]_0\(0)
    );
\rf_reg_r1_0_31_30_31__0\: unisim.vcomponents.RAM32X1D
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => \q_reg[142]\(15),
      DPO => rd10(31),
      DPRA0 => \q_reg[136]\(0),
      DPRA1 => \q_reg[136]\(1),
      DPRA2 => \q_reg[136]\(2),
      DPRA3 => \q_reg[136]\(3),
      DPRA4 => \q_reg[136]\(4),
      SPO => \NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED\,
      WCLK => clk,
      WE => \q_reg[142]_0\(0)
    );
rf_reg_r1_0_31_6_11: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[136]\(4 downto 0),
      ADDRB(4 downto 0) => \q_reg[136]\(4 downto 0),
      ADDRC(4 downto 0) => \q_reg[136]\(4 downto 0),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => wd3(7 downto 6),
      DIB(1 downto 0) => wd3(9 downto 8),
      DIC(1 downto 0) => wd3(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(7 downto 6),
      DOB(1 downto 0) => rd10(9 downto 8),
      DOC(1 downto 0) => rd10(11 downto 10),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \q_reg[142]_0\(0)
    );
rf_reg_r2_0_31_0_5: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[136]\(9 downto 5),
      ADDRB(4 downto 0) => \q_reg[136]\(9 downto 5),
      ADDRC(4 downto 0) => \q_reg[136]\(9 downto 5),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => wd3(1 downto 0),
      DIB(1 downto 0) => wd3(3 downto 2),
      DIC(1 downto 0) => wd3(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(1 downto 0),
      DOB(1 downto 0) => rd20(3 downto 2),
      DOC(1 downto 0) => rd20(5 downto 4),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \q_reg[142]_0\(0)
    );
rf_reg_r2_0_31_12_17: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[136]\(9 downto 5),
      ADDRB(4 downto 0) => \q_reg[136]\(9 downto 5),
      ADDRC(4 downto 0) => \q_reg[136]\(9 downto 5),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => wd3(13 downto 12),
      DIB(1 downto 0) => wd3(15 downto 14),
      DIC(1 downto 0) => \q_reg[142]\(1 downto 0),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(13 downto 12),
      DOB(1 downto 0) => rd20(15 downto 14),
      DOC(1 downto 0) => rd20(17 downto 16),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \q_reg[142]_0\(0)
    );
rf_reg_r2_0_31_18_23: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[136]\(9 downto 5),
      ADDRB(4 downto 0) => \q_reg[136]\(9 downto 5),
      ADDRC(4 downto 0) => \q_reg[136]\(9 downto 5),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => \q_reg[142]\(3 downto 2),
      DIB(1 downto 0) => \q_reg[142]\(5 downto 4),
      DIC(1 downto 0) => \q_reg[142]\(7 downto 6),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(19 downto 18),
      DOB(1 downto 0) => rd20(21 downto 20),
      DOC(1 downto 0) => rd20(23 downto 22),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \q_reg[142]_0\(0)
    );
rf_reg_r2_0_31_24_29: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[136]\(9 downto 5),
      ADDRB(4 downto 0) => \q_reg[136]\(9 downto 5),
      ADDRC(4 downto 0) => \q_reg[136]\(9 downto 5),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => \q_reg[142]\(9 downto 8),
      DIB(1 downto 0) => \q_reg[142]\(11 downto 10),
      DIC(1 downto 0) => \q_reg[142]\(13 downto 12),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(25 downto 24),
      DOB(1 downto 0) => rd20(27 downto 26),
      DOC(1 downto 0) => rd20(29 downto 28),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \q_reg[142]_0\(0)
    );
rf_reg_r2_0_31_30_31: unisim.vcomponents.RAM32X1D
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => \q_reg[142]\(14),
      DPO => rd20(30),
      DPRA0 => \q_reg[136]\(5),
      DPRA1 => \q_reg[136]\(6),
      DPRA2 => \q_reg[136]\(7),
      DPRA3 => \q_reg[136]\(8),
      DPRA4 => \q_reg[136]\(9),
      SPO => NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED,
      WCLK => clk,
      WE => \q_reg[142]_0\(0)
    );
\rf_reg_r2_0_31_30_31__0\: unisim.vcomponents.RAM32X1D
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A0 => Q(0),
      A1 => Q(1),
      A2 => Q(2),
      A3 => Q(3),
      A4 => Q(4),
      D => \q_reg[142]\(15),
      DPO => rd20(31),
      DPRA0 => \q_reg[136]\(5),
      DPRA1 => \q_reg[136]\(6),
      DPRA2 => \q_reg[136]\(7),
      DPRA3 => \q_reg[136]\(8),
      DPRA4 => \q_reg[136]\(9),
      SPO => \NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED\,
      WCLK => clk,
      WE => \q_reg[142]_0\(0)
    );
rf_reg_r2_0_31_6_11: unisim.vcomponents.RAM32M
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      ADDRA(4 downto 0) => \q_reg[136]\(9 downto 5),
      ADDRB(4 downto 0) => \q_reg[136]\(9 downto 5),
      ADDRC(4 downto 0) => \q_reg[136]\(9 downto 5),
      ADDRD(4 downto 0) => Q(4 downto 0),
      DIA(1 downto 0) => wd3(7 downto 6),
      DIB(1 downto 0) => wd3(9 downto 8),
      DIC(1 downto 0) => wd3(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(7 downto 6),
      DOB(1 downto 0) => rd20(9 downto 8),
      DOC(1 downto 0) => rd20(11 downto 10),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \q_reg[142]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_controller is
  port (
    D : out STD_LOGIC_VECTOR ( 27 downto 0 );
    \q_reg[9]\ : out STD_LOGIC_VECTOR ( 27 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    PCSrcE : out STD_LOGIC;
    \q_reg[2]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[9]_0\ : out STD_LOGIC;
    \q_reg[10]\ : out STD_LOGIC;
    \q_reg[9]_1\ : out STD_LOGIC;
    \q_reg[8]\ : out STD_LOGIC;
    \q_reg[8]_0\ : out STD_LOGIC;
    \q_reg[8]_1\ : out STD_LOGIC;
    ResultW : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \q_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \q_reg[11]\ : out STD_LOGIC;
    \q_reg[9]_2\ : out STD_LOGIC;
    WriteDataM : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \q_reg[7]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \q_reg[2]_0\ : out STD_LOGIC;
    \q_reg[1]\ : out STD_LOGIC;
    \q_reg[8]_2\ : out STD_LOGIC;
    PCPlus4F : in STD_LOGIC_VECTOR ( 27 downto 0 );
    PCTargetEmux : in STD_LOGIC_VECTOR ( 27 downto 0 );
    \q_reg[2]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    InstrF : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \q[31]_i_4\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[92]\ : in STD_LOGIC;
    \q_reg[92]_0\ : in STD_LOGIC;
    \q_reg[92]_1\ : in STD_LOGIC;
    \q_reg[93]\ : in STD_LOGIC;
    \q_reg[93]_0\ : in STD_LOGIC;
    \q_reg[93]_1\ : in STD_LOGIC;
    \q_reg[94]\ : in STD_LOGIC;
    \q_reg[94]_0\ : in STD_LOGIC;
    \q_reg[94]_1\ : in STD_LOGIC;
    \q_reg[95]\ : in STD_LOGIC;
    \q_reg[95]_0\ : in STD_LOGIC;
    \q_reg[95]_1\ : in STD_LOGIC;
    \q_reg[96]\ : in STD_LOGIC;
    \q_reg[96]_0\ : in STD_LOGIC;
    \q_reg[96]_1\ : in STD_LOGIC;
    \q_reg[97]\ : in STD_LOGIC;
    \q_reg[97]_0\ : in STD_LOGIC;
    \q_reg[97]_1\ : in STD_LOGIC;
    \q_reg[98]\ : in STD_LOGIC;
    \q_reg[98]_0\ : in STD_LOGIC;
    \q_reg[98]_1\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[100]\ : in STD_LOGIC;
    \q_reg[76]\ : in STD_LOGIC;
    \q_reg[76]_0\ : in STD_LOGIC;
    \q_reg[76]_1\ : in STD_LOGIC;
    \q_reg[90]\ : in STD_LOGIC;
    \q_reg[90]_0\ : in STD_LOGIC;
    \q_reg[90]_1\ : in STD_LOGIC;
    \q_reg[91]\ : in STD_LOGIC;
    \q_reg[91]_0\ : in STD_LOGIC;
    \q_reg[91]_1\ : in STD_LOGIC;
    \q_reg[89]\ : in STD_LOGIC;
    \q_reg[89]_0\ : in STD_LOGIC;
    \q_reg[89]_1\ : in STD_LOGIC;
    \q_reg[88]\ : in STD_LOGIC;
    \q_reg[88]_0\ : in STD_LOGIC;
    \q_reg[88]_1\ : in STD_LOGIC;
    \q_reg[84]\ : in STD_LOGIC;
    \q_reg[84]_0\ : in STD_LOGIC;
    \q_reg[84]_1\ : in STD_LOGIC;
    \q_reg[85]\ : in STD_LOGIC;
    \q_reg[85]_0\ : in STD_LOGIC;
    \q_reg[85]_1\ : in STD_LOGIC;
    \q_reg[87]\ : in STD_LOGIC;
    \q_reg[87]_0\ : in STD_LOGIC;
    \q_reg[87]_1\ : in STD_LOGIC;
    \q_reg[86]\ : in STD_LOGIC;
    \q_reg[86]_0\ : in STD_LOGIC;
    \q_reg[86]_1\ : in STD_LOGIC;
    \q_reg[80]\ : in STD_LOGIC;
    \q_reg[80]_0\ : in STD_LOGIC;
    \q_reg[80]_1\ : in STD_LOGIC;
    \q_reg[81]\ : in STD_LOGIC;
    \q_reg[81]_0\ : in STD_LOGIC;
    \q_reg[81]_1\ : in STD_LOGIC;
    \q_reg[82]\ : in STD_LOGIC;
    \q_reg[82]_0\ : in STD_LOGIC;
    \q_reg[82]_1\ : in STD_LOGIC;
    \q_reg[83]\ : in STD_LOGIC;
    \q_reg[83]_0\ : in STD_LOGIC;
    \q_reg[83]_1\ : in STD_LOGIC;
    \q_reg[78]\ : in STD_LOGIC;
    \q_reg[78]_0\ : in STD_LOGIC;
    \q_reg[78]_1\ : in STD_LOGIC;
    \q_reg[79]\ : in STD_LOGIC;
    \q_reg[79]_0\ : in STD_LOGIC;
    \q_reg[79]_1\ : in STD_LOGIC;
    \q_reg[77]\ : in STD_LOGIC;
    \q_reg[77]_0\ : in STD_LOGIC;
    \q_reg[77]_1\ : in STD_LOGIC;
    \q_reg[72]\ : in STD_LOGIC;
    \q_reg[72]_0\ : in STD_LOGIC;
    \q_reg[72]_1\ : in STD_LOGIC;
    \q_reg[75]\ : in STD_LOGIC;
    \q_reg[75]_0\ : in STD_LOGIC;
    \q_reg[75]_1\ : in STD_LOGIC;
    \q_reg[75]_2\ : in STD_LOGIC;
    \q_reg[74]\ : in STD_LOGIC;
    \q_reg[74]_0\ : in STD_LOGIC;
    \q_reg[74]_1\ : in STD_LOGIC;
    \q_reg[73]\ : in STD_LOGIC;
    \q_reg[73]_0\ : in STD_LOGIC;
    \q_reg[73]_1\ : in STD_LOGIC;
    \q_reg[73]_2\ : in STD_LOGIC;
    \q_reg[74]_2\ : in STD_LOGIC;
    \q_reg[72]_2\ : in STD_LOGIC;
    SrcBE : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \q_reg[80]_2\ : in STD_LOGIC;
    \q_reg[78]_2\ : in STD_LOGIC;
    \q_reg[82]_2\ : in STD_LOGIC;
    \q_reg[84]_2\ : in STD_LOGIC;
    \q_reg[77]_2\ : in STD_LOGIC;
    \q_reg[81]_2\ : in STD_LOGIC;
    \q_reg[79]_2\ : in STD_LOGIC;
    \q_reg[76]_2\ : in STD_LOGIC;
    \q_reg[83]_2\ : in STD_LOGIC;
    \q_reg[89]_2\ : in STD_LOGIC;
    \q_reg[90]_2\ : in STD_LOGIC;
    \q_reg[91]_2\ : in STD_LOGIC;
    \q_reg[92]_2\ : in STD_LOGIC;
    \q_reg[87]_2\ : in STD_LOGIC;
    \q_reg[88]_2\ : in STD_LOGIC;
    \q_reg[85]_2\ : in STD_LOGIC;
    \q_reg[86]_2\ : in STD_LOGIC;
    \q_reg[93]_2\ : in STD_LOGIC;
    \q_reg[94]_2\ : in STD_LOGIC;
    \q_reg[95]_2\ : in STD_LOGIC;
    \q_reg[96]_2\ : in STD_LOGIC;
    \q_reg[97]_2\ : in STD_LOGIC;
    \q_reg[98]_2\ : in STD_LOGIC;
    \q_reg[68]\ : in STD_LOGIC_VECTOR ( 47 downto 0 );
    SrcAE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[100]_0\ : in STD_LOGIC;
    \q_reg[100]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rf_reg_r1_0_31_24_29_i_3 : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \writeDataM[16]\ : in STD_LOGIC_VECTOR ( 24 downto 0 );
    \writeDataM[8]\ : in STD_LOGIC;
    ReadDataM : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \writeDataM[9]\ : in STD_LOGIC;
    \writeDataM[10]\ : in STD_LOGIC;
    \writeDataM[11]\ : in STD_LOGIC;
    \writeDataM[12]\ : in STD_LOGIC;
    \writeDataM[13]\ : in STD_LOGIC;
    \writeDataM[14]\ : in STD_LOGIC;
    \writeDataM[15]\ : in STD_LOGIC;
    \writeDataM[31]\ : in STD_LOGIC;
    \writeDataM[30]\ : in STD_LOGIC;
    \writeDataM[29]\ : in STD_LOGIC;
    \writeDataM[28]\ : in STD_LOGIC;
    \writeDataM[27]\ : in STD_LOGIC;
    \writeDataM[26]\ : in STD_LOGIC;
    \writeDataM[25]\ : in STD_LOGIC;
    \writeDataM[24]\ : in STD_LOGIC;
    \writeDataM[23]\ : in STD_LOGIC;
    \writeDataM[22]\ : in STD_LOGIC;
    \writeDataM[21]\ : in STD_LOGIC;
    \writeDataM[20]\ : in STD_LOGIC;
    \writeDataM[19]\ : in STD_LOGIC;
    \writeDataM[18]\ : in STD_LOGIC;
    \writeDataM[17]\ : in STD_LOGIC;
    \writeDataM[16]_0\ : in STD_LOGIC;
    \q_reg[17]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_controller is
  signal JumpE : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal controlregE_n_56 : STD_LOGIC;
  signal controlregE_n_58 : STD_LOGIC;
  signal controlregE_n_67 : STD_LOGIC;
  signal controlregE_n_68 : STD_LOGIC;
  signal controlregE_n_69 : STD_LOGIC;
  signal controlregE_n_71 : STD_LOGIC;
  signal controlregM_n_25 : STD_LOGIC;
  signal controlregM_n_26 : STD_LOGIC;
  signal \^q_reg[7]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
  \q_reg[7]\(5 downto 0) <= \^q_reg[7]\(5 downto 0);
controlregE: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_floprc
     port map (
      D(27 downto 0) => D(27 downto 0),
      InstrF(30 downto 0) => InstrF(30 downto 0),
      O(0) => O(0),
      PCPlus4F(27 downto 0) => PCPlus4F(27 downto 0),
      PCTargetEmux(27 downto 0) => PCTargetEmux(27 downto 0),
      Q(15) => controlregE_n_56,
      Q(14) => \^q\(8),
      Q(13) => controlregE_n_58,
      Q(12) => JumpE,
      Q(11 downto 5) => \^q\(7 downto 1),
      Q(4) => controlregE_n_67,
      Q(3) => controlregE_n_68,
      Q(2) => controlregE_n_69,
      Q(1) => \^q\(0),
      Q(0) => controlregE_n_71,
      SrcAE(0) => SrcAE(0),
      SrcBE(1 downto 0) => SrcBE(1 downto 0),
      clk => clk,
      \q[31]_i_4_0\(3 downto 0) => \q[31]_i_4\(3 downto 0),
      \q_reg[100]\ => \q_reg[100]\,
      \q_reg[100]_0\ => \q_reg[100]_0\,
      \q_reg[100]_1\(0) => \q_reg[100]_1\(0),
      \q_reg[10]_0\ => \q_reg[10]\,
      \q_reg[11]_0\ => \q_reg[11]\,
      \q_reg[13]_0\ => PCSrcE,
      \q_reg[17]_0\(16 downto 0) => \q_reg[17]\(16 downto 0),
      \q_reg[2]_0\(31 downto 0) => \q_reg[2]\(31 downto 0),
      \q_reg[2]_1\(0) => \q_reg[2]_1\(0),
      \q_reg[72]\ => \q_reg[72]\,
      \q_reg[72]_0\ => \q_reg[72]_0\,
      \q_reg[72]_1\ => \q_reg[72]_1\,
      \q_reg[72]_2\ => \q_reg[72]_2\,
      \q_reg[73]\ => \q_reg[73]\,
      \q_reg[73]_0\ => \q_reg[73]_0\,
      \q_reg[73]_1\ => \q_reg[73]_1\,
      \q_reg[73]_2\ => \q_reg[73]_2\,
      \q_reg[74]\ => \q_reg[74]\,
      \q_reg[74]_0\ => \q_reg[74]_0\,
      \q_reg[74]_1\ => \q_reg[74]_1\,
      \q_reg[74]_2\ => \q_reg[74]_2\,
      \q_reg[75]\ => \q_reg[75]\,
      \q_reg[75]_0\ => \q_reg[75]_0\,
      \q_reg[75]_1\ => \q_reg[75]_1\,
      \q_reg[75]_2\ => \q_reg[75]_2\,
      \q_reg[76]\ => \q_reg[76]\,
      \q_reg[76]_0\ => \q_reg[76]_0\,
      \q_reg[76]_1\ => \q_reg[76]_1\,
      \q_reg[76]_2\ => \q_reg[76]_2\,
      \q_reg[77]\ => \q_reg[77]\,
      \q_reg[77]_0\ => \q_reg[77]_0\,
      \q_reg[77]_1\ => \q_reg[77]_1\,
      \q_reg[77]_2\ => \q_reg[77]_2\,
      \q_reg[78]\ => \q_reg[78]\,
      \q_reg[78]_0\ => \q_reg[78]_0\,
      \q_reg[78]_1\ => \q_reg[78]_1\,
      \q_reg[78]_2\ => \q_reg[78]_2\,
      \q_reg[79]\ => \q_reg[79]\,
      \q_reg[79]_0\ => \q_reg[79]_0\,
      \q_reg[79]_1\ => \q_reg[79]_1\,
      \q_reg[79]_2\ => \q_reg[79]_2\,
      \q_reg[80]\ => \q_reg[80]\,
      \q_reg[80]_0\ => \q_reg[80]_0\,
      \q_reg[80]_1\ => \q_reg[80]_1\,
      \q_reg[80]_2\ => \q_reg[80]_2\,
      \q_reg[81]\ => \q_reg[81]\,
      \q_reg[81]_0\ => \q_reg[81]_0\,
      \q_reg[81]_1\ => \q_reg[81]_1\,
      \q_reg[81]_2\ => \q_reg[81]_2\,
      \q_reg[82]\ => \q_reg[82]\,
      \q_reg[82]_0\ => \q_reg[82]_0\,
      \q_reg[82]_1\ => \q_reg[82]_1\,
      \q_reg[82]_2\ => \q_reg[82]_2\,
      \q_reg[83]\ => \q_reg[83]\,
      \q_reg[83]_0\ => \q_reg[83]_0\,
      \q_reg[83]_1\ => \q_reg[83]_1\,
      \q_reg[83]_2\ => \q_reg[83]_2\,
      \q_reg[84]\ => \q_reg[84]\,
      \q_reg[84]_0\ => \q_reg[84]_0\,
      \q_reg[84]_1\ => \q_reg[84]_1\,
      \q_reg[84]_2\ => \q_reg[84]_2\,
      \q_reg[85]\ => \q_reg[85]\,
      \q_reg[85]_0\ => \q_reg[85]_0\,
      \q_reg[85]_1\ => \q_reg[85]_1\,
      \q_reg[85]_2\ => \q_reg[85]_2\,
      \q_reg[86]\ => \q_reg[86]\,
      \q_reg[86]_0\ => \q_reg[86]_0\,
      \q_reg[86]_1\ => \q_reg[86]_1\,
      \q_reg[86]_2\ => \q_reg[86]_2\,
      \q_reg[87]\ => \q_reg[87]\,
      \q_reg[87]_0\ => \q_reg[87]_0\,
      \q_reg[87]_1\ => \q_reg[87]_1\,
      \q_reg[87]_2\ => \q_reg[87]_2\,
      \q_reg[88]\ => \q_reg[88]\,
      \q_reg[88]_0\ => \q_reg[88]_0\,
      \q_reg[88]_1\ => \q_reg[88]_1\,
      \q_reg[88]_2\ => \q_reg[88]_2\,
      \q_reg[89]\ => \q_reg[89]\,
      \q_reg[89]_0\ => \q_reg[89]_0\,
      \q_reg[89]_1\ => \q_reg[89]_1\,
      \q_reg[89]_2\ => \q_reg[89]_2\,
      \q_reg[8]_0\ => \q_reg[8]\,
      \q_reg[8]_1\ => \q_reg[8]_0\,
      \q_reg[8]_2\ => \q_reg[8]_1\,
      \q_reg[8]_3\ => \q_reg[8]_2\,
      \q_reg[90]\ => \q_reg[90]\,
      \q_reg[90]_0\ => \q_reg[90]_0\,
      \q_reg[90]_1\ => \q_reg[90]_1\,
      \q_reg[90]_2\ => \q_reg[90]_2\,
      \q_reg[91]\ => \q_reg[91]\,
      \q_reg[91]_0\ => \q_reg[91]_0\,
      \q_reg[91]_1\ => \q_reg[91]_1\,
      \q_reg[91]_2\ => \q_reg[91]_2\,
      \q_reg[92]\ => \q_reg[92]\,
      \q_reg[92]_0\ => \q_reg[92]_0\,
      \q_reg[92]_1\ => \q_reg[92]_1\,
      \q_reg[92]_2\ => \q_reg[92]_2\,
      \q_reg[93]\ => \q_reg[93]\,
      \q_reg[93]_0\ => \q_reg[93]_0\,
      \q_reg[93]_1\ => \q_reg[93]_1\,
      \q_reg[93]_2\ => \q_reg[93]_2\,
      \q_reg[94]\ => \q_reg[94]\,
      \q_reg[94]_0\ => \q_reg[94]_0\,
      \q_reg[94]_1\ => \q_reg[94]_1\,
      \q_reg[94]_2\ => \q_reg[94]_2\,
      \q_reg[95]\ => \q_reg[95]\,
      \q_reg[95]_0\ => \q_reg[95]_0\,
      \q_reg[95]_1\ => \q_reg[95]_1\,
      \q_reg[95]_2\ => \q_reg[95]_2\,
      \q_reg[96]\ => \q_reg[96]\,
      \q_reg[96]_0\ => \q_reg[96]_0\,
      \q_reg[96]_1\ => \q_reg[96]_1\,
      \q_reg[96]_2\ => \q_reg[96]_2\,
      \q_reg[97]\ => \q_reg[97]\,
      \q_reg[97]_0\ => \q_reg[97]_0\,
      \q_reg[97]_1\ => \q_reg[97]_1\,
      \q_reg[97]_2\ => \q_reg[97]_2\,
      \q_reg[98]\ => \q_reg[98]\,
      \q_reg[98]_0\ => \q_reg[98]_0\,
      \q_reg[98]_1\ => \q_reg[98]_1\,
      \q_reg[98]_2\ => \q_reg[98]_2\,
      \q_reg[9]_0\(27 downto 0) => \q_reg[9]\(27 downto 0),
      \q_reg[9]_1\ => \q_reg[9]_0\,
      \q_reg[9]_2\ => \q_reg[9]_1\,
      \q_reg[9]_3\ => \q_reg[9]_2\,
      reset => reset
    );
controlregM: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr
     port map (
      D(7) => controlregE_n_56,
      D(6) => JumpE,
      D(5) => \^q\(8),
      D(4) => controlregE_n_58,
      D(3) => controlregE_n_67,
      D(2) => controlregE_n_68,
      D(1) => controlregE_n_69,
      D(0) => controlregE_n_71,
      Q(7) => \^q_reg[7]\(5),
      Q(6) => controlregM_n_25,
      Q(5) => controlregM_n_26,
      Q(4 downto 0) => \^q_reg[7]\(4 downto 0),
      ReadDataM(23 downto 0) => ReadDataM(23 downto 0),
      WriteDataM(23 downto 0) => WriteDataM(23 downto 0),
      clk => clk,
      \q_reg[1]_0\ => \q_reg[1]\,
      \q_reg[2]_0\ => \q_reg[2]_0\,
      reset => reset,
      \writeDataM[10]\ => \writeDataM[10]\,
      \writeDataM[11]\ => \writeDataM[11]\,
      \writeDataM[12]\ => \writeDataM[12]\,
      \writeDataM[13]\ => \writeDataM[13]\,
      \writeDataM[14]\ => \writeDataM[14]\,
      \writeDataM[15]\ => \writeDataM[15]\,
      \writeDataM[16]\(24 downto 0) => \writeDataM[16]\(24 downto 0),
      \writeDataM[16]_0\ => \writeDataM[16]_0\,
      \writeDataM[17]\ => \writeDataM[17]\,
      \writeDataM[18]\ => \writeDataM[18]\,
      \writeDataM[19]\ => \writeDataM[19]\,
      \writeDataM[20]\ => \writeDataM[20]\,
      \writeDataM[21]\ => \writeDataM[21]\,
      \writeDataM[22]\ => \writeDataM[22]\,
      \writeDataM[23]\ => \writeDataM[23]\,
      \writeDataM[24]\ => \writeDataM[24]\,
      \writeDataM[25]\ => \writeDataM[25]\,
      \writeDataM[26]\ => \writeDataM[26]\,
      \writeDataM[27]\ => \writeDataM[27]\,
      \writeDataM[28]\ => \writeDataM[28]\,
      \writeDataM[29]\ => \writeDataM[29]\,
      \writeDataM[30]\ => \writeDataM[30]\,
      \writeDataM[31]\ => \writeDataM[31]\,
      \writeDataM[8]\ => \writeDataM[8]\,
      \writeDataM[9]\ => \writeDataM[9]\
    );
controlregW: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr__parameterized0\
     port map (
      D(5) => \^q_reg[7]\(5),
      D(4) => controlregM_n_25,
      D(3) => controlregM_n_26,
      D(2 downto 0) => \^q_reg[7]\(3 downto 1),
      Q(5 downto 0) => \q_reg[5]\(5 downto 0),
      ResultW(15 downto 0) => ResultW(15 downto 0),
      clk => clk,
      data0(0) => data0(0),
      \q_reg[68]\(47 downto 0) => \q_reg[68]\(47 downto 0),
      reset => reset,
      rf_reg_r1_0_31_24_29_i_3_0 => rf_reg_r1_0_31_24_29_i_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath is
  port (
    \q_reg[31]\ : out STD_LOGIC_VECTOR ( 27 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[62]\ : out STD_LOGIC_VECTOR ( 27 downto 0 );
    \q_reg[65]\ : out STD_LOGIC_VECTOR ( 16 downto 0 );
    \q_reg[9]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[8]\ : out STD_LOGIC;
    \q_reg[63]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \q_reg[8]_0\ : out STD_LOGIC;
    \q_reg[8]_1\ : out STD_LOGIC;
    \q_reg[8]_2\ : out STD_LOGIC;
    \q_reg[8]_3\ : out STD_LOGIC;
    \q_reg[8]_4\ : out STD_LOGIC;
    \q_reg[8]_5\ : out STD_LOGIC;
    \q_reg[33]\ : out STD_LOGIC;
    \q_reg[110]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[8]_6\ : out STD_LOGIC;
    \q_reg[8]_7\ : out STD_LOGIC;
    \q_reg[33]_0\ : out STD_LOGIC;
    \q_reg[8]_8\ : out STD_LOGIC;
    \q_reg[8]_9\ : out STD_LOGIC;
    \q_reg[8]_10\ : out STD_LOGIC;
    \q_reg[8]_11\ : out STD_LOGIC;
    \q_reg[8]_12\ : out STD_LOGIC;
    \q_reg[8]_13\ : out STD_LOGIC;
    \q_reg[8]_14\ : out STD_LOGIC;
    \q_reg[8]_15\ : out STD_LOGIC;
    \q_reg[8]_16\ : out STD_LOGIC;
    \q_reg[8]_17\ : out STD_LOGIC;
    \q_reg[8]_18\ : out STD_LOGIC;
    \q_reg[8]_19\ : out STD_LOGIC;
    \q_reg[8]_20\ : out STD_LOGIC;
    \q_reg[8]_21\ : out STD_LOGIC;
    \q_reg[8]_22\ : out STD_LOGIC;
    \q_reg[8]_23\ : out STD_LOGIC;
    \q_reg[8]_24\ : out STD_LOGIC;
    \q_reg[8]_25\ : out STD_LOGIC;
    \q_reg[8]_26\ : out STD_LOGIC;
    \q_reg[34]\ : out STD_LOGIC;
    \q_reg[8]_27\ : out STD_LOGIC;
    \q_reg[8]_28\ : out STD_LOGIC;
    \q_reg[8]_29\ : out STD_LOGIC;
    \q_reg[100]\ : out STD_LOGIC_VECTOR ( 55 downto 0 );
    \q_reg[8]_30\ : out STD_LOGIC;
    \q_reg[34]_0\ : out STD_LOGIC;
    \q_reg[8]_31\ : out STD_LOGIC;
    \q_reg[34]_1\ : out STD_LOGIC;
    \q_reg[8]_32\ : out STD_LOGIC;
    \q_reg[33]_1\ : out STD_LOGIC;
    \q_reg[8]_33\ : out STD_LOGIC;
    \q_reg[33]_2\ : out STD_LOGIC;
    \q_reg[8]_34\ : out STD_LOGIC;
    \q_reg[33]_3\ : out STD_LOGIC;
    \q_reg[8]_35\ : out STD_LOGIC;
    \q_reg[33]_4\ : out STD_LOGIC;
    \q_reg[8]_36\ : out STD_LOGIC;
    \q_reg[33]_5\ : out STD_LOGIC;
    \q_reg[8]_37\ : out STD_LOGIC;
    \q_reg[33]_6\ : out STD_LOGIC;
    \q_reg[8]_38\ : out STD_LOGIC;
    \q_reg[33]_7\ : out STD_LOGIC;
    \q_reg[8]_39\ : out STD_LOGIC;
    \q_reg[33]_8\ : out STD_LOGIC;
    \q_reg[8]_40\ : out STD_LOGIC;
    \q_reg[33]_9\ : out STD_LOGIC;
    \q_reg[8]_41\ : out STD_LOGIC;
    \q_reg[33]_10\ : out STD_LOGIC;
    \q_reg[8]_42\ : out STD_LOGIC;
    \q_reg[33]_11\ : out STD_LOGIC;
    \q_reg[8]_43\ : out STD_LOGIC;
    \q_reg[33]_12\ : out STD_LOGIC;
    \q_reg[8]_44\ : out STD_LOGIC;
    \q_reg[33]_13\ : out STD_LOGIC;
    \q_reg[8]_45\ : out STD_LOGIC;
    \q_reg[33]_14\ : out STD_LOGIC;
    \q_reg[8]_46\ : out STD_LOGIC;
    \q_reg[33]_15\ : out STD_LOGIC;
    \q_reg[8]_47\ : out STD_LOGIC;
    \q_reg[33]_16\ : out STD_LOGIC;
    \q_reg[8]_48\ : out STD_LOGIC;
    \q_reg[33]_17\ : out STD_LOGIC;
    \q_reg[8]_49\ : out STD_LOGIC;
    \q_reg[33]_18\ : out STD_LOGIC;
    \q_reg[8]_50\ : out STD_LOGIC;
    \q_reg[33]_19\ : out STD_LOGIC;
    \q_reg[8]_51\ : out STD_LOGIC;
    \q_reg[33]_20\ : out STD_LOGIC;
    \q_reg[8]_52\ : out STD_LOGIC;
    \q_reg[33]_21\ : out STD_LOGIC;
    \q_reg[8]_53\ : out STD_LOGIC;
    \q_reg[33]_22\ : out STD_LOGIC;
    \q_reg[68]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[100]_0\ : out STD_LOGIC_VECTOR ( 47 downto 0 );
    \q_reg[63]_0\ : out STD_LOGIC;
    \q_reg[68]_0\ : out STD_LOGIC;
    WriteDataM : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \q_reg[37]\ : out STD_LOGIC;
    \q_reg[38]\ : out STD_LOGIC;
    \q_reg[39]\ : out STD_LOGIC;
    \q_reg[40]\ : out STD_LOGIC;
    \q_reg[41]\ : out STD_LOGIC;
    \q_reg[42]\ : out STD_LOGIC;
    \q_reg[43]\ : out STD_LOGIC;
    \q_reg[44]\ : out STD_LOGIC;
    \q_reg[1]\ : out STD_LOGIC;
    \q_reg[1]_0\ : out STD_LOGIC;
    \q_reg[1]_1\ : out STD_LOGIC;
    \q_reg[1]_2\ : out STD_LOGIC;
    \q_reg[1]_3\ : out STD_LOGIC;
    \q_reg[1]_4\ : out STD_LOGIC;
    \q_reg[1]_5\ : out STD_LOGIC;
    \q_reg[1]_6\ : out STD_LOGIC;
    \q_reg[45]\ : out STD_LOGIC;
    \q_reg[46]\ : out STD_LOGIC;
    \q_reg[47]\ : out STD_LOGIC;
    \q_reg[48]\ : out STD_LOGIC;
    \q_reg[49]\ : out STD_LOGIC;
    \q_reg[50]\ : out STD_LOGIC;
    \q_reg[51]\ : out STD_LOGIC;
    \q_reg[52]\ : out STD_LOGIC;
    \q_reg[109]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    O : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[9]_0\ : out STD_LOGIC;
    \q_reg[9]_1\ : out STD_LOGIC;
    \q_reg[9]_2\ : out STD_LOGIC;
    \q_reg[9]_3\ : out STD_LOGIC;
    \q_reg[9]_4\ : out STD_LOGIC;
    \q_reg[9]_5\ : out STD_LOGIC;
    \q_reg[9]_6\ : out STD_LOGIC;
    \q_reg[9]_7\ : out STD_LOGIC;
    \q_reg[9]_8\ : out STD_LOGIC;
    \q_reg[9]_9\ : out STD_LOGIC;
    \q_reg[9]_10\ : out STD_LOGIC;
    \q_reg[9]_11\ : out STD_LOGIC;
    \q_reg[9]_12\ : out STD_LOGIC;
    \q_reg[9]_13\ : out STD_LOGIC;
    \q_reg[9]_14\ : out STD_LOGIC;
    \q_reg[9]_15\ : out STD_LOGIC;
    \q_reg[9]_16\ : out STD_LOGIC;
    \q_reg[9]_17\ : out STD_LOGIC;
    \q_reg[9]_18\ : out STD_LOGIC;
    \q_reg[9]_19\ : out STD_LOGIC;
    \q_reg[9]_20\ : out STD_LOGIC;
    \q_reg[9]_21\ : out STD_LOGIC;
    \q_reg[9]_22\ : out STD_LOGIC;
    \q_reg[9]_23\ : out STD_LOGIC;
    \q_reg[9]_24\ : out STD_LOGIC;
    \q_reg[9]_25\ : out STD_LOGIC;
    \q_reg[9]_26\ : out STD_LOGIC;
    \q_reg[68]_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \q_reg[142]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    PCSrcE : in STD_LOGIC;
    PCready : in STD_LOGIC;
    \q_reg[142]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    D : in STD_LOGIC_VECTOR ( 27 downto 0 );
    \q_reg[95]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[71]\ : in STD_LOGIC;
    \q_reg[70]\ : in STD_LOGIC;
    \q_reg[71]_0\ : in STD_LOGIC;
    \q_reg[70]_0\ : in STD_LOGIC;
    \q_reg[99]\ : in STD_LOGIC;
    \q_reg[99]_0\ : in STD_LOGIC;
    \q_reg[71]_1\ : in STD_LOGIC;
    \q[100]_i_15\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ReadDataM : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \writeDataM[31]\ : in STD_LOGIC;
    \writeDataM[31]_0\ : in STD_LOGIC;
    \q[69]_i_3\ : in STD_LOGIC;
    \q_reg[69]\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    \q_reg[100]_1\ : in STD_LOGIC_VECTOR ( 27 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath is
  signal ImmExtE : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal PCE : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PCNextF : STD_LOGIC_VECTOR ( 30 to 30 );
  signal PCPlus4F : STD_LOGIC_VECTOR ( 30 to 30 );
  signal PCTargetEmux : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal RdE : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal RdM : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal RdW : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ResultW : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal Rs1D : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Rs2D : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal Rs2E : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal StallD : STD_LOGIC;
  signal WriteDataE : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data6 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 63 downto 3 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 110 downto 2 );
  signal \^q_reg[100]\ : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \^q_reg[9]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd10 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \rd11__3\ : STD_LOGIC;
  signal rd20 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \rd21__3\ : STD_LOGIC;
  signal regD_n_136 : STD_LOGIC;
  signal regD_n_137 : STD_LOGIC;
  signal regE_n_0 : STD_LOGIC;
  signal regE_n_1 : STD_LOGIC;
  signal regE_n_124 : STD_LOGIC;
  signal regE_n_125 : STD_LOGIC;
  signal regE_n_126 : STD_LOGIC;
  signal regE_n_127 : STD_LOGIC;
  signal regE_n_2 : STD_LOGIC;
  signal regE_n_202 : STD_LOGIC;
  signal regE_n_203 : STD_LOGIC;
  signal regE_n_204 : STD_LOGIC;
  signal regE_n_205 : STD_LOGIC;
  signal regE_n_206 : STD_LOGIC;
  signal regE_n_207 : STD_LOGIC;
  signal regE_n_208 : STD_LOGIC;
  signal regE_n_209 : STD_LOGIC;
  signal regE_n_210 : STD_LOGIC;
  signal regE_n_211 : STD_LOGIC;
  signal regE_n_212 : STD_LOGIC;
  signal regE_n_213 : STD_LOGIC;
  signal regE_n_218 : STD_LOGIC;
  signal regE_n_219 : STD_LOGIC;
  signal regE_n_220 : STD_LOGIC;
  signal regE_n_221 : STD_LOGIC;
  signal regE_n_222 : STD_LOGIC;
  signal regE_n_223 : STD_LOGIC;
  signal regE_n_224 : STD_LOGIC;
  signal regE_n_225 : STD_LOGIC;
  signal regE_n_226 : STD_LOGIC;
  signal regE_n_227 : STD_LOGIC;
  signal regE_n_228 : STD_LOGIC;
  signal regE_n_229 : STD_LOGIC;
  signal regE_n_230 : STD_LOGIC;
  signal regE_n_231 : STD_LOGIC;
  signal regE_n_232 : STD_LOGIC;
  signal regE_n_233 : STD_LOGIC;
  signal regE_n_234 : STD_LOGIC;
  signal regE_n_235 : STD_LOGIC;
  signal regE_n_236 : STD_LOGIC;
  signal regE_n_237 : STD_LOGIC;
  signal regE_n_238 : STD_LOGIC;
  signal regE_n_239 : STD_LOGIC;
  signal regE_n_240 : STD_LOGIC;
  signal regE_n_241 : STD_LOGIC;
  signal regE_n_242 : STD_LOGIC;
  signal regE_n_243 : STD_LOGIC;
  signal regE_n_244 : STD_LOGIC;
  signal regE_n_245 : STD_LOGIC;
  signal regE_n_248 : STD_LOGIC;
  signal regE_n_249 : STD_LOGIC;
  signal regE_n_250 : STD_LOGIC;
  signal regE_n_251 : STD_LOGIC;
  signal regE_n_258 : STD_LOGIC;
  signal regE_n_259 : STD_LOGIC;
  signal regE_n_260 : STD_LOGIC;
  signal regE_n_261 : STD_LOGIC;
  signal regE_n_274 : STD_LOGIC;
  signal regE_n_275 : STD_LOGIC;
  signal regE_n_276 : STD_LOGIC;
  signal regE_n_277 : STD_LOGIC;
  signal regE_n_279 : STD_LOGIC;
  signal regE_n_280 : STD_LOGIC;
  signal regE_n_281 : STD_LOGIC;
  signal regE_n_282 : STD_LOGIC;
  signal regE_n_3 : STD_LOGIC;
  signal regE_n_44 : STD_LOGIC;
  signal regE_n_45 : STD_LOGIC;
  signal regE_n_46 : STD_LOGIC;
  signal regE_n_47 : STD_LOGIC;
  signal regE_n_48 : STD_LOGIC;
  signal regE_n_49 : STD_LOGIC;
  signal regE_n_50 : STD_LOGIC;
  signal regE_n_51 : STD_LOGIC;
  signal regE_n_52 : STD_LOGIC;
  signal regE_n_53 : STD_LOGIC;
  signal regE_n_54 : STD_LOGIC;
  signal regE_n_55 : STD_LOGIC;
  signal regE_n_56 : STD_LOGIC;
  signal regE_n_57 : STD_LOGIC;
  signal regE_n_58 : STD_LOGIC;
  signal regE_n_59 : STD_LOGIC;
  signal regE_n_60 : STD_LOGIC;
  signal regE_n_61 : STD_LOGIC;
  signal regE_n_62 : STD_LOGIC;
  signal regE_n_63 : STD_LOGIC;
  signal regE_n_64 : STD_LOGIC;
  signal regE_n_65 : STD_LOGIC;
  signal regE_n_66 : STD_LOGIC;
  signal regE_n_67 : STD_LOGIC;
  signal regE_n_68 : STD_LOGIC;
  signal regE_n_69 : STD_LOGIC;
  signal regE_n_70 : STD_LOGIC;
  signal regE_n_71 : STD_LOGIC;
  signal regE_n_72 : STD_LOGIC;
  signal regE_n_73 : STD_LOGIC;
  signal regE_n_74 : STD_LOGIC;
  signal regE_n_76 : STD_LOGIC;
  signal regM_n_0 : STD_LOGIC;
  signal regM_n_62 : STD_LOGIC;
  signal regM_n_63 : STD_LOGIC;
  signal regM_n_64 : STD_LOGIC;
  signal regM_n_65 : STD_LOGIC;
  signal regM_n_66 : STD_LOGIC;
  signal regM_n_67 : STD_LOGIC;
  signal regM_n_68 : STD_LOGIC;
  signal regM_n_69 : STD_LOGIC;
  signal regM_n_70 : STD_LOGIC;
  signal regM_n_71 : STD_LOGIC;
  signal regM_n_72 : STD_LOGIC;
  signal regM_n_73 : STD_LOGIC;
  signal regM_n_74 : STD_LOGIC;
  signal regM_n_75 : STD_LOGIC;
  signal regM_n_76 : STD_LOGIC;
  signal regM_n_77 : STD_LOGIC;
  signal regM_n_78 : STD_LOGIC;
  signal regM_n_79 : STD_LOGIC;
  signal regM_n_80 : STD_LOGIC;
  signal regM_n_81 : STD_LOGIC;
  signal regM_n_82 : STD_LOGIC;
  signal regM_n_83 : STD_LOGIC;
  signal regM_n_84 : STD_LOGIC;
  signal regM_n_85 : STD_LOGIC;
  signal regM_n_86 : STD_LOGIC;
  signal regM_n_87 : STD_LOGIC;
  signal regM_n_88 : STD_LOGIC;
  signal regM_n_89 : STD_LOGIC;
  signal regM_n_90 : STD_LOGIC;
  signal regM_n_91 : STD_LOGIC;
  signal regM_n_92 : STD_LOGIC;
  signal regM_n_93 : STD_LOGIC;
  signal regW_n_70 : STD_LOGIC;
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
  \q_reg[100]\(55 downto 0) <= \^q_reg[100]\(55 downto 0);
  \q_reg[9]\(3 downto 0) <= \^q_reg[9]\(3 downto 0);
alu: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu
     port map (
      CO(0) => data6,
      DI(3) => regE_n_124,
      DI(2) => regE_n_125,
      DI(1) => regE_n_126,
      DI(0) => regE_n_127,
      S(3) => regE_n_248,
      S(2) => regE_n_249,
      S(1) => regE_n_250,
      S(0) => regE_n_251,
      \q_reg[69]\(3) => regE_n_206,
      \q_reg[69]\(2) => regE_n_207,
      \q_reg[69]\(1) => regE_n_208,
      \q_reg[69]\(0) => regE_n_209,
      \q_reg[69]_0\(3) => regE_n_274,
      \q_reg[69]_0\(2) => regE_n_275,
      \q_reg[69]_0\(1) => regE_n_276,
      \q_reg[69]_0\(0) => regE_n_277,
      \result2_carry__1_0\(3) => regE_n_202,
      \result2_carry__1_0\(2) => regE_n_203,
      \result2_carry__1_0\(1) => regE_n_204,
      \result2_carry__1_0\(0) => regE_n_205,
      \result2_carry__1_1\(3) => regE_n_258,
      \result2_carry__1_1\(2) => regE_n_259,
      \result2_carry__1_1\(1) => regE_n_260,
      \result2_carry__1_1\(0) => regE_n_261,
      \result2_carry__2_0\(3) => regE_n_210,
      \result2_carry__2_0\(2) => regE_n_211,
      \result2_carry__2_0\(1) => regE_n_212,
      \result2_carry__2_0\(0) => regE_n_213,
      \result2_carry__2_1\(3) => regE_n_279,
      \result2_carry__2_1\(2) => regE_n_280,
      \result2_carry__2_1\(1) => regE_n_281,
      \result2_carry__2_1\(0) => regE_n_282
    );
branchadd: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder
     port map (
      PCTargetEmux(3) => PCTargetEmux(30),
      PCTargetEmux(2 downto 0) => PCTargetEmux(2 downto 0),
      Q(30 downto 0) => ImmExtE(30 downto 0),
      S(3) => regE_n_218,
      S(2) => regE_n_219,
      S(1) => regE_n_220,
      S(0) => regE_n_221,
      \q_reg[11]\(3) => regE_n_226,
      \q_reg[11]\(2) => regE_n_227,
      \q_reg[11]\(1) => regE_n_228,
      \q_reg[11]\(0) => regE_n_229,
      \q_reg[15]\(3) => regE_n_230,
      \q_reg[15]\(2) => regE_n_231,
      \q_reg[15]\(1) => regE_n_232,
      \q_reg[15]\(0) => regE_n_233,
      \q_reg[19]\(3) => regE_n_234,
      \q_reg[19]\(2) => regE_n_235,
      \q_reg[19]\(1) => regE_n_236,
      \q_reg[19]\(0) => regE_n_237,
      \q_reg[23]\(3) => regE_n_238,
      \q_reg[23]\(2) => regE_n_239,
      \q_reg[23]\(1) => regE_n_240,
      \q_reg[23]\(0) => regE_n_241,
      \q_reg[27]\(3) => regE_n_242,
      \q_reg[27]\(2) => regE_n_243,
      \q_reg[27]\(1) => regE_n_244,
      \q_reg[27]\(0) => regE_n_245,
      \q_reg[31]\(3) => regE_n_0,
      \q_reg[31]\(2) => regE_n_1,
      \q_reg[31]\(1) => regE_n_2,
      \q_reg[31]\(0) => regE_n_3,
      \q_reg[62]\(27 downto 0) => \q_reg[62]\(27 downto 0),
      \q_reg[7]\(3) => regE_n_222,
      \q_reg[7]\(2) => regE_n_223,
      \q_reg[7]\(1) => regE_n_224,
      \q_reg[7]\(0) => regE_n_225
    );
pcadd: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0
     port map (
      D(28 downto 0) => p_0_in(31 downto 3),
      O(0) => PCPlus4F(30),
      PCSrcE => PCSrcE,
      Q(29 downto 0) => \^q\(31 downto 2),
      \q_reg[31]\(27 downto 0) => \q_reg[31]\(27 downto 0)
    );
pcreg: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr
     port map (
      D(28) => D(27),
      D(27) => PCNextF(30),
      D(26 downto 0) => D(26 downto 0),
      E(0) => regE_n_76,
      PCSrcE => PCSrcE,
      PCTargetEmux(2 downto 0) => PCTargetEmux(2 downto 0),
      Q(31 downto 0) => \^q\(31 downto 0),
      clk => clk,
      \q_reg[1]_0\(0) => \q_reg[142]_0\(0),
      \q_reg[2]_0\(2 downto 0) => \^q_reg[9]\(2 downto 0),
      \q_reg[31]_0\(31 downto 0) => p_0_in(63 downto 32),
      reset => reset
    );
regD: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenrc
     port map (
      D(108 downto 0) => p_0_in_0(110 downto 2),
      E(0) => regE_n_74,
      PCSrcE => PCSrcE,
      Q(9 downto 5) => Rs2D(4 downto 0),
      Q(4 downto 0) => Rs1D(4 downto 0),
      StallD => StallD,
      clk => clk,
      \q[174]_i_2\(1 downto 0) => RdE(1 downto 0),
      \q_reg[65]_0\(16 downto 0) => \q_reg[65]\(16 downto 0),
      \q_reg[79]_0\ => regD_n_136,
      \q_reg[84]_0\ => regD_n_137,
      \q_reg[95]_0\(92 downto 62) => \q_reg[95]\(31 downto 1),
      \q_reg[95]_0\(61 downto 1) => p_0_in(63 downto 3),
      \q_reg[95]_0\(0) => \q_reg[95]\(0),
      \rd11__3\ => \rd11__3\,
      \rd21__3\ => \rd21__3\,
      reset => reset
    );
regE: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_floprc__parameterized0\
     port map (
      CO(0) => data6,
      D(108 downto 0) => p_0_in_0(110 downto 2),
      DI(3) => regE_n_124,
      DI(2) => regE_n_125,
      DI(1) => regE_n_126,
      DI(0) => regE_n_127,
      E(0) => regE_n_74,
      \FSM_sequential_state_reg[0]\(0) => regE_n_76,
      O(0) => PCPlus4F(30),
      PCSrcE => PCSrcE,
      PCTargetEmux(0) => PCTargetEmux(30),
      PCready => PCready,
      Q(69 downto 68) => PCE(1 downto 0),
      Q(67 downto 66) => Rs2E(3 downto 2),
      Q(65 downto 61) => RdE(4 downto 0),
      Q(60 downto 30) => ImmExtE(30 downto 0),
      Q(29) => regE_n_44,
      Q(28) => regE_n_45,
      Q(27) => regE_n_46,
      Q(26) => regE_n_47,
      Q(25) => regE_n_48,
      Q(24) => regE_n_49,
      Q(23) => regE_n_50,
      Q(22) => regE_n_51,
      Q(21) => regE_n_52,
      Q(20) => regE_n_53,
      Q(19) => regE_n_54,
      Q(18) => regE_n_55,
      Q(17) => regE_n_56,
      Q(16) => regE_n_57,
      Q(15) => regE_n_58,
      Q(14) => regE_n_59,
      Q(13) => regE_n_60,
      Q(12) => regE_n_61,
      Q(11) => regE_n_62,
      Q(10) => regE_n_63,
      Q(9) => regE_n_64,
      Q(8) => regE_n_65,
      Q(7) => regE_n_66,
      Q(6) => regE_n_67,
      Q(5) => regE_n_68,
      Q(4) => regE_n_69,
      Q(3) => regE_n_70,
      Q(2) => regE_n_71,
      Q(1) => regE_n_72,
      Q(0) => regE_n_73,
      ResultW(15 downto 0) => ResultW(15 downto 0),
      S(3) => regE_n_218,
      S(2) => regE_n_219,
      S(1) => regE_n_220,
      S(0) => regE_n_221,
      StallD => StallD,
      clk => clk,
      \q[100]_i_15_0\ => regM_n_0,
      \q[100]_i_15_1\(0) => \q[100]_i_15\(3),
      \q[100]_i_15_2\ => regW_n_70,
      \q[31]_i_3_0\(5 downto 3) => Rs2D(4 downto 2),
      \q[31]_i_3_0\(2 downto 0) => Rs1D(4 downto 2),
      \q[69]_i_3_0\ => \q[69]_i_3\,
      \q_reg[101]_0\(3) => regE_n_279,
      \q_reg[101]_0\(2) => regE_n_280,
      \q_reg[101]_0\(1) => regE_n_281,
      \q_reg[101]_0\(0) => regE_n_282,
      \q_reg[109]_0\(0) => \q_reg[109]\(0),
      \q_reg[109]_1\(3) => regE_n_274,
      \q_reg[109]_1\(2) => regE_n_275,
      \q_reg[109]_1\(1) => regE_n_276,
      \q_reg[109]_1\(0) => regE_n_277,
      \q_reg[110]_0\(0) => \q_reg[110]\(0),
      \q_reg[142]_0\(8 downto 0) => \q_reg[142]_0\(8 downto 0),
      \q_reg[1]\(0) => PCNextF(30),
      \q_reg[31]_i_22_0\(0) => O(0),
      \q_reg[32]_0\ => \q_reg[63]\(0),
      \q_reg[33]_0\ => \q_reg[33]\,
      \q_reg[33]_1\ => \q_reg[33]_0\,
      \q_reg[33]_10\ => \q_reg[33]_9\,
      \q_reg[33]_11\ => \q_reg[33]_10\,
      \q_reg[33]_12\ => \q_reg[33]_11\,
      \q_reg[33]_13\ => \q_reg[33]_12\,
      \q_reg[33]_14\ => \q_reg[33]_13\,
      \q_reg[33]_15\ => \q_reg[33]_14\,
      \q_reg[33]_16\ => \q_reg[33]_15\,
      \q_reg[33]_17\ => \q_reg[33]_16\,
      \q_reg[33]_18\ => \q_reg[33]_17\,
      \q_reg[33]_19\ => \q_reg[33]_18\,
      \q_reg[33]_2\ => \q_reg[33]_1\,
      \q_reg[33]_20\ => \q_reg[33]_19\,
      \q_reg[33]_21\ => \q_reg[33]_20\,
      \q_reg[33]_22\ => \q_reg[33]_21\,
      \q_reg[33]_23\ => \q_reg[33]_22\,
      \q_reg[33]_3\ => \q_reg[33]_2\,
      \q_reg[33]_4\ => \q_reg[33]_3\,
      \q_reg[33]_5\ => \q_reg[33]_4\,
      \q_reg[33]_6\ => \q_reg[33]_5\,
      \q_reg[33]_7\ => \q_reg[33]_6\,
      \q_reg[33]_8\ => \q_reg[33]_7\,
      \q_reg[33]_9\ => \q_reg[33]_8\,
      \q_reg[34]_0\ => \q_reg[34]\,
      \q_reg[34]_1\ => \q_reg[34]_0\,
      \q_reg[34]_2\ => \q_reg[34]_1\,
      \q_reg[39]_0\(3) => regE_n_222,
      \q_reg[39]_0\(2) => regE_n_223,
      \q_reg[39]_0\(1) => regE_n_224,
      \q_reg[39]_0\(0) => regE_n_225,
      \q_reg[43]_0\(3) => regE_n_226,
      \q_reg[43]_0\(2) => regE_n_227,
      \q_reg[43]_0\(1) => regE_n_228,
      \q_reg[43]_0\(0) => regE_n_229,
      \q_reg[46]_0\(3) => regE_n_202,
      \q_reg[46]_0\(2) => regE_n_203,
      \q_reg[46]_0\(1) => regE_n_204,
      \q_reg[46]_0\(0) => regE_n_205,
      \q_reg[47]_0\(3) => regE_n_230,
      \q_reg[47]_0\(2) => regE_n_231,
      \q_reg[47]_0\(1) => regE_n_232,
      \q_reg[47]_0\(0) => regE_n_233,
      \q_reg[51]_0\(3) => regE_n_234,
      \q_reg[51]_0\(2) => regE_n_235,
      \q_reg[51]_0\(1) => regE_n_236,
      \q_reg[51]_0\(0) => regE_n_237,
      \q_reg[54]_0\(3) => regE_n_210,
      \q_reg[54]_0\(2) => regE_n_211,
      \q_reg[54]_0\(1) => regE_n_212,
      \q_reg[54]_0\(0) => regE_n_213,
      \q_reg[55]_0\(3) => regE_n_238,
      \q_reg[55]_0\(2) => regE_n_239,
      \q_reg[55]_0\(1) => regE_n_240,
      \q_reg[55]_0\(0) => regE_n_241,
      \q_reg[57]_0\(0) => \q_reg[142]\(5),
      \q_reg[59]_0\(3) => regE_n_242,
      \q_reg[59]_0\(2) => regE_n_243,
      \q_reg[59]_0\(1) => regE_n_244,
      \q_reg[59]_0\(0) => regE_n_245,
      \q_reg[63]_0\(3) => regE_n_0,
      \q_reg[63]_0\(2) => regE_n_1,
      \q_reg[63]_0\(1) => regE_n_2,
      \q_reg[63]_0\(0) => regE_n_3,
      \q_reg[63]_1\(3) => regE_n_206,
      \q_reg[63]_1\(2) => regE_n_207,
      \q_reg[63]_1\(1) => regE_n_208,
      \q_reg[63]_1\(0) => regE_n_209,
      \q_reg[63]_2\ => \q_reg[63]_0\,
      \q_reg[63]_3\(0) => \q_reg[63]\(1),
      \q_reg[68]_0\(36 downto 5) => \^q_reg[100]\(55 downto 24),
      \q_reg[68]_0\(4 downto 0) => RdM(4 downto 0),
      \q_reg[68]_1\(15 downto 0) => \q_reg[68]_1\(15 downto 0),
      \q_reg[69]_0\ => \q_reg[69]\,
      \q_reg[70]_0\ => \q_reg[70]\,
      \q_reg[70]_1\ => \q_reg[70]_0\,
      \q_reg[71]_0\ => \q_reg[71]\,
      \q_reg[71]_1\ => \q_reg[71]_0\,
      \q_reg[71]_2\ => \q_reg[71]_1\,
      \q_reg[85]_0\(3) => regE_n_248,
      \q_reg[85]_0\(2) => regE_n_249,
      \q_reg[85]_0\(1) => regE_n_250,
      \q_reg[85]_0\(0) => regE_n_251,
      \q_reg[8]_0\ => \q_reg[8]\,
      \q_reg[8]_1\ => \q_reg[8]_0\,
      \q_reg[8]_10\ => \q_reg[8]_9\,
      \q_reg[8]_11\ => \q_reg[8]_10\,
      \q_reg[8]_12\ => \q_reg[8]_11\,
      \q_reg[8]_13\ => \q_reg[8]_12\,
      \q_reg[8]_14\ => \q_reg[8]_13\,
      \q_reg[8]_15\ => \q_reg[8]_14\,
      \q_reg[8]_16\ => \q_reg[8]_15\,
      \q_reg[8]_17\ => \q_reg[8]_16\,
      \q_reg[8]_18\ => \q_reg[8]_17\,
      \q_reg[8]_19\ => \q_reg[8]_18\,
      \q_reg[8]_2\ => \q_reg[8]_1\,
      \q_reg[8]_20\ => \q_reg[8]_19\,
      \q_reg[8]_21\ => \q_reg[8]_20\,
      \q_reg[8]_22\ => \q_reg[8]_21\,
      \q_reg[8]_23\ => \q_reg[8]_22\,
      \q_reg[8]_24\ => \q_reg[8]_23\,
      \q_reg[8]_25\ => \q_reg[8]_24\,
      \q_reg[8]_26\ => \q_reg[8]_25\,
      \q_reg[8]_27\ => \q_reg[8]_26\,
      \q_reg[8]_28\ => \q_reg[8]_27\,
      \q_reg[8]_29\ => \q_reg[8]_28\,
      \q_reg[8]_3\ => \q_reg[8]_2\,
      \q_reg[8]_30\ => \q_reg[8]_29\,
      \q_reg[8]_31\ => \q_reg[8]_30\,
      \q_reg[8]_32\ => \q_reg[8]_31\,
      \q_reg[8]_33\ => \q_reg[8]_32\,
      \q_reg[8]_34\ => \q_reg[8]_33\,
      \q_reg[8]_35\ => \q_reg[8]_34\,
      \q_reg[8]_36\ => \q_reg[8]_35\,
      \q_reg[8]_37\ => \q_reg[8]_36\,
      \q_reg[8]_38\ => \q_reg[8]_37\,
      \q_reg[8]_39\ => \q_reg[8]_38\,
      \q_reg[8]_4\ => \q_reg[8]_3\,
      \q_reg[8]_40\ => \q_reg[8]_39\,
      \q_reg[8]_41\ => \q_reg[8]_40\,
      \q_reg[8]_42\ => \q_reg[8]_41\,
      \q_reg[8]_43\ => \q_reg[8]_42\,
      \q_reg[8]_44\ => \q_reg[8]_43\,
      \q_reg[8]_45\ => \q_reg[8]_44\,
      \q_reg[8]_46\ => \q_reg[8]_45\,
      \q_reg[8]_47\ => \q_reg[8]_46\,
      \q_reg[8]_48\ => \q_reg[8]_47\,
      \q_reg[8]_49\ => \q_reg[8]_48\,
      \q_reg[8]_5\ => \q_reg[8]_4\,
      \q_reg[8]_50\ => \q_reg[8]_49\,
      \q_reg[8]_51\ => \q_reg[8]_50\,
      \q_reg[8]_52\ => \q_reg[8]_51\,
      \q_reg[8]_53\ => \q_reg[8]_52\,
      \q_reg[8]_54\ => \q_reg[8]_53\,
      \q_reg[8]_6\ => \q_reg[8]_5\,
      \q_reg[8]_7\ => \q_reg[8]_6\,
      \q_reg[8]_8\ => \q_reg[8]_7\,
      \q_reg[8]_9\ => \q_reg[8]_8\,
      \q_reg[94]_0\(3) => regE_n_258,
      \q_reg[94]_0\(2) => regE_n_259,
      \q_reg[94]_0\(1) => regE_n_260,
      \q_reg[94]_0\(0) => regE_n_261,
      \q_reg[95]_0\ => regD_n_136,
      \q_reg[95]_1\ => regD_n_137,
      \q_reg[99]_0\ => \q_reg[99]\,
      \q_reg[99]_1\ => \q_reg[99]_0\,
      \q_reg[9]_0\(35 downto 32) => \^q_reg[9]\(3 downto 0),
      \q_reg[9]_0\(31 downto 0) => WriteDataE(31 downto 0),
      \q_reg[9]_1\ => \q_reg[9]_0\,
      \q_reg[9]_10\ => \q_reg[9]_9\,
      \q_reg[9]_11\ => \q_reg[9]_10\,
      \q_reg[9]_12\ => \q_reg[9]_11\,
      \q_reg[9]_13\ => \q_reg[9]_12\,
      \q_reg[9]_14\ => \q_reg[9]_13\,
      \q_reg[9]_15\ => \q_reg[9]_14\,
      \q_reg[9]_16\ => \q_reg[9]_15\,
      \q_reg[9]_17\ => \q_reg[9]_16\,
      \q_reg[9]_18\ => \q_reg[9]_17\,
      \q_reg[9]_19\ => \q_reg[9]_18\,
      \q_reg[9]_2\ => \q_reg[9]_1\,
      \q_reg[9]_20\ => \q_reg[9]_19\,
      \q_reg[9]_21\ => \q_reg[9]_20\,
      \q_reg[9]_22\ => \q_reg[9]_21\,
      \q_reg[9]_23\ => \q_reg[9]_22\,
      \q_reg[9]_24\ => \q_reg[9]_23\,
      \q_reg[9]_25\ => \q_reg[9]_24\,
      \q_reg[9]_26\ => \q_reg[9]_25\,
      \q_reg[9]_27\ => \q_reg[9]_26\,
      \q_reg[9]_3\ => \q_reg[9]_2\,
      \q_reg[9]_4\ => \q_reg[9]_3\,
      \q_reg[9]_5\ => \q_reg[9]_4\,
      \q_reg[9]_6\ => \q_reg[9]_5\,
      \q_reg[9]_7\ => \q_reg[9]_6\,
      \q_reg[9]_8\ => \q_reg[9]_7\,
      \q_reg[9]_9\ => \q_reg[9]_8\,
      rd10(31 downto 0) => rd10(31 downto 0),
      \rd11__3\ => \rd11__3\,
      rd20(31 downto 0) => rd20(31 downto 0),
      \rd21__3\ => \rd21__3\,
      reset => reset,
      result2_carry_i_40_0(4 downto 0) => RdW(4 downto 0)
    );
regM: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr__parameterized1\
     port map (
      D(63) => \q_reg[100]_1\(27),
      D(62) => \^q_reg[9]\(3),
      D(61 downto 35) => \q_reg[100]_1\(26 downto 0),
      D(34 downto 32) => \^q_reg[9]\(2 downto 0),
      D(31 downto 0) => WriteDataE(31 downto 0),
      Q(92 downto 37) => \^q_reg[100]\(55 downto 0),
      Q(36 downto 32) => RdM(4 downto 0),
      Q(31) => regM_n_62,
      Q(30) => regM_n_63,
      Q(29) => regM_n_64,
      Q(28) => regM_n_65,
      Q(27) => regM_n_66,
      Q(26) => regM_n_67,
      Q(25) => regM_n_68,
      Q(24) => regM_n_69,
      Q(23) => regM_n_70,
      Q(22) => regM_n_71,
      Q(21) => regM_n_72,
      Q(20) => regM_n_73,
      Q(19) => regM_n_74,
      Q(18) => regM_n_75,
      Q(17) => regM_n_76,
      Q(16) => regM_n_77,
      Q(15) => regM_n_78,
      Q(14) => regM_n_79,
      Q(13) => regM_n_80,
      Q(12) => regM_n_81,
      Q(11) => regM_n_82,
      Q(10) => regM_n_83,
      Q(9) => regM_n_84,
      Q(8) => regM_n_85,
      Q(7) => regM_n_86,
      Q(6) => regM_n_87,
      Q(5) => regM_n_88,
      Q(4) => regM_n_89,
      Q(3) => regM_n_90,
      Q(2) => regM_n_91,
      Q(1) => regM_n_92,
      Q(0) => regM_n_93,
      ReadDataM(31 downto 0) => ReadDataM(31 downto 0),
      WriteDataM(7 downto 0) => WriteDataM(7 downto 0),
      clk => clk,
      \q_reg[1]_0\ => \q_reg[1]\,
      \q_reg[1]_1\ => \q_reg[1]_0\,
      \q_reg[1]_2\ => \q_reg[1]_1\,
      \q_reg[1]_3\ => \q_reg[1]_2\,
      \q_reg[1]_4\ => \q_reg[1]_3\,
      \q_reg[1]_5\ => \q_reg[1]_4\,
      \q_reg[1]_6\ => \q_reg[1]_5\,
      \q_reg[1]_7\ => \q_reg[1]_6\,
      \q_reg[1]_8\(38 downto 37) => PCE(1 downto 0),
      \q_reg[1]_8\(36 downto 35) => Rs2E(3 downto 2),
      \q_reg[1]_8\(34 downto 30) => RdE(4 downto 0),
      \q_reg[1]_8\(29) => regE_n_44,
      \q_reg[1]_8\(28) => regE_n_45,
      \q_reg[1]_8\(27) => regE_n_46,
      \q_reg[1]_8\(26) => regE_n_47,
      \q_reg[1]_8\(25) => regE_n_48,
      \q_reg[1]_8\(24) => regE_n_49,
      \q_reg[1]_8\(23) => regE_n_50,
      \q_reg[1]_8\(22) => regE_n_51,
      \q_reg[1]_8\(21) => regE_n_52,
      \q_reg[1]_8\(20) => regE_n_53,
      \q_reg[1]_8\(19) => regE_n_54,
      \q_reg[1]_8\(18) => regE_n_55,
      \q_reg[1]_8\(17) => regE_n_56,
      \q_reg[1]_8\(16) => regE_n_57,
      \q_reg[1]_8\(15) => regE_n_58,
      \q_reg[1]_8\(14) => regE_n_59,
      \q_reg[1]_8\(13) => regE_n_60,
      \q_reg[1]_8\(12) => regE_n_61,
      \q_reg[1]_8\(11) => regE_n_62,
      \q_reg[1]_8\(10) => regE_n_63,
      \q_reg[1]_8\(9) => regE_n_64,
      \q_reg[1]_8\(8) => regE_n_65,
      \q_reg[1]_8\(7) => regE_n_66,
      \q_reg[1]_8\(6) => regE_n_67,
      \q_reg[1]_8\(5) => regE_n_68,
      \q_reg[1]_8\(4) => regE_n_69,
      \q_reg[1]_8\(3) => regE_n_70,
      \q_reg[1]_8\(2) => regE_n_71,
      \q_reg[1]_8\(1) => regE_n_72,
      \q_reg[1]_8\(0) => regE_n_73,
      \q_reg[34]_0\ => regM_n_0,
      \q_reg[37]_0\ => \q_reg[37]\,
      \q_reg[38]_0\ => \q_reg[38]\,
      \q_reg[39]_0\ => \q_reg[39]\,
      \q_reg[40]_0\ => \q_reg[40]\,
      \q_reg[41]_0\ => \q_reg[41]\,
      \q_reg[42]_0\ => \q_reg[42]\,
      \q_reg[43]_0\ => \q_reg[43]\,
      \q_reg[44]_0\ => \q_reg[44]\,
      \q_reg[45]_0\ => \q_reg[45]\,
      \q_reg[46]_0\ => \q_reg[46]\,
      \q_reg[47]_0\ => \q_reg[47]\,
      \q_reg[48]_0\ => \q_reg[48]\,
      \q_reg[49]_0\ => \q_reg[49]\,
      \q_reg[50]_0\ => \q_reg[50]\,
      \q_reg[51]_0\ => \q_reg[51]\,
      \q_reg[52]_0\ => \q_reg[52]\,
      reset => reset,
      \writeDataM[31]\ => \writeDataM[31]\,
      \writeDataM[31]_0\ => \writeDataM[31]_0\,
      \writeDataM[7]\(2 downto 0) => \q[100]_i_15\(2 downto 0)
    );
regW: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr__parameterized1_1\
     port map (
      D(100 downto 69) => \^q_reg[100]\(55 downto 24),
      D(68 downto 37) => ReadDataM(31 downto 0),
      D(36 downto 32) => RdM(4 downto 0),
      D(31) => regM_n_62,
      D(30) => regM_n_63,
      D(29) => regM_n_64,
      D(28) => regM_n_65,
      D(27) => regM_n_66,
      D(26) => regM_n_67,
      D(25) => regM_n_68,
      D(24) => regM_n_69,
      D(23) => regM_n_70,
      D(22) => regM_n_71,
      D(21) => regM_n_72,
      D(20) => regM_n_73,
      D(19) => regM_n_74,
      D(18) => regM_n_75,
      D(17) => regM_n_76,
      D(16) => regM_n_77,
      D(15) => regM_n_78,
      D(14) => regM_n_79,
      D(13) => regM_n_80,
      D(12) => regM_n_81,
      D(11) => regM_n_82,
      D(10) => regM_n_83,
      D(9) => regM_n_84,
      D(8) => regM_n_85,
      D(7) => regM_n_86,
      D(6) => regM_n_87,
      D(5) => regM_n_88,
      D(4) => regM_n_89,
      D(3) => regM_n_90,
      D(2) => regM_n_91,
      D(1) => regM_n_92,
      D(0) => regM_n_93,
      Q(52 downto 21) => \q_reg[100]_0\(47 downto 16),
      Q(20 downto 16) => RdW(4 downto 0),
      Q(15 downto 0) => \q_reg[100]_0\(15 downto 0),
      clk => clk,
      \q_reg[34]_0\ => regW_n_70,
      \q_reg[52]_0\(4 downto 0) => \q_reg[142]\(4 downto 0),
      \q_reg[68]_0\ => \q_reg[68]\(0),
      \q_reg[68]_1\ => \q_reg[68]_0\,
      reset => reset,
      result2_carry_i_43(1 downto 0) => Rs2E(3 downto 2),
      wd3(15 downto 0) => ResultW(15 downto 0)
    );
rf: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regfile
     port map (
      Q(4 downto 0) => RdW(4 downto 0),
      clk => clk,
      \q_reg[136]\(9 downto 5) => Rs2D(4 downto 0),
      \q_reg[136]\(4 downto 0) => Rs1D(4 downto 0),
      \q_reg[142]\(15 downto 0) => \q_reg[68]_1\(15 downto 0),
      \q_reg[142]_0\(0) => \q_reg[142]\(5),
      rd10(31 downto 0) => rd10(31 downto 0),
      rd20(31 downto 0) => rd20(31 downto 0),
      wd3(15 downto 0) => ResultW(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_riscv is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    PCF : out STD_LOGIC_VECTOR ( 31 downto 0 );
    InstrF : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MemWriteM : out STD_LOGIC;
    ALUResultM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    WriteDataM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ReadDataM : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MemStrobe : out STD_LOGIC;
    PCready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_riscv;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_riscv is
  signal ALUControlE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ALUResultE : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \^aluresultm\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ALUResultW : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal ALUSrcAE : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ALUSrcBE : STD_LOGIC;
  signal JalrControlE : STD_LOGIC;
  signal NegativeE : STD_LOGIC;
  signal \^pcf\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal PCNextF : STD_LOGIC_VECTOR ( 31 downto 3 );
  signal PCPlus4F : STD_LOGIC_VECTOR ( 31 downto 3 );
  signal PCSrcE : STD_LOGIC;
  signal PCTargetEmux : STD_LOGIC_VECTOR ( 31 downto 3 );
  signal ReadDataW : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal RegWriteM : STD_LOGIC;
  signal RegWriteW : STD_LOGIC;
  signal ResultSrcEb0 : STD_LOGIC;
  signal ResultSrcW : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ResultW : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal SrcAE : STD_LOGIC_VECTOR ( 31 to 31 );
  signal SrcBE : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal WriteDataM_Original : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \alu/p_3_in\ : STD_LOGIC;
  signal c_n_100 : STD_LOGIC;
  signal c_n_101 : STD_LOGIC;
  signal c_n_102 : STD_LOGIC;
  signal c_n_103 : STD_LOGIC;
  signal c_n_126 : STD_LOGIC;
  signal c_n_127 : STD_LOGIC;
  signal c_n_158 : STD_LOGIC;
  signal c_n_159 : STD_LOGIC;
  signal c_n_160 : STD_LOGIC;
  signal c_n_98 : STD_LOGIC;
  signal c_n_99 : STD_LOGIC;
  signal dp_n_109 : STD_LOGIC;
  signal dp_n_112 : STD_LOGIC;
  signal dp_n_113 : STD_LOGIC;
  signal dp_n_114 : STD_LOGIC;
  signal dp_n_115 : STD_LOGIC;
  signal dp_n_116 : STD_LOGIC;
  signal dp_n_117 : STD_LOGIC;
  signal dp_n_118 : STD_LOGIC;
  signal dp_n_120 : STD_LOGIC;
  signal dp_n_121 : STD_LOGIC;
  signal dp_n_122 : STD_LOGIC;
  signal dp_n_123 : STD_LOGIC;
  signal dp_n_124 : STD_LOGIC;
  signal dp_n_125 : STD_LOGIC;
  signal dp_n_126 : STD_LOGIC;
  signal dp_n_127 : STD_LOGIC;
  signal dp_n_128 : STD_LOGIC;
  signal dp_n_129 : STD_LOGIC;
  signal dp_n_130 : STD_LOGIC;
  signal dp_n_131 : STD_LOGIC;
  signal dp_n_132 : STD_LOGIC;
  signal dp_n_133 : STD_LOGIC;
  signal dp_n_134 : STD_LOGIC;
  signal dp_n_135 : STD_LOGIC;
  signal dp_n_136 : STD_LOGIC;
  signal dp_n_137 : STD_LOGIC;
  signal dp_n_138 : STD_LOGIC;
  signal dp_n_139 : STD_LOGIC;
  signal dp_n_140 : STD_LOGIC;
  signal dp_n_141 : STD_LOGIC;
  signal dp_n_142 : STD_LOGIC;
  signal dp_n_143 : STD_LOGIC;
  signal dp_n_144 : STD_LOGIC;
  signal dp_n_145 : STD_LOGIC;
  signal dp_n_202 : STD_LOGIC;
  signal dp_n_203 : STD_LOGIC;
  signal dp_n_204 : STD_LOGIC;
  signal dp_n_205 : STD_LOGIC;
  signal dp_n_206 : STD_LOGIC;
  signal dp_n_207 : STD_LOGIC;
  signal dp_n_208 : STD_LOGIC;
  signal dp_n_209 : STD_LOGIC;
  signal dp_n_210 : STD_LOGIC;
  signal dp_n_211 : STD_LOGIC;
  signal dp_n_212 : STD_LOGIC;
  signal dp_n_213 : STD_LOGIC;
  signal dp_n_214 : STD_LOGIC;
  signal dp_n_215 : STD_LOGIC;
  signal dp_n_216 : STD_LOGIC;
  signal dp_n_217 : STD_LOGIC;
  signal dp_n_218 : STD_LOGIC;
  signal dp_n_219 : STD_LOGIC;
  signal dp_n_220 : STD_LOGIC;
  signal dp_n_221 : STD_LOGIC;
  signal dp_n_222 : STD_LOGIC;
  signal dp_n_223 : STD_LOGIC;
  signal dp_n_224 : STD_LOGIC;
  signal dp_n_225 : STD_LOGIC;
  signal dp_n_226 : STD_LOGIC;
  signal dp_n_227 : STD_LOGIC;
  signal dp_n_228 : STD_LOGIC;
  signal dp_n_229 : STD_LOGIC;
  signal dp_n_230 : STD_LOGIC;
  signal dp_n_231 : STD_LOGIC;
  signal dp_n_232 : STD_LOGIC;
  signal dp_n_233 : STD_LOGIC;
  signal dp_n_234 : STD_LOGIC;
  signal dp_n_235 : STD_LOGIC;
  signal dp_n_236 : STD_LOGIC;
  signal dp_n_237 : STD_LOGIC;
  signal dp_n_238 : STD_LOGIC;
  signal dp_n_239 : STD_LOGIC;
  signal dp_n_240 : STD_LOGIC;
  signal dp_n_241 : STD_LOGIC;
  signal dp_n_242 : STD_LOGIC;
  signal dp_n_243 : STD_LOGIC;
  signal dp_n_244 : STD_LOGIC;
  signal dp_n_245 : STD_LOGIC;
  signal dp_n_246 : STD_LOGIC;
  signal dp_n_247 : STD_LOGIC;
  signal dp_n_248 : STD_LOGIC;
  signal dp_n_249 : STD_LOGIC;
  signal dp_n_283 : STD_LOGIC;
  signal dp_n_284 : STD_LOGIC;
  signal dp_n_285 : STD_LOGIC;
  signal dp_n_286 : STD_LOGIC;
  signal dp_n_287 : STD_LOGIC;
  signal dp_n_288 : STD_LOGIC;
  signal dp_n_289 : STD_LOGIC;
  signal dp_n_290 : STD_LOGIC;
  signal dp_n_291 : STD_LOGIC;
  signal dp_n_292 : STD_LOGIC;
  signal dp_n_293 : STD_LOGIC;
  signal dp_n_294 : STD_LOGIC;
  signal dp_n_295 : STD_LOGIC;
  signal dp_n_296 : STD_LOGIC;
  signal dp_n_297 : STD_LOGIC;
  signal dp_n_298 : STD_LOGIC;
  signal dp_n_299 : STD_LOGIC;
  signal dp_n_300 : STD_LOGIC;
  signal dp_n_309 : STD_LOGIC;
  signal dp_n_310 : STD_LOGIC;
  signal dp_n_311 : STD_LOGIC;
  signal dp_n_312 : STD_LOGIC;
  signal dp_n_313 : STD_LOGIC;
  signal dp_n_314 : STD_LOGIC;
  signal dp_n_315 : STD_LOGIC;
  signal dp_n_316 : STD_LOGIC;
  signal dp_n_317 : STD_LOGIC;
  signal dp_n_318 : STD_LOGIC;
  signal dp_n_319 : STD_LOGIC;
  signal dp_n_320 : STD_LOGIC;
  signal dp_n_321 : STD_LOGIC;
  signal dp_n_322 : STD_LOGIC;
  signal dp_n_323 : STD_LOGIC;
  signal dp_n_324 : STD_LOGIC;
  signal dp_n_325 : STD_LOGIC;
  signal dp_n_326 : STD_LOGIC;
  signal dp_n_327 : STD_LOGIC;
  signal dp_n_328 : STD_LOGIC;
  signal dp_n_329 : STD_LOGIC;
  signal dp_n_330 : STD_LOGIC;
  signal dp_n_331 : STD_LOGIC;
  signal dp_n_332 : STD_LOGIC;
  signal dp_n_334 : STD_LOGIC;
  signal dp_n_335 : STD_LOGIC;
  signal dp_n_336 : STD_LOGIC;
  signal dp_n_337 : STD_LOGIC;
  signal dp_n_338 : STD_LOGIC;
  signal dp_n_339 : STD_LOGIC;
  signal dp_n_340 : STD_LOGIC;
  signal dp_n_341 : STD_LOGIC;
  signal dp_n_342 : STD_LOGIC;
  signal dp_n_343 : STD_LOGIC;
  signal dp_n_344 : STD_LOGIC;
  signal dp_n_345 : STD_LOGIC;
  signal dp_n_346 : STD_LOGIC;
  signal dp_n_347 : STD_LOGIC;
  signal dp_n_348 : STD_LOGIC;
  signal dp_n_349 : STD_LOGIC;
  signal dp_n_350 : STD_LOGIC;
  signal dp_n_351 : STD_LOGIC;
  signal dp_n_352 : STD_LOGIC;
  signal dp_n_353 : STD_LOGIC;
  signal dp_n_354 : STD_LOGIC;
  signal dp_n_355 : STD_LOGIC;
  signal dp_n_356 : STD_LOGIC;
  signal dp_n_357 : STD_LOGIC;
  signal dp_n_358 : STD_LOGIC;
  signal dp_n_359 : STD_LOGIC;
  signal dp_n_360 : STD_LOGIC;
  signal dp_n_361 : STD_LOGIC;
  signal funct3M : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal funct3W : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \loader/data0\ : STD_LOGIC_VECTOR ( 31 to 31 );
  signal p_0_in : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \regD/p_0_in\ : STD_LOGIC_VECTOR ( 95 downto 2 );
begin
  ALUResultM(31 downto 0) <= \^aluresultm\(31 downto 0);
  PCF(31 downto 0) <= \^pcf\(31 downto 0);
c: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_controller
     port map (
      D(27) => PCNextF(31),
      D(26 downto 0) => PCNextF(29 downto 3),
      InstrF(30 downto 0) => InstrF(31 downto 1),
      O(0) => dp_n_334,
      PCPlus4F(27) => PCPlus4F(31),
      PCPlus4F(26 downto 0) => PCPlus4F(29 downto 3),
      PCSrcE => PCSrcE,
      PCTargetEmux(27) => PCTargetEmux(31),
      PCTargetEmux(26 downto 0) => PCTargetEmux(29 downto 3),
      Q(8) => ResultSrcEb0,
      Q(7 downto 4) => ALUControlE(3 downto 0),
      Q(3 downto 2) => ALUSrcAE(1 downto 0),
      Q(1) => ALUSrcBE,
      Q(0) => JalrControlE,
      ReadDataM(23 downto 0) => ReadDataM(31 downto 8),
      ResultW(15 downto 0) => ResultW(31 downto 16),
      SrcAE(0) => SrcAE(31),
      SrcBE(1) => SrcBE(31),
      SrcBE(0) => SrcBE(0),
      WriteDataM(23 downto 0) => WriteDataM(31 downto 8),
      clk => clk,
      data0(0) => \loader/data0\(31),
      \q[31]_i_4\(3) => ALUResultE(30),
      \q[31]_i_4\(2 downto 0) => ALUResultE(2 downto 0),
      \q_reg[100]\ => dp_n_120,
      \q_reg[100]_0\ => dp_n_299,
      \q_reg[100]_1\(0) => \alu/p_3_in\,
      \q_reg[10]\ => c_n_99,
      \q_reg[11]\ => c_n_126,
      \q_reg[17]\(16) => p_0_in(17),
      \q_reg[17]\(15 downto 0) => p_0_in(15 downto 0),
      \q_reg[1]\ => c_n_159,
      \q_reg[2]\(31 downto 1) => \regD/p_0_in\(95 downto 65),
      \q_reg[2]\(0) => \regD/p_0_in\(2),
      \q_reg[2]_0\ => c_n_158,
      \q_reg[2]_1\(0) => \^pcf\(2),
      \q_reg[5]\(5) => RegWriteW,
      \q_reg[5]\(4 downto 3) => ResultSrcW(1 downto 0),
      \q_reg[5]\(2 downto 0) => funct3W(2 downto 0),
      \q_reg[68]\(47 downto 32) => ALUResultW(31 downto 16),
      \q_reg[68]\(31 downto 16) => ReadDataW(31 downto 16),
      \q_reg[68]\(15) => dp_n_283,
      \q_reg[68]\(14) => dp_n_284,
      \q_reg[68]\(13) => dp_n_285,
      \q_reg[68]\(12) => dp_n_286,
      \q_reg[68]\(11) => dp_n_287,
      \q_reg[68]\(10) => dp_n_288,
      \q_reg[68]\(9) => dp_n_289,
      \q_reg[68]\(8) => dp_n_290,
      \q_reg[68]\(7) => dp_n_291,
      \q_reg[68]\(6) => dp_n_292,
      \q_reg[68]\(5) => dp_n_293,
      \q_reg[68]\(4) => dp_n_294,
      \q_reg[68]\(3) => dp_n_295,
      \q_reg[68]\(2) => dp_n_296,
      \q_reg[68]\(1) => dp_n_297,
      \q_reg[68]\(0) => dp_n_298,
      \q_reg[72]\ => dp_n_139,
      \q_reg[72]_0\ => dp_n_339,
      \q_reg[72]_1\ => dp_n_140,
      \q_reg[72]_2\ => dp_n_205,
      \q_reg[73]\ => dp_n_145,
      \q_reg[73]_0\ => dp_n_338,
      \q_reg[73]_1\ => dp_n_204,
      \q_reg[73]_2\ => dp_n_142,
      \q_reg[74]\ => dp_n_144,
      \q_reg[74]_0\ => dp_n_336,
      \q_reg[74]_1\ => dp_n_141,
      \q_reg[74]_2\ => dp_n_203,
      \q_reg[75]\ => dp_n_143,
      \q_reg[75]_0\ => dp_n_337,
      \q_reg[75]_1\ => dp_n_202,
      \q_reg[75]_2\ => dp_n_122,
      \q_reg[76]\ => dp_n_138,
      \q_reg[76]_0\ => dp_n_335,
      \q_reg[76]_1\ => dp_n_121,
      \q_reg[76]_2\ => dp_n_215,
      \q_reg[77]\ => dp_n_137,
      \q_reg[77]_0\ => dp_n_345,
      \q_reg[77]_1\ => dp_n_214,
      \q_reg[77]_2\ => dp_n_209,
      \q_reg[78]\ => dp_n_135,
      \q_reg[78]_0\ => dp_n_340,
      \q_reg[78]_1\ => dp_n_208,
      \q_reg[78]_2\ => dp_n_219,
      \q_reg[79]\ => dp_n_136,
      \q_reg[79]_0\ => dp_n_343,
      \q_reg[79]_1\ => dp_n_218,
      \q_reg[79]_2\ => dp_n_207,
      \q_reg[7]\(5) => RegWriteM,
      \q_reg[7]\(4) => MemWriteM,
      \q_reg[7]\(3 downto 1) => funct3M(2 downto 0),
      \q_reg[7]\(0) => MemStrobe,
      \q_reg[80]\ => dp_n_131,
      \q_reg[80]_0\ => dp_n_341,
      \q_reg[80]_1\ => dp_n_206,
      \q_reg[80]_2\ => dp_n_217,
      \q_reg[81]\ => dp_n_132,
      \q_reg[81]_0\ => dp_n_346,
      \q_reg[81]_1\ => dp_n_216,
      \q_reg[81]_2\ => dp_n_211,
      \q_reg[82]\ => dp_n_133,
      \q_reg[82]_0\ => dp_n_342,
      \q_reg[82]_1\ => dp_n_210,
      \q_reg[82]_2\ => dp_n_221,
      \q_reg[83]\ => dp_n_134,
      \q_reg[83]_0\ => dp_n_344,
      \q_reg[83]_1\ => dp_n_220,
      \q_reg[83]_2\ => dp_n_213,
      \q_reg[84]\ => dp_n_127,
      \q_reg[84]_0\ => dp_n_347,
      \q_reg[84]_1\ => dp_n_212,
      \q_reg[84]_2\ => dp_n_235,
      \q_reg[85]\ => dp_n_128,
      \q_reg[85]_0\ => dp_n_359,
      \q_reg[85]_1\ => dp_n_234,
      \q_reg[85]_2\ => dp_n_237,
      \q_reg[86]\ => dp_n_130,
      \q_reg[86]_0\ => dp_n_352,
      \q_reg[86]_1\ => dp_n_236,
      \q_reg[86]_2\ => dp_n_231,
      \q_reg[87]\ => dp_n_129,
      \q_reg[87]_0\ => dp_n_356,
      \q_reg[87]_1\ => dp_n_230,
      \q_reg[87]_2\ => dp_n_233,
      \q_reg[88]\ => dp_n_126,
      \q_reg[88]_0\ => dp_n_349,
      \q_reg[88]_1\ => dp_n_232,
      \q_reg[88]_2\ => dp_n_223,
      \q_reg[89]\ => dp_n_125,
      \q_reg[89]_0\ => dp_n_361,
      \q_reg[89]_1\ => dp_n_222,
      \q_reg[89]_2\ => dp_n_225,
      \q_reg[8]\ => c_n_101,
      \q_reg[8]_0\ => c_n_102,
      \q_reg[8]_1\ => c_n_103,
      \q_reg[8]_2\ => c_n_160,
      \q_reg[90]\ => dp_n_123,
      \q_reg[90]_0\ => dp_n_354,
      \q_reg[90]_1\ => dp_n_224,
      \q_reg[90]_2\ => dp_n_227,
      \q_reg[91]\ => dp_n_124,
      \q_reg[91]_0\ => dp_n_357,
      \q_reg[91]_1\ => dp_n_226,
      \q_reg[91]_2\ => dp_n_229,
      \q_reg[92]\ => dp_n_109,
      \q_reg[92]_0\ => dp_n_350,
      \q_reg[92]_1\ => dp_n_228,
      \q_reg[92]_2\ => dp_n_239,
      \q_reg[93]\ => dp_n_112,
      \q_reg[93]_0\ => dp_n_358,
      \q_reg[93]_1\ => dp_n_238,
      \q_reg[93]_2\ => dp_n_241,
      \q_reg[94]\ => dp_n_113,
      \q_reg[94]_0\ => dp_n_351,
      \q_reg[94]_1\ => dp_n_240,
      \q_reg[94]_2\ => dp_n_243,
      \q_reg[95]\ => dp_n_114,
      \q_reg[95]_0\ => dp_n_355,
      \q_reg[95]_1\ => dp_n_242,
      \q_reg[95]_2\ => dp_n_245,
      \q_reg[96]\ => dp_n_115,
      \q_reg[96]_0\ => dp_n_348,
      \q_reg[96]_1\ => dp_n_244,
      \q_reg[96]_2\ => dp_n_247,
      \q_reg[97]\ => dp_n_116,
      \q_reg[97]_0\ => dp_n_360,
      \q_reg[97]_1\ => dp_n_246,
      \q_reg[97]_2\ => dp_n_249,
      \q_reg[98]\ => dp_n_117,
      \q_reg[98]_0\ => dp_n_353,
      \q_reg[98]_1\ => dp_n_248,
      \q_reg[98]_2\ => dp_n_118,
      \q_reg[9]\(27) => NegativeE,
      \q_reg[9]\(26 downto 0) => ALUResultE(29 downto 3),
      \q_reg[9]_0\ => c_n_98,
      \q_reg[9]_1\ => c_n_100,
      \q_reg[9]_2\ => c_n_127,
      reset => reset,
      rf_reg_r1_0_31_24_29_i_3 => dp_n_300,
      \writeDataM[10]\ => dp_n_311,
      \writeDataM[11]\ => dp_n_312,
      \writeDataM[12]\ => dp_n_313,
      \writeDataM[13]\ => dp_n_314,
      \writeDataM[14]\ => dp_n_315,
      \writeDataM[15]\ => dp_n_316,
      \writeDataM[16]\(24) => \^aluresultm\(1),
      \writeDataM[16]\(23 downto 0) => WriteDataM_Original(31 downto 8),
      \writeDataM[16]_0\ => dp_n_317,
      \writeDataM[17]\ => dp_n_318,
      \writeDataM[18]\ => dp_n_319,
      \writeDataM[19]\ => dp_n_320,
      \writeDataM[20]\ => dp_n_321,
      \writeDataM[21]\ => dp_n_322,
      \writeDataM[22]\ => dp_n_323,
      \writeDataM[23]\ => dp_n_324,
      \writeDataM[24]\ => dp_n_325,
      \writeDataM[25]\ => dp_n_326,
      \writeDataM[26]\ => dp_n_327,
      \writeDataM[27]\ => dp_n_328,
      \writeDataM[28]\ => dp_n_329,
      \writeDataM[29]\ => dp_n_330,
      \writeDataM[30]\ => dp_n_331,
      \writeDataM[31]\ => dp_n_332,
      \writeDataM[8]\ => dp_n_309,
      \writeDataM[9]\ => dp_n_310
    );
dp: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath
     port map (
      D(27) => PCNextF(31),
      D(26 downto 0) => PCNextF(29 downto 3),
      O(0) => dp_n_334,
      PCSrcE => PCSrcE,
      PCready => PCready,
      Q(31 downto 0) => \^pcf\(31 downto 0),
      ReadDataM(31 downto 0) => ReadDataM(31 downto 0),
      WriteDataM(7 downto 0) => WriteDataM(7 downto 0),
      clk => clk,
      \q[100]_i_15\(3) => RegWriteM,
      \q[100]_i_15\(2 downto 0) => funct3M(2 downto 0),
      \q[69]_i_3\ => c_n_160,
      \q_reg[100]\(55 downto 24) => \^aluresultm\(31 downto 0),
      \q_reg[100]\(23 downto 0) => WriteDataM_Original(31 downto 8),
      \q_reg[100]_0\(47 downto 32) => ALUResultW(31 downto 16),
      \q_reg[100]_0\(31 downto 16) => ReadDataW(31 downto 16),
      \q_reg[100]_0\(15) => dp_n_283,
      \q_reg[100]_0\(14) => dp_n_284,
      \q_reg[100]_0\(13) => dp_n_285,
      \q_reg[100]_0\(12) => dp_n_286,
      \q_reg[100]_0\(11) => dp_n_287,
      \q_reg[100]_0\(10) => dp_n_288,
      \q_reg[100]_0\(9) => dp_n_289,
      \q_reg[100]_0\(8) => dp_n_290,
      \q_reg[100]_0\(7) => dp_n_291,
      \q_reg[100]_0\(6) => dp_n_292,
      \q_reg[100]_0\(5) => dp_n_293,
      \q_reg[100]_0\(4) => dp_n_294,
      \q_reg[100]_0\(3) => dp_n_295,
      \q_reg[100]_0\(2) => dp_n_296,
      \q_reg[100]_0\(1) => dp_n_297,
      \q_reg[100]_0\(0) => dp_n_298,
      \q_reg[100]_1\(27) => NegativeE,
      \q_reg[100]_1\(26 downto 0) => ALUResultE(29 downto 3),
      \q_reg[109]\(0) => \alu/p_3_in\,
      \q_reg[110]\(0) => SrcAE(31),
      \q_reg[142]\(5) => RegWriteW,
      \q_reg[142]\(4 downto 3) => ResultSrcW(1 downto 0),
      \q_reg[142]\(2 downto 0) => funct3W(2 downto 0),
      \q_reg[142]_0\(8) => ResultSrcEb0,
      \q_reg[142]_0\(7 downto 4) => ALUControlE(3 downto 0),
      \q_reg[142]_0\(3 downto 2) => ALUSrcAE(1 downto 0),
      \q_reg[142]_0\(1) => ALUSrcBE,
      \q_reg[142]_0\(0) => JalrControlE,
      \q_reg[1]\ => dp_n_317,
      \q_reg[1]_0\ => dp_n_318,
      \q_reg[1]_1\ => dp_n_319,
      \q_reg[1]_2\ => dp_n_320,
      \q_reg[1]_3\ => dp_n_321,
      \q_reg[1]_4\ => dp_n_322,
      \q_reg[1]_5\ => dp_n_323,
      \q_reg[1]_6\ => dp_n_324,
      \q_reg[31]\(27) => PCPlus4F(31),
      \q_reg[31]\(26 downto 0) => PCPlus4F(29 downto 3),
      \q_reg[33]\ => dp_n_118,
      \q_reg[33]_0\ => dp_n_122,
      \q_reg[33]_1\ => dp_n_207,
      \q_reg[33]_10\ => dp_n_225,
      \q_reg[33]_11\ => dp_n_227,
      \q_reg[33]_12\ => dp_n_229,
      \q_reg[33]_13\ => dp_n_231,
      \q_reg[33]_14\ => dp_n_233,
      \q_reg[33]_15\ => dp_n_235,
      \q_reg[33]_16\ => dp_n_237,
      \q_reg[33]_17\ => dp_n_239,
      \q_reg[33]_18\ => dp_n_241,
      \q_reg[33]_19\ => dp_n_243,
      \q_reg[33]_2\ => dp_n_209,
      \q_reg[33]_20\ => dp_n_245,
      \q_reg[33]_21\ => dp_n_247,
      \q_reg[33]_22\ => dp_n_249,
      \q_reg[33]_3\ => dp_n_211,
      \q_reg[33]_4\ => dp_n_213,
      \q_reg[33]_5\ => dp_n_215,
      \q_reg[33]_6\ => dp_n_217,
      \q_reg[33]_7\ => dp_n_219,
      \q_reg[33]_8\ => dp_n_221,
      \q_reg[33]_9\ => dp_n_223,
      \q_reg[34]\ => dp_n_142,
      \q_reg[34]_0\ => dp_n_203,
      \q_reg[34]_1\ => dp_n_205,
      \q_reg[37]\ => dp_n_309,
      \q_reg[38]\ => dp_n_310,
      \q_reg[39]\ => dp_n_311,
      \q_reg[40]\ => dp_n_312,
      \q_reg[41]\ => dp_n_313,
      \q_reg[42]\ => dp_n_314,
      \q_reg[43]\ => dp_n_315,
      \q_reg[44]\ => dp_n_316,
      \q_reg[45]\ => dp_n_325,
      \q_reg[46]\ => dp_n_326,
      \q_reg[47]\ => dp_n_327,
      \q_reg[48]\ => dp_n_328,
      \q_reg[49]\ => dp_n_329,
      \q_reg[50]\ => dp_n_330,
      \q_reg[51]\ => dp_n_331,
      \q_reg[52]\ => dp_n_332,
      \q_reg[62]\(27) => PCTargetEmux(31),
      \q_reg[62]\(26 downto 0) => PCTargetEmux(29 downto 3),
      \q_reg[63]\(1) => SrcBE(31),
      \q_reg[63]\(0) => SrcBE(0),
      \q_reg[63]_0\ => dp_n_299,
      \q_reg[65]\(16) => p_0_in(17),
      \q_reg[65]\(15 downto 0) => p_0_in(15 downto 0),
      \q_reg[68]\(0) => \loader/data0\(31),
      \q_reg[68]_0\ => dp_n_300,
      \q_reg[68]_1\(15 downto 0) => ResultW(31 downto 16),
      \q_reg[69]\ => c_n_127,
      \q_reg[70]\ => c_n_102,
      \q_reg[70]_0\ => c_n_103,
      \q_reg[71]\ => c_n_98,
      \q_reg[71]_0\ => c_n_99,
      \q_reg[71]_1\ => c_n_101,
      \q_reg[8]\ => dp_n_109,
      \q_reg[8]_0\ => dp_n_112,
      \q_reg[8]_1\ => dp_n_113,
      \q_reg[8]_10\ => dp_n_125,
      \q_reg[8]_11\ => dp_n_126,
      \q_reg[8]_12\ => dp_n_127,
      \q_reg[8]_13\ => dp_n_128,
      \q_reg[8]_14\ => dp_n_129,
      \q_reg[8]_15\ => dp_n_130,
      \q_reg[8]_16\ => dp_n_131,
      \q_reg[8]_17\ => dp_n_132,
      \q_reg[8]_18\ => dp_n_133,
      \q_reg[8]_19\ => dp_n_134,
      \q_reg[8]_2\ => dp_n_114,
      \q_reg[8]_20\ => dp_n_135,
      \q_reg[8]_21\ => dp_n_136,
      \q_reg[8]_22\ => dp_n_137,
      \q_reg[8]_23\ => dp_n_138,
      \q_reg[8]_24\ => dp_n_139,
      \q_reg[8]_25\ => dp_n_140,
      \q_reg[8]_26\ => dp_n_141,
      \q_reg[8]_27\ => dp_n_143,
      \q_reg[8]_28\ => dp_n_144,
      \q_reg[8]_29\ => dp_n_145,
      \q_reg[8]_3\ => dp_n_115,
      \q_reg[8]_30\ => dp_n_202,
      \q_reg[8]_31\ => dp_n_204,
      \q_reg[8]_32\ => dp_n_206,
      \q_reg[8]_33\ => dp_n_208,
      \q_reg[8]_34\ => dp_n_210,
      \q_reg[8]_35\ => dp_n_212,
      \q_reg[8]_36\ => dp_n_214,
      \q_reg[8]_37\ => dp_n_216,
      \q_reg[8]_38\ => dp_n_218,
      \q_reg[8]_39\ => dp_n_220,
      \q_reg[8]_4\ => dp_n_116,
      \q_reg[8]_40\ => dp_n_222,
      \q_reg[8]_41\ => dp_n_224,
      \q_reg[8]_42\ => dp_n_226,
      \q_reg[8]_43\ => dp_n_228,
      \q_reg[8]_44\ => dp_n_230,
      \q_reg[8]_45\ => dp_n_232,
      \q_reg[8]_46\ => dp_n_234,
      \q_reg[8]_47\ => dp_n_236,
      \q_reg[8]_48\ => dp_n_238,
      \q_reg[8]_49\ => dp_n_240,
      \q_reg[8]_5\ => dp_n_117,
      \q_reg[8]_50\ => dp_n_242,
      \q_reg[8]_51\ => dp_n_244,
      \q_reg[8]_52\ => dp_n_246,
      \q_reg[8]_53\ => dp_n_248,
      \q_reg[8]_6\ => dp_n_120,
      \q_reg[8]_7\ => dp_n_121,
      \q_reg[8]_8\ => dp_n_123,
      \q_reg[8]_9\ => dp_n_124,
      \q_reg[95]\(31 downto 1) => \regD/p_0_in\(95 downto 65),
      \q_reg[95]\(0) => \regD/p_0_in\(2),
      \q_reg[99]\ => c_n_100,
      \q_reg[99]_0\ => c_n_126,
      \q_reg[9]\(3) => ALUResultE(30),
      \q_reg[9]\(2 downto 0) => ALUResultE(2 downto 0),
      \q_reg[9]_0\ => dp_n_335,
      \q_reg[9]_1\ => dp_n_336,
      \q_reg[9]_10\ => dp_n_345,
      \q_reg[9]_11\ => dp_n_346,
      \q_reg[9]_12\ => dp_n_347,
      \q_reg[9]_13\ => dp_n_348,
      \q_reg[9]_14\ => dp_n_349,
      \q_reg[9]_15\ => dp_n_350,
      \q_reg[9]_16\ => dp_n_351,
      \q_reg[9]_17\ => dp_n_352,
      \q_reg[9]_18\ => dp_n_353,
      \q_reg[9]_19\ => dp_n_354,
      \q_reg[9]_2\ => dp_n_337,
      \q_reg[9]_20\ => dp_n_355,
      \q_reg[9]_21\ => dp_n_356,
      \q_reg[9]_22\ => dp_n_357,
      \q_reg[9]_23\ => dp_n_358,
      \q_reg[9]_24\ => dp_n_359,
      \q_reg[9]_25\ => dp_n_360,
      \q_reg[9]_26\ => dp_n_361,
      \q_reg[9]_3\ => dp_n_338,
      \q_reg[9]_4\ => dp_n_339,
      \q_reg[9]_5\ => dp_n_340,
      \q_reg[9]_6\ => dp_n_341,
      \q_reg[9]_7\ => dp_n_342,
      \q_reg[9]_8\ => dp_n_343,
      \q_reg[9]_9\ => dp_n_344,
      reset => reset,
      \writeDataM[31]\ => c_n_158,
      \writeDataM[31]_0\ => c_n_159
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    doneM : in STD_LOGIC;
    readDataM : in STD_LOGIC_VECTOR ( 31 downto 0 );
    writeDataM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addressM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DRW : out STD_LOGIC;
    AXIStart : out STD_LOGIC
  );
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top : entity is "soft";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top is
  signal Instr : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of Instr : signal is std.standard.true;
  signal MStrobe : STD_LOGIC;
  signal MemWrite : STD_LOGIC;
  signal PC : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG of PC : signal is std.standard.true;
  signal PCReady : STD_LOGIC;
  attribute KEEP_HIERARCHY of imem : label is "soft";
  attribute KEEP_HIERARCHY of memcontrol : label is "soft";
  attribute KEEP_HIERARCHY of riscv : label is "soft";
  attribute mark_debug_string : string;
  attribute mark_debug_string of reset : signal is "true";
  attribute mark_debug_string of addressM : signal is "true";
  attribute mark_debug_string of readDataM : signal is "true";
  attribute mark_debug_string of writeDataM : signal is "true";
begin
imem: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imem
     port map (
      a(31 downto 8) => B"000000000000000000000000",
      a(7 downto 2) => PC(7 downto 2),
      a(1 downto 0) => B"00",
      rd(31 downto 0) => Instr(31 downto 0)
    );
memcontrol: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MemControl
     port map (
      AXIstart => AXIStart,
      DRW => DRW,
      Done => PCReady,
      MStrobe => MStrobe,
      MemWrite => MemWrite,
      Trigger => doneM,
      clk => clk,
      reset => reset
    );
riscv: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_riscv
     port map (
      ALUResultM(31 downto 0) => addressM(31 downto 0),
      InstrF(31 downto 1) => Instr(31 downto 1),
      InstrF(0) => '0',
      MemStrobe => MStrobe,
      MemWriteM => MemWrite,
      PCF(31 downto 0) => PC(31 downto 0),
      PCready => PCReady,
      ReadDataM(31 downto 0) => readDataM(31 downto 0),
      WriteDataM(31 downto 0) => writeDataM(31 downto 0),
      clk => clk,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    doneM : in STD_LOGIC;
    readDataM : in STD_LOGIC_VECTOR ( 31 downto 0 );
    writeDataM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addressM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DRW : out STD_LOGIC;
    AXIStart : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_top_0_0,top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of inst : label is "soft";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top
     port map (
      AXIStart => AXIStart,
      DRW => DRW,
      addressM(31 downto 0) => addressM(31 downto 0),
      clk => clk,
      doneM => doneM,
      readDataM(31 downto 0) => readDataM(31 downto 0),
      reset => reset,
      writeDataM(31 downto 0) => writeDataM(31 downto 0)
    );
end STRUCTURE;
