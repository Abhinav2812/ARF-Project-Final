library ieee;
use ieee.std_logic_1164.all;
entity demux1to8 is port(
	S0,S1,S2,S3,S4,S5,S6,S7: OUT STD_LOGIC_VECTOR(15 downto 0);
	sel: IN STD_LOGIC_VECTOR(2 downto 0);
	I: IN STD_LOGIC_VECTOR(15 downto 0)
);
end entity;
architecture behavioral of demux1to8 is
begin
process(I,sel)
begin
	S0 <= x"0000";
	S1 <= x"0000";
	S2 <= x"0000";
	S3 <= x"0000";
	S4 <= x"0000";
	S5 <= x"0000";
	S6 <= x"0000";
	S7 <= x"0000";
	case sel is
	when "000" => S0 <= I;
   when "001" => S1 <= I;
	when "010" => S2 <= I;
   when "011" => S3 <= I;
	when "100" => S4 <= I;
   when "101" => S5 <= I;
	when "110" => S6 <= I;
   when "111" => S7 <= I;
	end case;
end process;
end architecture;