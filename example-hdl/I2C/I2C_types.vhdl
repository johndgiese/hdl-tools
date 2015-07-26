library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package I2C_types is
  type product13 is record
    product13_sel0 : std_logic_vector(13 downto 0);
    product13_sel1 : std_logic_vector(1 downto 0);
  end record;
  type product0 is record
    product0_sel0 : std_logic_vector(0 downto 0);
    product0_sel1 : std_logic_vector(0 downto 0);
  end record;
  type array_of_product0 is array (integer range <>) of product0;
  type product17 is record
    product17_sel0 : std_logic_vector(7 downto 0);
    product17_sel1 : unsigned(2 downto 0);
  end record;
  type product15 is record
    product15_sel0 : unsigned(2 downto 0);
    product15_sel1 : unsigned(2 downto 0);
    product15_sel2 : std_logic_vector(0 downto 0);
    product15_sel3 : boolean;
    product15_sel4 : boolean;
    product15_sel5 : boolean;
    product15_sel6 : boolean;
    product15_sel7 : product17;
  end record;
  type product3 is record
    product3_sel0 : unsigned(2 downto 0);
    product3_sel1 : std_logic_vector(0 downto 0);
    product3_sel2 : boolean;
    product3_sel3 : boolean;
    product3_sel4 : std_logic_vector(7 downto 0);
  end record;
  type product16 is record
    product16_sel0 : product3;
    product16_sel1 : product15;
  end record;
  type product18 is record
    product18_sel0 : boolean;
    product18_sel1 : product15;
  end record;
  type product2 is record
    product2_sel0 : std_logic_vector(0 downto 0);
    product2_sel1 : boolean;
    product2_sel2 : std_logic_vector(0 downto 0);
    product2_sel3 : boolean;
  end record;
  type product20 is record
    product20_sel0 : std_logic_vector(0 downto 0);
    product20_sel1 : std_logic_vector(6 downto 0);
  end record;
  type product19 is record
    product19_sel0 : boolean;
    product19_sel1 : product17;
  end record;
  type product5 is record
    product5_sel0 : boolean;
    product5_sel1 : boolean;
    product5_sel2 : boolean;
    product5_sel3 : std_logic_vector(0 downto 0);
  end record;
  type product1 is record
    product1_sel0 : std_logic_vector(7 downto 0);
    product1_sel1 : boolean;
    product1_sel2 : boolean;
    product1_sel3 : boolean;
    product1_sel4 : boolean;
    product1_sel5 : product2;
  end record;
  type array_of_std_logic_vector_1 is array (integer range <>) of std_logic_vector(0 downto 0);
  type product8 is record
    product8_sel0 : array_of_product0(0 to 1);
    product8_sel1 : unsigned(13 downto 0);
    product8_sel2 : array_of_product0(0 to 2);
    product8_sel3 : product0;
    product8_sel4 : product0;
    product8_sel5 : boolean;
    product8_sel6 : boolean;
    product8_sel7 : boolean;
    product8_sel8 : boolean;
    product8_sel9 : boolean;
  end record;
  type product9 is record
    product9_sel0 : boolean;
    product9_sel1 : boolean;
    product9_sel2 : boolean;
    product9_sel3 : boolean;
    product9_sel4 : unsigned(4 downto 0);
  end record;
  type product7 is record
    product7_sel0 : boolean;
    product7_sel1 : boolean;
    product7_sel2 : unsigned(15 downto 0);
    product7_sel3 : boolean;
    product7_sel4 : std_logic_vector(0 downto 0);
    product7_sel5 : product8;
    product7_sel6 : product9;
  end record;
  type product21 is record
    product21_sel0 : unsigned(0 downto 0);
    product21_sel1 : product17;
  end record;
  type product11 is record
    product11_sel0 : unsigned(0 downto 0);
    product11_sel1 : product8;
  end record;
  type product10 is record
    product10_sel0 : unsigned(0 downto 0);
    product10_sel1 : product9;
  end record;
  type product4 is record
    product4_sel0 : product5;
    product4_sel1 : product2;
  end record;
  type product12 is record
    product12_sel0 : array_of_product0(0 to 2);
    product12_sel1 : array_of_product0(0 to 0);
  end record;
  type product14 is record
    product14_sel0 : array_of_product0(0 to 1);
    product14_sel1 : array_of_product0(0 to 0);
  end record;
  type product6 is record
    product6_sel0 : product4;
    product6_sel1 : product7;
  end record;
  function max (left, right: in integer) return integer;
  function toSLV (slv : in std_logic_vector) return std_logic_vector;
  function toSLV (p : product13) return std_logic_vector;
  function toSLV (u : in unsigned) return std_logic_vector;
  function toSLV (p : product0) return std_logic_vector;
  function toSLV (value :  array_of_product0) return std_logic_vector;
  function toSLV (p : product17) return std_logic_vector;
  function toSLV (b : in boolean) return std_logic_vector;
  function fromSLV (sl : in std_logic_vector) return boolean;
  function toSLV (p : product15) return std_logic_vector;
  function toSLV (p : product3) return std_logic_vector;
  function toSLV (p : product16) return std_logic_vector;
  function toSLV (p : product18) return std_logic_vector;
  function toSLV (p : product2) return std_logic_vector;
  function toSLV (p : product20) return std_logic_vector;
  function toSLV (p : product19) return std_logic_vector;
  function toSLV (p : product5) return std_logic_vector;
  function toSLV (p : product1) return std_logic_vector;
  function toSLV (value :  array_of_std_logic_vector_1) return std_logic_vector;
  function toSLV (p : product8) return std_logic_vector;
  function toSLV (p : product9) return std_logic_vector;
  function toSLV (p : product7) return std_logic_vector;
  function toSLV (p : product21) return std_logic_vector;
  function toSLV (p : product11) return std_logic_vector;
  function toSLV (p : product10) return std_logic_vector;
  function to_integer (i : in integer) return integer;
  function toSLV (i : in integer) return std_logic_vector;
  function toSLV (p : product4) return std_logic_vector;
  function toSLV (p : product12) return std_logic_vector;
  function toSLV (p : product14) return std_logic_vector;
  function toSLV (p : product6) return std_logic_vector;
