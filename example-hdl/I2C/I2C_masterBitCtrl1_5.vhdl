-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.I2C_types.all;

entity I2C_masterBitCtrl1_5 is
  port(clkCnt_i1       : in unsigned(15 downto 0);
       cmd_i2          : in unsigned(2 downto 0);
       dIn_i3          : in std_logic_vector(0 downto 0);
       i2ci_i4         : in product0;
       -- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       bodyVar_o       : out product4);
end;

architecture structural of I2C_masterBitCtrl1_5 is
  signal repANF_0    : product5;
  signal repANF_1    : product2;
  signal x_2         : product5;
  signal y_3         : product2;
  signal bodyVar_4   : product4;
  signal x_5         : product4;
  signal bodyVar_6   : product6;
  signal bodyVar_7   : product6;
  signal x_8         : product7;
  signal repANF_9    : product4;
  signal bodyVar_10  : product7;
  signal repANF_11   : product7;
  signal repANF_12   : product5;
  signal repANF_13   : product2;
  signal subjLet_14  : boolean;
  signal altLet_15   : product7;
  signal repANF_16   : boolean;
  signal repANF_17   : boolean;
  signal repANF_18   : boolean;
  signal subjLet_19  : boolean;
  signal altLet_20   : product7;
  signal altLet_21   : product7;
  signal sSCL_22     : std_logic_vector(0 downto 0);
  signal isclOen_23  : boolean;
  signal isdaOen_24  : boolean;
  signal ds4_25      : std_logic_vector(0 downto 0);
  signal y_26        : product7;
  signal altLet_27   : product7;
  signal altLet_28   : product7;
  signal bodyVar_29  : product7;
  signal dSCL_30     : std_logic_vector(0 downto 0);
  signal altLet_31   : std_logic_vector(0 downto 0);
  signal ds5_32      : product8;
  signal ds6_33      : product9;
  signal isdaOen1_34 : boolean;
  signal ds16_35     : boolean;
  signal ds14_36     : boolean;
  signal a39_37      : product9;
  signal x_38        : boolean;
  signal x1_39       : boolean;
  signal x2_40       : unsigned(15 downto 0);
  signal x3_41       : boolean;
  signal x4_42       : std_logic_vector(0 downto 0);
  signal x5_43       : product8;
  signal x6_44       : product9;
  signal altLet_45   : product7;
  signal subjLet_46  : product10;
  signal altLet_47   : product7;
  signal altLet_48   : product7;
  signal altLet_49   : std_logic_vector(0 downto 0);
  signal ds10_50     : product0;
  signal isdaOen1_51 : boolean;
  signal isdaOen1_52 : boolean;
  signal ds3_53      : boolean;
  signal repANF_54   : std_logic_vector(0 downto 0);
  signal altLet_55   : product7;
  signal altLet_56   : product7;
  signal ds11_57     : product0;
  signal ds17_58     : std_logic_vector(0 downto 0);
  signal ds1_59      : boolean;
  signal altLet_60   : std_logic_vector(0 downto 0);
  signal altLet_61   : product7;
  signal altLet_62   : product7;
  signal altLet_63   : product7;
  signal altLet_64   : product7;
  signal ds17_65     : std_logic_vector(0 downto 0);
  signal repANF_66   : unsigned(15 downto 0);
  signal a39_67      : product8;
  signal altLet_68   : product7;
  signal altLet_69   : product7;
  signal altLet_70   : product7;
  signal altLet_71   : product7;
  signal altLet_72   : product7;
  signal a38_73      : boolean;
  signal ds2_74      : unsigned(15 downto 0);
  signal ds18_75     : std_logic_vector(0 downto 0);
  signal altLet_76   : product7;
  signal subjLet_77  : product11;
  signal altLet_78   : product7;
  signal altLet_79   : boolean;
  signal isdaOen1_80 : boolean;
  signal isdaOen1_81 : unsigned(4 downto 0);
  signal repANF_82   : boolean;
  signal repANF_83   : unsigned(4 downto 0);
  signal altLet_84   : boolean;
  signal altLet_85   : boolean;
  signal ds_86       : boolean;
  signal tmp_87      : product7;
