-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.I2C_types.all;

entity I2C_busStatusCtrl1_7 is
  port(clkCnt_i1  : in unsigned(15 downto 0);
       cmd_i2     : in unsigned(2 downto 0);
       sdaChk_i3  : in boolean;
       isdaOen_i4 : in boolean;
       clkEn_i5   : in boolean;
       cState_i6  : in unsigned(4 downto 0);
       i2ci_i7    : in product0;
       eta_i8     : in product8;
       topLet_o   : out product11);
end;

architecture structural of I2C_busStatusCtrl1_7 is
  signal bodyVar_0           : product11;
  signal subjLet_1           : integer;
  signal altLet_2            : product11;
  signal altLet_3            : product11;
  signal repANF_4            : product8;
  signal repANF_5            : product8;
  signal altLet_6            : product8;
  signal altLet_7            : product8;
  signal altLet_8            : product8;
  signal altLet_9            : product8;
  signal altLet_10           : product8;
  signal altLet_11           : product8;
  signal altLet_12           : product8;
  signal altLet_13           : product8;
  signal x_14                : array_of_product0(0 to 1);
  signal x2_15               : unsigned(13 downto 0);
  signal x3_16               : array_of_product0(0 to 2);
  signal x4_17               : product0;
  signal x5_18               : product0;
  signal x6_19               : boolean;
  signal x7_20               : boolean;
  signal x8_21               : boolean;
  signal x9_22               : boolean;
  signal repANF_23           : boolean;
  signal repANF_24           : boolean;
  signal bodyVar_25          : product8;
  signal masterHighBusLow_26 : boolean;
  signal altLet_27           : boolean;
  signal bodyVar_28          : product8;
  signal subjLet_29          : boolean;
  signal altLet_30           : product8;
  signal altLet_31           : boolean;
  signal altLet_32           : boolean;
  signal bodyVar_33          : product8;
  signal bodyVar_34          : product8;
  signal szm_35              : product8;
  signal subjLet_36          : boolean;
  signal ds1_37              : unsigned(13 downto 0);
  signal ds6_38              : boolean;
  signal x_39                : array_of_product0(0 to 1);
  signal x2_40               : unsigned(13 downto 0);
  signal x3_41               : array_of_product0(0 to 2);
  signal x9_42               : boolean;
  signal x10_43              : boolean;
  signal repANF_44           : product0;
  signal repANF_45           : boolean;
  signal repANF_46           : boolean;
  signal repANF_47           : boolean;
  signal x_48                : array_of_product0(0 to 1);
  signal x2_49               : unsigned(13 downto 0);
  signal x3_50               : array_of_product0(0 to 2);
  signal x9_51               : boolean;
  signal x10_52              : boolean;
  signal altLet_53           : product8;
  signal bodyVar_54          : product8;
  signal sSDA_55             : std_logic_vector(0 downto 0);
  signal ds3_56              : product0;
  signal ds8_57              : boolean;
  signal subjLet_58          : boolean;
  signal altLet_59           : boolean;
  signal repANF_60           : std_logic_vector(0 downto 0);
  signal repANF_61           : std_logic_vector(0 downto 0);
  signal altLet_62           : boolean;
  signal altLet_63           : boolean;
  signal altLet_64           : boolean;
  signal repANF_65           : array_of_product0(0 to 2);
  signal x4_66               : product0;
  signal x5_67               : product0;
  signal x6_68               : boolean;
  signal x7_69               : boolean;
  signal x8_70               : boolean;
  signal altLet_71           : product8;
  signal altLet_72           : product8;
  signal ds5_73              : boolean;
  signal repANF_74           : array_of_std_logic_vector_1(0 to 2);
  signal repANF_75           : array_of_std_logic_vector_1(0 to 2);
  signal subjLet_76          : boolean;
  signal altLet_77           : boolean;
  signal subjLet_78          : boolean;
  signal subjLet_79          : product12;
  signal repANF_80           : unsigned(13 downto 0);
  signal repANF_81           : unsigned(13 downto 0);
  signal a16_82              : array_of_product0(0 to 1);
  signal ds18_83             : std_logic_vector(0 downto 0);
  signal ds2_84              : array_of_product0(0 to 2);
  signal ds4_85              : product0;
  signal ds7_86              : boolean;
  signal ds9_87              : boolean;
  signal dSDA_88             : std_logic_vector(0 downto 0);
  signal sSCL_89             : std_logic_vector(0 downto 0);
  signal repANF_90           : array_of_product0(0 to 3);
  signal x_91                : array_of_product0(0 to 2);
  signal subjLet_92          : product13;
  signal altLet_93           : unsigned(13 downto 0);
  signal subjLet_94          : product14;
  signal repANF_95           : array_of_product0(0 to 0);
  signal repANF_96           : std_logic_vector(15 downto 0);
  signal x_97                : std_logic_vector(13 downto 0);
  signal repANF_98           : array_of_product0(0 to 2);
  signal x_99                : array_of_product0(0 to 1);
  signal ds18_100            : std_logic_vector(0 downto 0);
  signal ds17_101            : std_logic_vector(0 downto 0);
  signal repANF_102          : product0;
  signal repANF_103          : array_of_product0(0 to 0);
  signal ds_104              : array_of_product0(0 to 1);
  signal tmp_dtt_rhs_105     : unsigned(4 downto 0);
  signal tmp_dtt_106         : integer;
  signal tmp_113             : array_of_std_logic_vector_1(0 to 2);
  signal tmp_121             : array_of_std_logic_vector_1(0 to 2);
  signal tmp_135             : product12;
  signal tmp_142             : product13;
  signal tmp_146             : product14;
  signal tmp_152             : product0;
