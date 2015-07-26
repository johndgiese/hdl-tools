-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.FIR_types.all;

entity FIR_dotp_2 is
  port(eta_i1    : in array_of_signed_16(0 to 3);
       bodyVar_o : out signed(15 downto 0));
end;

architecture structural of FIR_dotp_2 is
  signal repANF_0 : array_of_signed_16(0 to 3);
  signal repANF_1 : array_of_signed_16(0 to 3);
  signal ws_2     : array_of_signed_16(0 to 4);
  signal a3_3     : array_of_signed_16(0 to 3);
  signal tmp_4    : array_of_signed_16(0 to 3);
  signal tmp_17   : array_of_signed_16(0 to 3);
  signal tmp_21   : array_of_signed_16(0 to 3);
  signal tmp_30   : signed(15 downto 0);
begin
  -- zipWith begin
  zipWith_n_10 : block
    signal n_11 : array_of_signed_16(0 to 3);
    signal n_12 : array_of_signed_16(0 to 3);
  begin
    n_11 <= array_of_signed_16'(signed'("0000000000000010"),signed'("0000000000000011"),signed'("1111111111111110"),signed'("0000000000001000"));
    n_12 <= eta_i1;
  
    zipWithZ_n_13 : if tmp_4'length = 0 generate
      tmp_4 <= (others => (others => 'X'));
    end generate;
  
    zipWithSN_n_14 : if tmp_4'length /= 0 generate
      zipWithIter_n_15 : for n_16 in tmp_4'range generate
      begin
        FIR_satMult_3_9 : entity FIR_satMult_3
  port map
  (topLet_o => tmp_4(n_16)
  ,eta_i1 => n_11(n_16)
  ,eta_i2 => n_12(n_16));
      end generate;
    end generate;
  end block;
  -- zipWith end
  
  repANF_0 <= tmp_4;
  
  -- init begin
  init_n_18 : block
    signal n_19 : array_of_signed_16(0 to 4);
  begin
    n_19 <= ws_2;
    tmp_17 <= n_19(0 to n_19'high - 1);
  end block;
  -- init end
  
  repANF_1 <= tmp_17;
  
  ws_2 <= array_of_signed_16'(signed'(signed'("0000000000000000")) & a3_3);
  
  -- zipWith begin
  zipWith_n_23 : block
    signal n_24 : array_of_signed_16(0 to 3);
    signal n_25 : array_of_signed_16(0 to 3);
  begin
    n_24 <= repANF_0;
    n_25 <= repANF_1;
  
    zipWithZ_n_26 : if tmp_21'length = 0 generate
      tmp_21 <= (others => (others => 'X'));
    end generate;
  
    zipWithSN_n_27 : if tmp_21'length /= 0 generate
      zipWithIter_n_28 : for n_29 in tmp_21'range generate
      begin
        FIR_dotp1_4_22 : entity FIR_dotp1_4
  port map
  (topLet_o => tmp_21(n_29)
  ,x_i1 => n_24(n_29)
  ,y_i2 => n_25(n_29));
      end generate;
    end generate;
  end block;
  -- zipWith end
  
  a3_3 <= tmp_21;
  
  -- last begin
  last_n_31 : block
    signal n_32 : array_of_signed_16(0 to 4);
  begin
    n_32 <= ws_2;
    tmp_30 <= n_32(n_32'high);
  end block;
  -- last end
  
  bodyVar_o <= tmp_30;
end;
