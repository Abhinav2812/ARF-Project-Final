library ieee;
use ieee.std_logic_1164.all;
entity mux4to1 is port(
	S0,S1,S2,S3: IN STD_LOGIC_VECTOR(15 downto 0);
	sel: IN STD_LOGIC_VECTOR(1 downto 0);
	O: OUT STD_LOGIC_VECTOR(15 downto 0)
);
end entity;
architecture behavioral of mux4to1 is
begin
process(S0,S1,S2,S3,sel)
begin
	case sel is
	when "00" => O <= S0;
   when "01" => O <= S1;
	when "10" => O <= S2;
   when "11" => O <= S3;
	end case;
end process;
end architecture;