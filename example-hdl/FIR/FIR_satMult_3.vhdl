-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.FIR_types.all;

entity FIR_satMult_3 is
  port(eta_i1   : in signed(15 downto 0);
       eta_i2   : in signed(15 downto 0);
       topLet_o : out signed(15 downto 0));
end;

architecture structural of FIR_satMult_3 is
  signal ww2_0     : std_logic_vector(15 downto 0);
  signal ww1_1     : std_logic_vector(15 downto 0);
  signal altLet_2  : signed(15 downto 0);
  signal subjLet_3 : product0;
  signal altLet_4  : signed(15 downto 0);
  signal altLet_5  : signed(15 downto 0);
  signal subjLet_6 : boolean;
  signal subjLet_7 : boolean;
  signal repANF_8  : std_logic_vector(0 downto 0);
  signal repANF_9  : std_logic_vector(0 downto 0);
  signal repANF_10 : std_logic_vector(0 downto 0);
  signal repANF_11 : std_logic_vector(0 downto 0);
  signal repANF_12 : std_logic_vector(0 downto 0);
  signal repANF_13 : std_logic_vector(16 downto 0);
  signal repANF_14 : std_logic_vector(0 downto 0);
  signal repANF_15 : std_logic_vector(31 downto 0);
  signal repANF_16 : signed(31 downto 0);
  signal tmp_17    : product0;
  signal tmp_27    : std_logic_vector(0 downto 0);
  signal tmp_33    : std_logic_vector(0 downto 0);
  signal tmp_36    : std_logic_vector(0 downto 0);
  signal tmp_39    : std_logic_vector(0 downto 0);
begin
  topLet_o <= altLet_2;
  
  ww2_0 <= subjLet_3.product0_sel1;
  
  ww1_1 <= subjLet_3.product0_sel0;
  
  with (subjLet_6) select
    altLet_2 <= altLet_4 when (true),
                altLet_5 when others;
  
  -- split begin
  split_n_18: block
    signal n_19 : std_logic_vector(31 downto 0);
  begin
    n_19 <= repANF_15;
    tmp_17 <= ( n_19(tmp_17.product0_sel0'left + tmp_17.product0_sel1'length downto
                 tmp_17.product0_sel0'right + tmp_17.product0_sel1'length)
               , n_19(tmp_17.product0_sel1'left downto tmp_17.product0_sel1'right)
               );
  end block;
  -- split end
  
  subjLet_3 <= tmp_17;
  
  altLet_4 <= signed(ww2_0);
  
  with (subjLet_7) select
    altLet_5 <= signed'(0 => '0', 1 to 16-1  => '1') when (true),
                signed'(0 => '1', 1 to 16-1 => '0') when others;
  
  subjLet_6 <= repANF_9 = std_logic_vector'("1");
  
  subjLet_7 <= repANF_8 = std_logic_vector'("0");
  
  -- msb begin
  msb_n_28 : block
    signal n_29 : std_logic_vector(15 downto 0);
  begin
    n_30_generate : if n_29'length = 0 generate
    begin
      tmp_27 <= "0";
    end generate;
  
    n_31_generate : if n_29'length /= 0 generate
      n_29 <= ww1_1;
      tmp_27 <= n_29(n_29'high downto n_29'high);
    end generate;
  end block;
  -- msb end
  
  repANF_8 <= tmp_27;
  
  repANF_9 <= repANF_11 or repANF_10;
  
  -- reduceAnd begin
  reduceAnd_n_34 : block
    function and_reduce (arg : std_logic_vector) return std_logic is
      variable upper, lower : std_logic;
      variable half         : integer;
      variable argi         : std_logic_vector (arg'length - 1 downto 0);
      variable result       : std_logic;
    begin
      if (arg'length < 1) then
        result := '1';
      else
        argi := arg;
        if (argi'length = 1) then
          result := argi(argi'left);
        else
          half   := (argi'length + 1) / 2; -- lsb-biased tree
          upper  := and_reduce (argi (argi'left downto half));
          lower  := and_reduce (argi (half - 1 downto argi'right));
          result := upper and lower;
        end if;
      end if;
      return result;
    end;
  begin
    tmp_33 <= (0 => and_reduce(repANF_13));
  end block;
  -- reduceAnd end
  
  repANF_10 <= tmp_33;
  
  repANF_11 <= not repANF_12;
  
  -- reduceOr begin
  reduceOr_n_37 : block
    function or_reduce (arg : std_logic_vector) return std_logic is
      variable upper, lower : std_logic;
      variable half         : integer;
      variable argi         : std_logic_vector (arg'length - 1 downto 0);
      variable result       : std_logic;
    begin
      if (arg'length < 1) then
        result := '0';
      else
        argi := arg;
        if (argi'length = 1) then
          result := argi(argi'left);
        else
          half   := (argi'length + 1) / 2; -- lsb-biased tree
          upper  := or_reduce (argi (argi'left downto half));
          lower  := or_reduce (argi (half - 1 downto argi'right));
          result := upper or lower;
        end if;
      end if;
      return result;
    end;
  begin
    tmp_36 <= (0 => or_reduce(repANF_13));
  end block;
  -- reduceOr end
  
  repANF_12 <= tmp_36;
  
  repANF_13 <= std_logic_vector'(repANF_14) & std_logic_vector'(ww1_1);
  
  -- msb begin
  msb_n_40 : block
    signal n_41 : std_logic_vector(15 downto 0);
  begin
    n_42_generate : if n_41'length = 0 generate
    begin
      tmp_39 <= "0";
    end generate;
  
    n_43_generate : if n_41'length /= 0 generate
      n_41 <= ww2_0;
      tmp_39 <= n_41(n_41'high downto n_41'high);
    end generate;
  end block;
  -- msb end
  
  repANF_14 <= tmp_39;
  
  repANF_15 <= std_logic_vector(repANF_16);
  
  repANF_16 <= eta_i1 * eta_i2;
end;
