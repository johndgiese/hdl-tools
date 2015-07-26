-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.I2C_types.all;

entity I2C_masterByteCtrlT_3 is
  port(startCmd_i1 : in boolean;
       stopCmd_i2  : in boolean;
       readCmd_i3  : in boolean;
       writeCmd_i4 : in boolean;
       ackIn_i5    : in boolean;
       dIn_i6      : in std_logic_vector(7 downto 0);
       coreAck_i7  : in boolean;
       coreRxd_i8  : in std_logic_vector(0 downto 0);
       eta_i9      : in product15;
       bodyVar_o   : out product16);
end;

architecture structural of I2C_masterByteCtrlT_3 is
  signal bodyVar_0  : product16;
  signal repANF_1   : product3;
  signal bodyVar_2  : product15;
  signal altLet_3   : product15;
  signal altLet_4   : product15;
  signal altLet_5   : product15;
  signal altLet_6   : product15;
  signal altLet_7   : product15;
  signal altLet_8   : product15;
  signal dOut_9     : std_logic_vector(7 downto 0);
  signal ds_10      : unsigned(2 downto 0);
  signal ds1_11     : unsigned(2 downto 0);
  signal ds2_12     : std_logic_vector(0 downto 0);
  signal ds5_13     : boolean;
  signal ds6_14     : boolean;
  signal altLet_15  : product15;
  signal altLet_16  : product15;
  signal altLet_17  : product15;
  signal altLet_18  : product15;
  signal altLet_19  : product15;
  signal altLet_20  : product15;
  signal altLet_21  : product15;
  signal ds7_22     : product17;
  signal altLet_23  : product15;
  signal altLet_24  : product15;
  signal altLet_25  : product15;
  signal altLet_26  : product15;
  signal altLet_27  : product15;
  signal altLet_28  : product15;
  signal altLet_29  : product15;
  signal altLet_30  : product15;
  signal altLet_31  : product15;
  signal ds8_32     : product18;
  signal ds8_33     : std_logic_vector(7 downto 0);
  signal altLet_34  : product15;
  signal szm_35     : product15;
  signal altLet_36  : product15;
  signal altLet_37  : product15;
  signal altLet_38  : product15;
  signal altLet_39  : product15;
  signal a27_40     : boolean;
  signal altLet_41  : product15;
  signal altLet_42  : product15;
  signal altLet_43  : product15;
  signal altLet_44  : product15;
  signal altLet_45  : product15;
  signal altLet_46  : product15;
  signal subjLet_47 : product19;
  signal altLet_48  : product18;
  signal szm_49     : product15;
  signal repANF_50  : std_logic_vector(0 downto 0);
  signal x_51       : unsigned(2 downto 0);
  signal x1_52      : unsigned(2 downto 0);
  signal x6_53      : boolean;
  signal x7_54      : product17;
  signal altLet_55  : product15;
  signal altLet_56  : product15;
  signal altLet_57  : product15;
  signal altLet_58  : product15;
  signal altLet_59  : product15;
  signal altLet_60  : product15;
  signal altLet_61  : product15;
  signal altLet_62  : product15;
  signal repANF_63  : product15;
  signal s1_64      : boolean;
  signal ds3_65     : boolean;
  signal ds4_66     : boolean;
  signal b1_67      : std_logic_vector(0 downto 0);
  signal altLet_68  : product15;
  signal altLet_69  : product15;
  signal x2_70      : std_logic_vector(0 downto 0);
  signal x3_71      : boolean;
  signal x5_72      : boolean;
  signal x6_73      : boolean;
  signal x7_74      : product17;
  signal a39_75     : product17;
  signal b2_76      : boolean;
  signal altLet_77  : product15;
  signal altLet_78  : product15;
  signal altLet_79  : product15;
  signal eta_80     : product15;
  signal altLet_81  : product15;
  signal altLet_82  : product15;
  signal altLet_83  : product15;
  signal altLet_84  : product15;
  signal altLet_85  : product15;
  signal altLet_86  : product15;
  signal altLet_87  : product15;
  signal tmp_88     : std_logic_vector(0 downto 0);