end;

package body I2C_types is
  function max (left, right: in integer) return integer is
  begin
    if left > right then return left;
    else return right;
    end if;
  end;
  function toSLV (slv : in std_logic_vector) return std_logic_vector is
  begin
    return slv;
  end;
  function toSLV (p : product13) return std_logic_vector is
  begin
    return (toSLV(p.product13_sel0) & toSLV(p.product13_sel1));
  end;
  function toSLV (u : in unsigned) return std_logic_vector is
  begin
    return std_logic_vector(u);
  end;
  function toSLV (p : product0) return std_logic_vector is
  begin
    return (toSLV(p.product0_sel0) & toSLV(p.product0_sel1));
  end;
  function toSLV (value :  array_of_product0) return std_logic_vector is
    alias ivalue    : array_of_product0(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 2);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 2) + 1 to i*2) := toSLV(ivalue(i));
    end loop;
    return result;
  end;
  function toSLV (p : product17) return std_logic_vector is
  begin
    return (toSLV(p.product17_sel0) & toSLV(p.product17_sel1));
  end;
  function toSLV (b : in boolean) return std_logic_vector is
  begin
    if b then
      return "1";
    else
      return "0";
    end if;
  end;
  function fromSLV (sl : in std_logic_vector) return boolean is
  begin
    if sl = "1" then
      return true;
    else
      return false;
    end if;
  end;
  function toSLV (p : product15) return std_logic_vector is
  begin
    return (toSLV(p.product15_sel0) & toSLV(p.product15_sel1) & toSLV(p.product15_sel2) & toSLV(p.product15_sel3) & toSLV(p.product15_sel4) & toSLV(p.product15_sel5) & toSLV(p.product15_sel6) & toSLV(p.product15_sel7));
  end;
  function toSLV (p : product3) return std_logic_vector is
  begin
    return (toSLV(p.product3_sel0) & toSLV(p.product3_sel1) & toSLV(p.product3_sel2) & toSLV(p.product3_sel3) & toSLV(p.product3_sel4));
  end;
  function toSLV (p : product16) return std_logic_vector is
  begin
    return (toSLV(p.product16_sel0) & toSLV(p.product16_sel1));
  end;
  function toSLV (p : product18) return std_logic_vector is
  begin
    return (toSLV(p.product18_sel0) & toSLV(p.product18_sel1));
  end;
  function toSLV (p : product2) return std_logic_vector is
  begin
    return (toSLV(p.product2_sel0) & toSLV(p.product2_sel1) & toSLV(p.product2_sel2) & toSLV(p.product2_sel3));
  end;
  function toSLV (p : product20) return std_logic_vector is
  begin
    return (toSLV(p.product20_sel0) & toSLV(p.product20_sel1));
  end;
  function toSLV (p : product19) return std_logic_vector is
  begin
    return (toSLV(p.product19_sel0) & toSLV(p.product19_sel1));
  end;
  function toSLV (p : product5) return std_logic_vector is
  begin
    return (toSLV(p.product5_sel0) & toSLV(p.product5_sel1) & toSLV(p.product5_sel2) & toSLV(p.product5_sel3));
  end;
  function toSLV (p : product1) return std_logic_vector is
  begin
    return (toSLV(p.product1_sel0) & toSLV(p.product1_sel1) & toSLV(p.product1_sel2) & toSLV(p.product1_sel3) & toSLV(p.product1_sel4) & toSLV(p.product1_sel5));
  end;
  function toSLV (value :  array_of_std_logic_vector_1) return std_logic_vector is
    alias ivalue    : array_of_std_logic_vector_1(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 1);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 1) + 1 to i*1) := toSLV(ivalue(i));
    end loop;
    return result;
  end;
  function toSLV (p : product8) return std_logic_vector is
  begin
    return (toSLV(p.product8_sel0) & toSLV(p.product8_sel1) & toSLV(p.product8_sel2) & toSLV(p.product8_sel3) & toSLV(p.product8_sel4) & toSLV(p.product8_sel5) & toSLV(p.product8_sel6) & toSLV(p.product8_sel7) & toSLV(p.product8_sel8) & toSLV(p.product8_sel9));
  end;
  function toSLV (p : product9) return std_logic_vector is
  begin
    return (toSLV(p.product9_sel0) & toSLV(p.product9_sel1) & toSLV(p.product9_sel2) & toSLV(p.product9_sel3) & toSLV(p.product9_sel4));
  end;
  function toSLV (p : product7) return std_logic_vector is
  begin
    return (toSLV(p.product7_sel0) & toSLV(p.product7_sel1) & toSLV(p.product7_sel2) & toSLV(p.product7_sel3) & toSLV(p.product7_sel4) & toSLV(p.product7_sel5) & toSLV(p.product7_sel6));
  end;
  function toSLV (p : product21) return std_logic_vector is
  begin
    return (toSLV(p.product21_sel0) & toSLV(p.product21_sel1));
  end;
  function toSLV (p : product11) return std_logic_vector is
  begin
    return (toSLV(p.product11_sel0) & toSLV(p.product11_sel1));
  end;
  function toSLV (p : product10) return std_logic_vector is
  begin
    return (toSLV(p.product10_sel0) & toSLV(p.product10_sel1));
  end;
  function to_integer (i : in integer) return integer is
  begin
    return i;
  end;
  function toSLV (i : in integer) return std_logic_vector is
  begin
    return std_logic_vector(to_signed(i,32));
  end;
  function toSLV (p : product4) return std_logic_vector is
  begin
    return (toSLV(p.product4_sel0) & toSLV(p.product4_sel1));
  end;
  function toSLV (p : product12) return std_logic_vector is
  begin
    return (toSLV(p.product12_sel0) & toSLV(p.product12_sel1));
  end;
  function toSLV (p : product14) return std_logic_vector is
  begin
    return (toSLV(p.product14_sel0) & toSLV(p.product14_sel1));
  end;
  function toSLV (p : product6) return std_logic_vector is
  begin
    return (toSLV(p.product6_sel0) & toSLV(p.product6_sel1));
  end;
end;