begin
  with (subjLet_1) select
    bodyVar_0 <= altLet_3 when (0),
                 altLet_2 when others;
  
  tmp_dtt_rhs_105 <= cState_i6;
  
  tmp_dtt_106 <= to_integer(tmp_dtt_rhs_105);
  
  subjLet_1 <= tmp_dtt_106;
  
  altLet_2 <= (product11_sel0 => to_unsigned(0
                                            ,1)
              ,product11_sel1 => repANF_4);
  
  altLet_3 <= (product11_sel0 => to_unsigned(0
                                            ,1)
              ,product11_sel1 => repANF_5);
  
  with (clkEn_i5) select
    repANF_4 <= altLet_7 when (true),
                altLet_6 when others;
  
  with (clkEn_i5) select
    repANF_5 <= altLet_9 when (true),
                altLet_8 when others;
  
  altLet_6 <= altLet_10;
  
  altLet_7 <= altLet_11;
  
  altLet_8 <= altLet_12;
  
  altLet_9 <= altLet_13;
  
  altLet_10 <= (product8_sel0 => x_14
               ,product8_sel1 => x2_15
               ,product8_sel2 => x3_16
               ,product8_sel3 => x4_17
               ,product8_sel4 => x5_18
               ,product8_sel5 => x6_19
               ,product8_sel6 => x7_20
               ,product8_sel7 => x8_21
               ,product8_sel8 => x9_22
               ,product8_sel9 => masterHighBusLow_26);
  
  altLet_11 <= (product8_sel0 => x_14
               ,product8_sel1 => x2_15
               ,product8_sel2 => x3_16
               ,product8_sel3 => x4_17
               ,product8_sel4 => x5_18
               ,product8_sel5 => x6_19
               ,product8_sel6 => x7_20
               ,product8_sel7 => x8_21
               ,product8_sel8 => repANF_23
               ,product8_sel9 => masterHighBusLow_26);
  
  altLet_12 <= (product8_sel0 => x_14
               ,product8_sel1 => x2_15
               ,product8_sel2 => x3_16
               ,product8_sel3 => x4_17
               ,product8_sel4 => x5_18
               ,product8_sel5 => x6_19
               ,product8_sel6 => x7_20
               ,product8_sel7 => x8_21
               ,product8_sel8 => x9_22
               ,product8_sel9 => repANF_24);
  
  altLet_13 <= (product8_sel0 => x_14
               ,product8_sel1 => x2_15
               ,product8_sel2 => x3_16
               ,product8_sel3 => x4_17
               ,product8_sel4 => x5_18
               ,product8_sel5 => x6_19
               ,product8_sel6 => x7_20
               ,product8_sel7 => x8_21
               ,product8_sel8 => repANF_23
               ,product8_sel9 => repANF_24);
  
  x_14 <= bodyVar_25.product8_sel0;
  
  x2_15 <= bodyVar_25.product8_sel1;
  
  x3_16 <= bodyVar_25.product8_sel2;
  
  x4_17 <= bodyVar_25.product8_sel3;
  
  x5_18 <= bodyVar_25.product8_sel4;
  
  x6_19 <= bodyVar_25.product8_sel5;
  
  x7_20 <= bodyVar_25.product8_sel6;
  
  x8_21 <= bodyVar_25.product8_sel7;
  
  x9_22 <= bodyVar_25.product8_sel8;
  
  with (cmd_i2) select
    repANF_23 <= true when ("010"),
                 false when others;
  
  with (masterHighBusLow_26) select
    repANF_24 <= true when (true),
                 altLet_27 when others;
  
  with (subjLet_29) select
    bodyVar_25 <= bodyVar_28 when (true),
                  altLet_30 when others;
  
  with (sdaChk_i3) select
    masterHighBusLow_26 <= altLet_31 when (true),
                           false when others;
  
  with (ds6_38) select
    altLet_27 <= altLet_32 when (true),
                 false when others;
  
  bodyVar_28 <= bodyVar_34;
  
  subjLet_29 <= ds1_37 = unsigned'("00000000000000");
  
  altLet_30 <= bodyVar_33;
  
  with (subjLet_36) select
    altLet_31 <= isdaOen_i4 when (true),
                 false when others;
  
  with (ds8_57) select
    altLet_32 <= false when (true),
                 true when others;
  
  bodyVar_33 <= (product8_sel0 => x_39
                ,product8_sel1 => x2_40
                ,product8_sel2 => x3_41
                ,product8_sel3 => repANF_44
                ,product8_sel4 => ds3_56
                ,product8_sel5 => repANF_45
                ,product8_sel6 => repANF_46
                ,product8_sel7 => repANF_47
                ,product8_sel8 => x9_42
                ,product8_sel9 => x10_43);
  
  bodyVar_34 <= (product8_sel0 => x_48
                ,product8_sel1 => x2_49
                ,product8_sel2 => x3_50
                ,product8_sel3 => repANF_44
                ,product8_sel4 => ds3_56
                ,product8_sel5 => repANF_45
                ,product8_sel6 => repANF_46
                ,product8_sel7 => repANF_47
                ,product8_sel8 => x9_51
                ,product8_sel9 => x10_52);
  
  szm_35 <= altLet_53;
  
  subjLet_36 <= sSDA_55 = std_logic_vector'("0");
  
  ds1_37 <= eta_i8.product8_sel1;
  
  ds6_38 <= eta_i8.product8_sel6;
  
  x_39 <= bodyVar_54.product8_sel0;
  
  x2_40 <= bodyVar_54.product8_sel1;
  
  x3_41 <= bodyVar_54.product8_sel2;
  
  x9_42 <= bodyVar_54.product8_sel8;
  
  x10_43 <= bodyVar_54.product8_sel9;
  
  repANF_44 <= (product0_sel0 => repANF_60
               ,product0_sel1 => repANF_61);
  
  with (subjLet_36) select
    repANF_45 <= altLet_62 when (true),
                 false when others;
  
  with (subjLet_58) select
    repANF_46 <= altLet_63 when (true),
                 false when others;
  
  with (ds5_73) select
    repANF_47 <= altLet_59 when (true),
                 altLet_64 when others;
  
  x_48 <= szm_35.product8_sel0;
  
  x2_49 <= szm_35.product8_sel1;
  
  x3_50 <= szm_35.product8_sel2;
  
  x9_51 <= szm_35.product8_sel8;
  
  x10_52 <= szm_35.product8_sel9;
  
  altLet_53 <= (product8_sel0 => x_39
               ,product8_sel1 => x2_40
               ,product8_sel2 => repANF_65
               ,product8_sel3 => x4_66
               ,product8_sel4 => x5_67
               ,product8_sel5 => x6_68
               ,product8_sel6 => x7_69
               ,product8_sel7 => x8_70
               ,product8_sel8 => x9_42
               ,product8_sel9 => x10_43);
  
  with (subjLet_29) select
    bodyVar_54 <= altLet_72 when (true),
                  altLet_71 when others;
  
  sSDA_55 <= ds18_83;
  
  ds3_56 <= eta_i8.product8_sel3;
  
  ds8_57 <= eta_i8.product8_sel8;
  
  subjLet_58 <= sSDA_55 = std_logic_vector'("1");
  
  with (ds6_38) select
    altLet_59 <= false when (true),
                 true when others;
  
  I2C_filterT_8_repANF_60 : entity I2C_filterT_8
    port map
      (topLet_o => repANF_60
      ,f_i1     => repANF_74);
  
  I2C_filterT_8_repANF_61 : entity I2C_filterT_8
    port map
      (topLet_o => repANF_61
      ,f_i1     => repANF_75);
  
  with (subjLet_76) select
    altLet_62 <= altLet_77 when (true),
                 false when others;
  
  with (subjLet_78) select
    altLet_63 <= altLet_77 when (true),
                 false when others;
  
  with (ds7_86) select
    altLet_64 <= altLet_59 when (true),
                 false when others;
  
  repANF_65 <= x_91;
  
  x4_66 <= bodyVar_54.product8_sel3;
  
  x5_67 <= bodyVar_54.product8_sel4;
  
  x6_68 <= bodyVar_54.product8_sel5;
  
  x7_69 <= bodyVar_54.product8_sel6;
  
  x8_70 <= bodyVar_54.product8_sel7;
  
  altLet_71 <= (product8_sel0 => a16_82
               ,product8_sel1 => repANF_80
               ,product8_sel2 => ds2_84
               ,product8_sel3 => ds3_56
               ,product8_sel4 => ds4_85
               ,product8_sel5 => ds5_73
               ,product8_sel6 => ds6_38
               ,product8_sel7 => ds7_86
               ,product8_sel8 => ds8_57
               ,product8_sel9 => ds9_87);
  
  altLet_72 <= (product8_sel0 => a16_82
               ,product8_sel1 => repANF_81
               ,product8_sel2 => ds2_84
               ,product8_sel3 => ds3_56
               ,product8_sel4 => ds4_85
               ,product8_sel5 => ds5_73
               ,product8_sel6 => ds6_38
               ,product8_sel7 => ds7_86
               ,product8_sel8 => ds8_57
               ,product8_sel9 => ds9_87);
  
  ds5_73 <= eta_i8.product8_sel5;
  
  -- map begin
  map_n_115 : block
    signal n_116 : array_of_product0(0 to 2);
  begin
    n_116 <= ds2_84;
  
    mapZ_n_117 : if tmp_113'length = 0 generate
      tmp_113 <= (others => (others => 'X'));
    end generate;
  
    mapSN_n_118 : if tmp_113'length /= 0 generate
      mapIter_n_119 : for n_120 in tmp_113'range generate
      begin
        I2C_scli_9_114 : entity I2C_scli_9
  port map
  (topLet_o => tmp_113(n_120)
  ,ds_i1 => n_116(n_120));
      end generate;
    end generate;
  end block;
  -- map end
  
  repANF_74 <= tmp_113;
  
  -- map begin
  map_n_123 : block
    signal n_124 : array_of_product0(0 to 2);
  begin
    n_124 <= ds2_84;
  
    mapZ_n_125 : if tmp_121'length = 0 generate
      tmp_121 <= (others => (others => 'X'));
    end generate;
  
    mapSN_n_126 : if tmp_121'length /= 0 generate
      mapIter_n_127 : for n_128 in tmp_121'range generate
      begin
        I2C_sdai_10_122 : entity I2C_sdai_10
  port map
  (topLet_o => tmp_121(n_128)
  ,ds_i1 => n_124(n_128));
      end generate;
    end generate;
  end block;
  -- map end
  
  repANF_75 <= tmp_121;
  
  subjLet_76 <= dSDA_88 = std_logic_vector'("1");
  
  altLet_77 <= sSCL_89 = std_logic_vector'("1");
  
  subjLet_78 <= dSDA_88 = std_logic_vector'("0");
  
  -- sliptAt begin
  splitAt_n_137 : block
    signal n_138 : array_of_product0(0 to 3);
  begin
    n_138 <= repANF_90;
    tmp_135 <= (n_138(tmp_135.product12_sel0'left to tmp_135.product12_sel0'right)
               ,n_138(tmp_135.product12_sel1'left + tmp_135.product12_sel0'length to tmp_135.product12_sel1'right + tmp_135.product12_sel0'length));
  end block;
  -- splitAt end
  
  subjLet_79 <= tmp_135;
  
  repANF_80 <= ds1_37 - unsigned'("00000000000001");
  
  repANF_81 <= altLet_93;
  
  a16_82 <= x_99;
  
  ds18_83 <= ds3_56.product0_sel1;
  
  ds2_84 <= eta_i8.product8_sel2;
  
  ds4_85 <= eta_i8.product8_sel4;
  
  ds7_86 <= eta_i8.product8_sel7;
  
  ds9_87 <= eta_i8.product8_sel9;
  
  dSDA_88 <= ds18_100;
  
  sSCL_89 <= ds17_101;
  
  repANF_90 <= array_of_product0'(repANF_95) & array_of_product0'(ds2_84);
  
  x_91 <= subjLet_79.product12_sel0;
  
  -- split begin
  split_n_143: block
    signal n_144 : std_logic_vector(15 downto 0);
  begin
    n_144 <= repANF_96;
    tmp_142 <= ( n_144(tmp_142.product13_sel0'left + tmp_142.product13_sel1'length downto
                 tmp_142.product13_sel0'right + tmp_142.product13_sel1'length)
               , n_144(tmp_142.product13_sel1'left downto tmp_142.product13_sel1'right)
               );
  end block;
  -- split end
  
  subjLet_92 <= tmp_142;
  
  altLet_93 <= unsigned(x_97);
  
  -- sliptAt begin
  splitAt_n_148 : block
    signal n_149 : array_of_product0(0 to 2);
  begin
    n_149 <= repANF_98;
    tmp_146 <= (n_149(tmp_146.product14_sel0'left to tmp_146.product14_sel0'right)
               ,n_149(tmp_146.product14_sel1'left + tmp_146.product14_sel0'length to tmp_146.product14_sel1'right + tmp_146.product14_sel0'length));
  end block;
  -- splitAt end
  
  subjLet_94 <= tmp_146;
  
  repANF_95 <= array_of_product0'(0 => repANF_102);
  
  repANF_96 <= std_logic_vector(clkCnt_i1);
  
  x_97 <= subjLet_92.product13_sel0;
  
  repANF_98 <= array_of_product0'(repANF_103) & array_of_product0'(ds_104);
  
  x_99 <= subjLet_94.product14_sel0;
  
  ds18_100 <= ds4_85.product0_sel1;
  
  ds17_101 <= ds3_56.product0_sel0;
  
  -- last begin
  last_n_153 : block
    signal n_154 : array_of_product0(0 to 1);
  begin
    n_154 <= ds_104;
    tmp_152 <= n_154(n_154'high);
  end block;
  -- last end
  
  repANF_102 <= tmp_152;
  
  repANF_103 <= array_of_product0'(0 => i2ci_i7);
  
  ds_104 <= eta_i8.product8_sel0;
  
  topLet_o <= bodyVar_0;
end;