begin
  bodyVar_o <= bodyVar_0;
  
  bodyVar_0 <= (product16_sel0 => repANF_1
               ,product16_sel1 => bodyVar_2);
  
  repANF_1 <= (product3_sel0 => ds1_11
              ,product3_sel1 => ds2_12
              ,product3_sel2 => ds5_13
              ,product3_sel3 => ds6_14
              ,product3_sel4 => dOut_9);
  
  with (ds_10) select
    bodyVar_2 <= altLet_8 when ("101"),
                 altLet_7 when ("100"),
                 altLet_6 when ("011"),
                 altLet_5 when ("010"),
                 altLet_4 when ("001"),
                 altLet_3 when others;
  
  with (readCmd_i3) select
    altLet_3 <= altLet_34 when (true),
                altLet_15 when others;
  
  with (coreAck_i7) select
    altLet_4 <= altLet_16 when (true),
                eta_80 when others;
  
  with (coreAck_i7) select
    altLet_5 <= altLet_17 when (true),
                eta_80 when others;
  
  with (coreAck_i7) select
    altLet_6 <= altLet_18 when (true),
                eta_80 when others;
  
  with (coreAck_i7) select
    altLet_7 <= altLet_20 when (true),
                altLet_19 when others;
  
  with (coreAck_i7) select
    altLet_8 <= altLet_21 when (true),
                eta_80 when others;
  
  dOut_9 <= ds8_33;
  
  ds_10 <= eta_i9.product15_sel0;
  
  ds1_11 <= eta_i9.product15_sel1;
  
  ds2_12 <= eta_i9.product15_sel2;
  
  ds5_13 <= eta_i9.product15_sel5;
  
  ds6_14 <= eta_i9.product15_sel6;
  
  with (writeCmd_i4) select
    altLet_15 <= altLet_34 when (true),
                 altLet_23 when others;
  
  with (readCmd_i3) select
    altLet_16 <= altLet_25 when (true),
                 altLet_24 when others;
  
  altLet_17 <= altLet_26;
  
  altLet_18 <= altLet_27;
  
  altLet_19 <= altLet_28;
  
  with (stopCmd_i2) select
    altLet_20 <= altLet_30 when (true),
                 altLet_29 when others;
  
  altLet_21 <= altLet_31;
  
  ds7_22 <= eta_i9.product15_sel7;
  
  with (stopCmd_i2) select
    altLet_23 <= altLet_34 when (true),
                 eta_80 when others;
  
  altLet_24 <= altLet_36;
  
  altLet_25 <= altLet_37;
  
  with (a27_40) select
    altLet_26 <= altLet_39 when (true),
                 altLet_38 when others;
  
  with (a27_40) select
    altLet_27 <= altLet_42 when (true),
                 altLet_41 when others;
  
  altLet_28 <= altLet_43;
  
  altLet_29 <= altLet_44;
  
  altLet_30 <= altLet_45;
  
  altLet_31 <= altLet_46;
  
  ds8_32 <= altLet_48;
  
  ds8_33 <= ds7_22.product17_sel0;
  
  with (ds5_13) select
    altLet_34 <= eta_80 when (true),
                 szm_49 when others;
  
  szm_35 <= ds8_32.product18_sel1;
  
  altLet_36 <= altLet_55;
  
  altLet_37 <= altLet_56;
  
  altLet_38 <= altLet_57;
  
  altLet_39 <= altLet_58;
  
  a27_40 <= ds8_32.product18_sel0;
  
  altLet_41 <= altLet_59;
  
  altLet_42 <= altLet_60;
  
  altLet_43 <= (product15_sel0 => x_51
               ,product15_sel1 => x1_52
               ,product15_sel2 => b1_67
               ,product15_sel3 => false
               ,product15_sel4 => false
               ,product15_sel5 => false
               ,product15_sel6 => x6_53
               ,product15_sel7 => x7_54);
  
  altLet_44 <= altLet_61;
  
  altLet_45 <= altLet_62;
  
  altLet_46 <= (product15_sel0 => to_unsigned(0
                                             ,3)
               ,product15_sel1 => to_unsigned(0
                                             ,3)
               ,product15_sel2 => repANF_50
               ,product15_sel3 => false
               ,product15_sel4 => false
               ,product15_sel5 => true
               ,product15_sel6 => x6_53
               ,product15_sel7 => x7_54);
  
  I2C_shiftRegister1_4_subjLet_47 : entity I2C_shiftRegister1_4
    port map
      (topLet_o   => subjLet_47
      ,ld_i1      => ds4_66
      ,shift_i2   => ds3_65
      ,dIn_i3     => dIn_i6
      ,coreRxd_i4 => coreRxd_i8
      ,eta_i5     => ds7_22);
  
  altLet_48 <= (product18_sel0 => s1_64
               ,product18_sel1 => repANF_63);
  
  with (startCmd_i1) select
    szm_49 <= altLet_69 when (true),
              altLet_68 when others;
  
  -- msb begin
  msb_n_89 : block
    signal n_90 : std_logic_vector(7 downto 0);
  begin
    n_91_generate : if n_90'length = 0 generate
    begin
      tmp_88 <= "0";
    end generate;
  
    n_92_generate : if n_90'length /= 0 generate
      n_90 <= dOut_9;
      tmp_88 <= n_90(n_90'high downto n_90'high);
    end generate;
  end block;
  -- msb end
  
  repANF_50 <= tmp_88;
  
  x_51 <= szm_35.product15_sel0;
  
  x1_52 <= szm_35.product15_sel1;
  
  x6_53 <= szm_35.product15_sel6;
  
  x7_54 <= szm_35.product15_sel7;
  
  altLet_55 <= (product15_sel0 => to_unsigned(3
                                             ,3)
               ,product15_sel1 => to_unsigned(4
                                             ,3)
               ,product15_sel2 => repANF_50
               ,product15_sel3 => false
               ,product15_sel4 => true
               ,product15_sel5 => false
               ,product15_sel6 => x6_53
               ,product15_sel7 => x7_54);
  
  altLet_56 <= (product15_sel0 => to_unsigned(2
                                             ,3)
               ,product15_sel1 => to_unsigned(3
                                             ,3)
               ,product15_sel2 => repANF_50
               ,product15_sel3 => false
               ,product15_sel4 => true
               ,product15_sel5 => false
               ,product15_sel6 => x6_53
               ,product15_sel7 => x7_54);
  
  altLet_57 <= (product15_sel0 => to_unsigned(2
                                             ,3)
               ,product15_sel1 => to_unsigned(3
                                             ,3)
               ,product15_sel2 => b1_67
               ,product15_sel3 => true
               ,product15_sel4 => false
               ,product15_sel5 => false
               ,product15_sel6 => x6_53
               ,product15_sel7 => x7_54);
  
  altLet_58 <= (product15_sel0 => to_unsigned(4
                                             ,3)
               ,product15_sel1 => to_unsigned(4
                                             ,3)
               ,product15_sel2 => b1_67
               ,product15_sel3 => true
               ,product15_sel4 => false
               ,product15_sel5 => false
               ,product15_sel6 => x6_53
               ,product15_sel7 => x7_54);
  
  altLet_59 <= (product15_sel0 => to_unsigned(3
                                             ,3)
               ,product15_sel1 => to_unsigned(4
                                             ,3)
               ,product15_sel2 => repANF_50
               ,product15_sel3 => true
               ,product15_sel4 => false
               ,product15_sel5 => false
               ,product15_sel6 => x6_53
               ,product15_sel7 => x7_54);
  
  altLet_60 <= (product15_sel0 => to_unsigned(4
                                             ,3)
               ,product15_sel1 => to_unsigned(3
                                             ,3)
               ,product15_sel2 => repANF_50
               ,product15_sel3 => false
               ,product15_sel4 => false
               ,product15_sel5 => false
               ,product15_sel6 => x6_53
               ,product15_sel7 => x7_54);
  
  altLet_61 <= (product15_sel0 => to_unsigned(0
                                             ,3)
               ,product15_sel1 => to_unsigned(0
                                             ,3)
               ,product15_sel2 => std_logic_vector'("1")
               ,product15_sel3 => false
               ,product15_sel4 => false
               ,product15_sel5 => true
               ,product15_sel6 => b2_76
               ,product15_sel7 => x7_54);
  
  altLet_62 <= (product15_sel0 => to_unsigned(5
                                             ,3)
               ,product15_sel1 => to_unsigned(2
                                             ,3)
               ,product15_sel2 => std_logic_vector'("1")
               ,product15_sel3 => false
               ,product15_sel4 => false
               ,product15_sel5 => false
               ,product15_sel6 => b2_76
               ,product15_sel7 => x7_54);
  
  repANF_63 <= (product15_sel0 => ds_10
               ,product15_sel1 => ds1_11
               ,product15_sel2 => ds2_12
               ,product15_sel3 => ds3_65
               ,product15_sel4 => ds4_66
               ,product15_sel5 => ds5_13
               ,product15_sel6 => ds6_14
               ,product15_sel7 => a39_75);
  
  s1_64 <= subjLet_47.product19_sel0;
  
  ds3_65 <= eta_i9.product15_sel3;
  
  ds4_66 <= eta_i9.product15_sel4;
  
  with (ackIn_i5) select
    b1_67 <= "1" when (true),
             "0" when others;
  
  with (readCmd_i3) select
    altLet_68 <= altLet_78 when (true),
                 altLet_77 when others;
  
  altLet_69 <= altLet_79;
  
  x2_70 <= eta_80.product15_sel2;
  
  x3_71 <= eta_80.product15_sel3;
  
  x5_72 <= eta_80.product15_sel5;
  
  x6_73 <= eta_80.product15_sel6;
  
  x7_74 <= eta_80.product15_sel7;
  
  a39_75 <= subjLet_47.product19_sel1;
  
  b2_76 <= coreRxd_i8 = ("1");
  
  with (writeCmd_i4) select
    altLet_77 <= altLet_84 when (true),
                 altLet_83 when others;
  
  altLet_78 <= altLet_85;
  
  altLet_79 <= (product15_sel0 => to_unsigned(1
                                             ,3)
               ,product15_sel1 => to_unsigned(1
                                             ,3)
               ,product15_sel2 => x2_70
               ,product15_sel3 => x3_71
               ,product15_sel4 => true
               ,product15_sel5 => x5_72
               ,product15_sel6 => x6_73
               ,product15_sel7 => x7_74);
  
  eta_80 <= altLet_86;
  
  altLet_81 <= (product15_sel0 => to_unsigned(5
                                             ,3)
               ,product15_sel1 => to_unsigned(2
                                             ,3)
               ,product15_sel2 => x2_70
               ,product15_sel3 => x3_71
               ,product15_sel4 => true
               ,product15_sel5 => x5_72
               ,product15_sel6 => x6_73
               ,product15_sel7 => x7_74);
  
  altLet_82 <= (product15_sel0 => to_unsigned(3
                                             ,3)
               ,product15_sel1 => to_unsigned(4
                                             ,3)
               ,product15_sel2 => x2_70
               ,product15_sel3 => x3_71
               ,product15_sel4 => true
               ,product15_sel5 => x5_72
               ,product15_sel6 => x6_73
               ,product15_sel7 => x7_74);
  
  altLet_83 <= altLet_81;
  
  altLet_84 <= altLet_82;
  
  altLet_85 <= (product15_sel0 => to_unsigned(2
                                             ,3)
               ,product15_sel1 => to_unsigned(3
                                             ,3)
               ,product15_sel2 => x2_70
               ,product15_sel3 => x3_71
               ,product15_sel4 => true
               ,product15_sel5 => x5_72
               ,product15_sel6 => x6_73
               ,product15_sel7 => x7_74);
  
  altLet_86 <= altLet_87;
  
  altLet_87 <= (product15_sel0 => x_51
               ,product15_sel1 => x1_52
               ,product15_sel2 => repANF_50
               ,product15_sel3 => false
               ,product15_sel4 => false
               ,product15_sel5 => false
               ,product15_sel6 => x6_53
               ,product15_sel7 => x7_54);
end;
