-- Automatically generated VHDL-2002
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.FIR_types.all;

entity FIR_outputVerifierzm_9 is
  port(eta_i1          : in signed(15 downto 0);
       -- clock
       system1000      : in std_logic;
       -- asynchronous reset: active low
       system1000_rstn : in std_logic;
       bodyVar_o       : out boolean);
end;

architecture structural of FIR_outputVerifierzm_9 is
  signal repANF_0   : signed(15 downto 0);
  signal repANF_1   : boolean;
  signal repANF_2   : boolean;
  signal x_3        : signed(15 downto 0);
  signal bodyVar_4  : product4;
  signal y_5        : boolean;
  signal y_6        : product4;
  signal bodyVar_7  : product5;
  signal repANF_8   : unsigned(1 downto 0);
  signal repANF_9   : product4;
  signal subjLet_10 : boolean;
  signal altLet_11  : unsigned(1 downto 0);
  signal bodyVar_12 : signed(15 downto 0);
  signal repANF_13  : boolean;
  signal x_14       : unsigned(1 downto 0);
  signal repANF_15  : integer;
  signal repANF_16  : unsigned(1 downto 0);
  signal wild_17    : integer;
  signal repANF_18  : integer;
  signal x_19       : unsigned(1 downto 0);
  signal tmp_20     : boolean;
  signal tmp_23     : boolean;
  signal tmp_36     : signed(15 downto 0);
  signal tmp_49     : unsigned(1 downto 0);
begin
  -- assert begin
  assert_n_22 : block
    -- pragma translate_off
    function slv2string (slv : std_logic_vector) return STRING is
       variable result : string (1 to slv'length);
       variable res_l : string (1 to 3);
       variable r : integer;
     begin
       r := 1;
       for i in slv'range loop
          res_l := std_logic'image(slv(i));
          result(r) := res_l(2);
          r := r + 1;
       end loop;
       return result;
    end;
    signal actual   : signed(15 downto 0);
    signal expected : signed(15 downto 0);
    -- pragma translate_on
  begin
    -- pragma translate_off
    actual   <= eta_i1;
    expected <= repANF_0;
    process(system1000,system1000_rstn) is
    begin
      if (rising_edge(system1000) or rising_edge(system1000_rstn)) then
        assert (actual = expected) report (("outputVerifier") & ", expected: " & slv2string(toSLV(expected)) & ", actual: " & slv2string(toSLV(actual))) severity error;
      end if;
    end process;
    -- pragma translate_on
    tmp_20 <= repANF_1;
  end block;
  -- assert end
  
  bodyVar_o <= tmp_20;
  
  repANF_0 <= x_3;
  
  -- register begin
  register_FIR_outputVerifierzm_9_n_24 : block
    signal n_25 : boolean;
    signal n_26 : boolean;
  begin
    n_25 <= false;
  
    process(system1000,system1000_rstn,n_25)
    begin
      if system1000_rstn = '0' then
        n_26 <= n_25;
      elsif rising_edge(system1000) then
        n_26 <= repANF_2;
      end if;
    end process;
  
    tmp_23 <= n_26;
  end block;
  -- register end
  
  repANF_1 <= tmp_23;
  
  repANF_2 <= y_5;
  
  x_3 <= bodyVar_4.product4_sel0;
  
  bodyVar_4 <= y_6;
  
  y_5 <= bodyVar_4.product4_sel1;
  
  y_6 <= bodyVar_7.product5_sel1;
  
  bodyVar_7 <= (product5_sel0 => repANF_8
               ,product5_sel1 => repANF_9);
  
  with (subjLet_10) select
    repANF_8 <= altLet_11 when (true),
                x_14 when others;
  
  repANF_9 <= (product4_sel0 => bodyVar_12
              ,product4_sel1 => repANF_13);
  
  subjLet_10 <= x_14 < (to_unsigned((4 - 1),integer(ceil(log2(real(max(2,4)))))));
  
  altLet_11 <= x_14 + (to_unsigned(1,integer(ceil(log2(real(max(2,4)))))));
  
  -- index begin
  indexVec_n_41 : block
    signal vec       : array_of_signed_16(0 to 3);
    signal vec_index : integer range 0 to 4-1;
  begin
    vec <= array_of_signed_16'(signed'("0000000000000100"),signed'("0000000000001100"),signed'("0000000000000001"),signed'("0000000000010100"));
  
    vec_index <= repANF_15
    -- pragma translate_off
                 mod 4
    -- pragma translate_on
                 ;
  
    tmp_36 <= vec(vec_index);
  end block;
  -- index end
  
  bodyVar_12 <= tmp_36;
  
  repANF_13 <= x_14 = (to_unsigned((4 - 1),integer(ceil(log2(real(max(2,4)))))));
  
  -- register begin
  register_FIR_outputVerifierzm_9_n_51 : block
    signal n_52 : unsigned(1 downto 0);
    signal n_53 : unsigned(1 downto 0);
  begin
    n_52 <= (to_unsigned(0,integer(ceil(log2(real(max(2,4)))))));
  
    process(system1000,system1000_rstn,n_52)
    begin
      if system1000_rstn = '0' then
        n_53 <= n_52;
      elsif rising_edge(system1000) then
        n_53 <= repANF_16;
      end if;
    end process;
  
    tmp_49 <= n_53;
  end block;
  -- register end
  
  x_14 <= tmp_49;
  
  repANF_15 <= wild_17;
  
  repANF_16 <= x_19;
  
  wild_17 <= repANF_18;
  
  repANF_18 <= to_integer(x_14);
  
  x_19 <= bodyVar_7.product5_sel0;
end;