begin
  bodyVar_o <= (product4_sel0 => repANF_0
               ,product4_sel1 => repANF_1);
  
  repANF_0 <= x_2;
  
  repANF_1 <= y_3;
  
  x_2 <= bodyVar_4.product4_sel0;
  
  y_3 <= bodyVar_4.product4_sel1;
  
  bodyVar_4 <= x_5;
  
  x_5 <= bodyVar_6.product6_sel0;
  
  bodyVar_6 <= bodyVar_7;
  
  bodyVar_7 <= (product6_sel0 => repANF_9
               ,product6_sel1 => bodyVar_10);
  
  -- register begin
  register_I2C_masterBitCtrl1_5_n_103 : block
    signal n_104 : product7;
    signal n_105 : product7;
  begin
    n_104 <= (product7_sel0 => false,product7_sel1 => false,product7_sel2 => unsigned'("0000000000000000"),product7_sel3 => true,product7_sel4 => std_logic_vector'("0"),product7_sel5 => (product8_sel0 => array_of_product0'(0 to (2)-1 => (product0_sel0 => std_logic_vector'("0"),product0_sel1 => std_logic_vector'("0"))),product8_sel1 => unsigned'("00000000000000"),product8_sel2 => array_of_product0'(0 to (3)-1 => (product0_sel0 => std_logic_vector'("1"),product0_sel1 => std_logic_vector'("1"))),product8_sel3 => (product0_sel0 => std_logic_vector'("1"),product0_sel1 => std_logic_vector'("1")),product8_sel4 => (product0_sel0 => std_logic_vector'("1"),product0_sel1 => std_logic_vector'("1")),product8_sel5 => false,product8_sel6 => false,product8_sel7 => false,product8_sel8 => false,product8_sel9 => false),product7_sel6 => (product9_sel0 => true,product9_sel1 => true,product9_sel2 => false,product9_sel3 => false,product9_sel4 => to_unsigned(0,5)));
  
    process(system1000,system1000_rstn,n_104)
    begin
      if system1000_rstn = '0' then
        n_105 <= n_104;
      elsif rising_edge(system1000) then
        n_105 <= repANF_11;
      end if;
    end process;
  
    tmp_87 <= n_105;
  end block;
  -- register end
  
  x_8 <= tmp_87;
  
  repANF_9 <= (product4_sel0 => repANF_12
              ,product4_sel1 => repANF_13);
  
  with (subjLet_14) select
    bodyVar_10 <= altLet_15 when (true),
                  altLet_20 when others;
  
  repANF_11 <= y_26;
  
  repANF_12 <= (product5_sel0 => repANF_16
               ,product5_sel1 => repANF_17
               ,product5_sel2 => repANF_18
               ,product5_sel3 => ds4_25);
  
  repANF_13 <= (product2_sel0 => std_logic_vector'("0")
               ,product2_sel1 => isclOen_23
               ,product2_sel2 => std_logic_vector'("0")
               ,product2_sel3 => isdaOen_24);
  
  subjLet_14 <= sSCL_22 = std_logic_vector'("1");
  
  with (subjLet_19) select
    altLet_15 <= altLet_21 when (true),
                 altLet_20 when others;
  
  repANF_16 <= isdaOen1_34;
  
  repANF_17 <= ds16_35;
  
  repANF_18 <= ds14_36;
  
  subjLet_19 <= dSCL_30 = std_logic_vector'("0");
  
  altLet_20 <= altLet_27;
  
  altLet_21 <= altLet_28;
  
  sSCL_22 <= altLet_31;
  
  isclOen_23 <= isdaOen1_51;
  
  isdaOen_24 <= isdaOen1_52;
  
  ds4_25 <= x_8.product7_sel4;
  
  y_26 <= bodyVar_6.product6_sel1;
  
  altLet_27 <= altLet_45;
  
  altLet_28 <= altLet_47;
  
  with (subjLet_14) select
    bodyVar_29 <= altLet_48 when (true),
                  altLet_55 when others;
  
  dSCL_30 <= altLet_49;
  
  altLet_31 <= ds17_58;
  
  ds5_32 <= x_8.product7_sel5;
  
  ds6_33 <= x_8.product7_sel6;
  
  isdaOen1_34 <= ds6_33.product9_sel3;
  
  ds16_35 <= ds5_32.product8_sel9;
  
  ds14_36 <= ds5_32.product8_sel7;
  
  a39_37 <= subjLet_46.product10_sel1;
  
  x_38 <= bodyVar_29.product7_sel0;
  
  x1_39 <= bodyVar_29.product7_sel1;
  
  x2_40 <= bodyVar_29.product7_sel2;
  
  x3_41 <= bodyVar_29.product7_sel3;
  
  x4_42 <= bodyVar_29.product7_sel4;
  
  x5_43 <= bodyVar_29.product7_sel5;
  
  x6_44 <= bodyVar_29.product7_sel6;
  
  altLet_45 <= (product7_sel0 => x_38
               ,product7_sel1 => x1_39
               ,product7_sel2 => x2_40
               ,product7_sel3 => x3_41
               ,product7_sel4 => x4_42
               ,product7_sel5 => x5_43
               ,product7_sel6 => a39_37);
  
  I2C_nextStateDecoder1_6_subjLet_46 : entity I2C_nextStateDecoder1_6
    port map
      (topLet_o => subjLet_46
      ,cmd_i1   => cmd_i2
      ,clkEn_i2 => ds3_53
      ,dIn_i3   => dIn_i3
      ,eta_i4   => x6_44);
  
  altLet_47 <= (product7_sel0 => x_38
               ,product7_sel1 => x1_39
               ,product7_sel2 => x2_40
               ,product7_sel3 => x3_41
               ,product7_sel4 => repANF_54
               ,product7_sel5 => x5_43
               ,product7_sel6 => a39_37);
  
  with (subjLet_19) select
    altLet_48 <= altLet_56 when (true),
                 altLet_55 when others;
  
  altLet_49 <= ds17_65;
  
  ds10_50 <= ds5_32.product8_sel3;
  
  isdaOen1_51 <= ds6_33.product9_sel0;
  
  isdaOen1_52 <= ds6_33.product9_sel1;
  
  ds3_53 <= x_8.product7_sel3;
  
  repANF_54 <= altLet_60;
  
  with (ds1_59) select
    altLet_55 <= altLet_62 when (true),
                 altLet_61 when others;
  
  with (isclOen_23) select
    altLet_56 <= altLet_64 when (true),
                 altLet_63 when others;
  
  ds11_57 <= ds5_32.product8_sel4;
  
  ds17_58 <= ds10_50.product0_sel0;
  
  ds1_59 <= x_8.product7_sel1;
  
  altLet_60 <= ds18_75;
  
  altLet_61 <= altLet_68;
  
  altLet_62 <= altLet_69;
  
  with (ds1_59) select
    altLet_63 <= altLet_71 when (true),
                 altLet_70 when others;
  
  altLet_64 <= altLet_72;
  
  ds17_65 <= ds11_57.product0_sel0;
  
  repANF_66 <= ds2_74 - unsigned'("0000000000000001");
  
  a39_67 <= subjLet_77.product11_sel1;
  
  altLet_68 <= (product7_sel0 => isclOen_23
               ,product7_sel1 => a38_73
               ,product7_sel2 => repANF_66
               ,product7_sel3 => false
               ,product7_sel4 => ds4_25
               ,product7_sel5 => a39_67
               ,product7_sel6 => ds6_33);
  
  altLet_69 <= (product7_sel0 => isclOen_23
               ,product7_sel1 => a38_73
               ,product7_sel2 => ds2_74
               ,product7_sel3 => false
               ,product7_sel4 => ds4_25
               ,product7_sel5 => a39_67
               ,product7_sel6 => ds6_33);
  
  altLet_70 <= altLet_76;
  
  altLet_71 <= altLet_78;
  
  altLet_72 <= (product7_sel0 => true
               ,product7_sel1 => a38_73
               ,product7_sel2 => clkCnt_i1
               ,product7_sel3 => true
               ,product7_sel4 => ds4_25
               ,product7_sel5 => a39_67
               ,product7_sel6 => ds6_33);
  
  with (isclOen_23) select
    a38_73 <= altLet_79 when (true),
              altLet_85 when others;
  
  ds2_74 <= x_8.product7_sel2;
  
  ds18_75 <= ds10_50.product0_sel1;
  
  altLet_76 <= (product7_sel0 => false
               ,product7_sel1 => a38_73
               ,product7_sel2 => repANF_66
               ,product7_sel3 => false
               ,product7_sel4 => ds4_25
               ,product7_sel5 => a39_67
               ,product7_sel6 => ds6_33);
  
  I2C_busStatusCtrl1_7_subjLet_77 : entity I2C_busStatusCtrl1_7
    port map
      (topLet_o   => subjLet_77
      ,clkCnt_i1  => clkCnt_i1
      ,cmd_i2     => cmd_i2
      ,sdaChk_i3  => repANF_82
      ,isdaOen_i4 => isdaOen_24
      ,clkEn_i5   => ds3_53
      ,cState_i6  => repANF_83
      ,i2ci_i7    => i2ci_i4
      ,eta_i8     => ds5_32);
  
  altLet_78 <= (product7_sel0 => false
               ,product7_sel1 => a38_73
               ,product7_sel2 => ds2_74
               ,product7_sel3 => false
               ,product7_sel4 => ds4_25
               ,product7_sel5 => a39_67
               ,product7_sel6 => ds6_33);
  
  with (ds_86) select
    altLet_79 <= altLet_85 when (true),
                 altLet_84 when others;
  
  isdaOen1_80 <= ds6_33.product9_sel2;
  
  isdaOen1_81 <= ds6_33.product9_sel4;
  
  repANF_82 <= isdaOen1_80;
  
  repANF_83 <= isdaOen1_81;
  
  altLet_84 <= sSCL_22 = std_logic_vector'("0");
  
  with (ds1_59) select
    altLet_85 <= altLet_84 when (true),
                 false when others;
  
  ds_86 <= x_8.product7_sel0;
end;
