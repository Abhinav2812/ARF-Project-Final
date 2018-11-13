library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity cu is port(
	CLK: IN STD_LOGIC;
	S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15,S16,S17: OUT STD_LOGIC; --registers
	SI1,SI2,SI3,SI4,SI5,SI6,SI7,SI8,SI9,SI10,SI11,SI12,SI13,SI14,SI15,SI16: OUT STD_LOGIC; --input latches
	SY1,SY2: OUT STD_LOGIC; --output latches
	SA1,SA2,SM11,SM12,SM21,SM22,SM31,SM32,SAO,SM1O,SM2O,SM3O: OUT STD_LOGIC; -- adder/multiplier i/o latches strobe
	ENA1,ENM1,ENM2,ENM3: OUT STD_LOGIC; -- adder/multiplier enable
	-- mux sel line
	A1I1,A1I2: OUT STD_LOGIC_VECTOR(3 downto 0);
	M1I1,M1I2: OUT STD_LOGIC_VECTOR(1 downto 0);
	M2I1,M2I2: OUT STD_LOGIC_VECTOR(2 downto 0);
	M3I1,M3I2: OUT STD_LOGIC_VECTOR(2 downto 0);
	-- demux sel line
	A1O: OUT STD_LOGIC_VECTOR(3 downto 0);
	M1O: OUT STD_LOGIC;
	M2O: OUT STD_LOGIC_VECTOR(2 downto 0);
	M3O: OUT STD_LOGIC_VECTOR(1 downto 0)
);
end entity;
architecture behavioral of cu is
signal T: integer range 0 to 25 := 0;
signal x1: STD_LOGIC := '0';
signal x2: STD_LOGIC := '0';
signal x3: STD_LOGIC := '0';
signal x4: STD_LOGIC := '0';
begin
--alternate between read and write/input
process(clk)
begin
	if rising_edge(clk) then
		S1 <= '0';
		S2 <= '0';
		S3 <= '0';
		S4 <= '0';
		S5 <= '0';
		S6 <= '0';
		S7 <= '0';
		S8 <= '0';
		S9 <= '0';
		S10 <= '0';
		S11 <= '0';
		S12 <= '0';
		S13 <= '0';
		S14 <= '0';
		S15 <= '0';
		S16 <= '0';
		S17 <= '0';
		SI1 <= '0';
		SI2 <= '0';
		SI3 <= '0';
		SI4 <= '0';
		SI5 <= '0';
		SI6 <= '0';
		SI7 <= '0';
		SI8 <= '0';
		SI9 <= '0';
		SI10 <= '0';
		SI11 <= '0';
		SI12 <= '0';
		SI13 <= '0';
		SI14 <= '0';
		SI15 <= '0';
		SI16 <= '0';
		SY1 <= '0';
		SY2 <= '0';
		SA1 <= '0';
		SA2 <= '0';
		SM11 <= '0';
		SM12 <= '0';
		SM21 <= '0';
		SM22 <= '0';
		SM31 <= '0';
		SM32 <= '0';
		ENA1 <= '1';
		ENM1 <= '1';
		ENM2 <= '1';
		ENM3 <= '1';
		case T is
			when 0 => --Input Strobing
							SI1 <= '1';
							SI2 <= '1';
							SI3 <= '1';
							SI4 <= '1';
							SI5 <= '1';
							SI6 <= '1';
							SI7 <= '1';
							SI8 <= '1';
							SI9 <= '1';
							SI10 <= '1';
							SI11 <= '1';
							SI12 <= '1';
							SI13 <= '1';
							SI14 <= '1';
							SI15 <= '1';
							SI16 <= '1';
							M1I1 <= "00";--A
							M1I2 <= "00";--B
							M2I1 <= "000";--C
							M2I2 <= "000";--D
							M3I1 <= "000";--E
							M3I2 <= "000";--F
							SM11 <= '1';
							SM12 <= '1';
							SM21 <= '1';
							SM22 <= '1';
							SM31 <= '1';
							SM32 <= '1';
							ENM1 <= '1';
							ENM2 <= '1';
							ENM3 <= '1';
							M1O <= '0';
							M2O <= "000";
							M3O <= "00";
			when 1 =>	--read T1
							--mux set
							A1I1 <= "0000";
							A1I2 <= "0000";
							M1I1 <= "01";
							M1I2 <= "01";
							M2I1 <= "001";
							M2I2 <= "001";
							M3I1 <= "001";
							M3I2 <= "001";
							--mux input strobe
							SA1 <= '1';
							SA2 <= '1';
							SM11 <= '1';
							SM12 <= '1';
							SM21 <= '1';
							SM22 <= '1';
							SM31 <= '1';
							SM32 <= '1';
							--register strobe
							S1 <= '1';
							--disable adder/mul
							ENA1 <= '0';
							ENM1 <= '0';
							ENM2 <= '0';
							ENM3 <= '0';
			when 2 =>	--write T2
							--enable adder/mul
							ENA1 <= '1';
							ENM1 <= '1';
							ENM2 <= '1';
							ENM3 <= '1';
							--demux routing
							M1O <= '0';
							M2O <= "001";
							M3O <= "01";
							A1O <= "0000";
			when 3 =>   --read T2
							--mux set
							A1I1 <= "0001";
							A1I2 <= "0001";
							--M1 nop
							M2I1 <= "010";
							M2I2 <= "010";
							M3I1 <= "010";
							M3I2 <= "010";
							--mux input strobe
							SA1 <= '1';
							SA2 <= '1';
							--M1 nop
							SM21 <= '1';
							SM22 <= '1';
							SM31 <= '1';
							SM32 <= '1';
							--register strobe
							S2 <= '1';
							S3 <= '1';
							S6 <= '1';
							--disable adder/mul
							ENA1 <= '0';
							ENM1 <= '0';
							ENM2 <= '0';
							ENM3 <= '0';
			when 4 => --write T3
							--enable adder/mul
							ENA1 <= '1';
							ENM2 <= '1';
							ENM3 <= '1';
							--demux routing
							A1O <= "0001";
							M2O <= "010";
							M3O <= "10";
			when 5 => --read T3
							--mux set
							A1I1 <= "0010";
							A1I2 <= "0010";
							--M1 nop
							--M2 nop
							--M3 nop
							--mux input strobe
							SA1 <= '1';
							SA2 <= '1';
							--M1 nop
							--M2 nop
							--M3 nop
							--register strobe
							S4 <= '1';
							S5 <= '1';
							S7 <= '1';
							--disable adder/mul
							ENA1 <= '0';
							ENM1 <= '0';
							ENM2 <= '0';
							ENM3 <= '0';
			when 6 => --write T4
							--enable adder/mul
							ENA1 <= '1';
							--demux routing
							A1O <= "0010";
			when 7 => --read T4
							--mux set
							A1I1 <= "0011";
							A1I2 <= "0011";
							--M1 nop
							--M2 nop
							--M3 nop
							--mux input strobe
							SA1 <= '1';
							SA2 <= '1';
							--M1 nop
							--M2 nop
							--M3 nop
							--register strobe
							S8 <= '1';
							--disable adder/mul
							ENA1 <= '0';
							ENM1 <= '0';
							ENM2 <= '0';
							ENM3 <= '0';
			when 8 => --write T5
							--enable adder/mul
							ENA1 <= '1';
							--demux routing
							A1O <= "0011";
			when 9 => --read T5
							--mux set
							A1I1 <= "0100";
							A1I2 <= "0100";
							M1I1 <= "10";
							M1I2 <= "10";
							M2I1 <= "011";
							M2I2 <= "011";
							M3I1 <= "011";
							M3I2 <= "011";
							--mux input strobe
							SA1 <= '1';
							SA2 <= '1';
							SM11 <= '1';
							SM12 <= '1';
							SM21 <= '1';
							SM22 <= '1';
							SM31 <= '1';
							SM32 <= '1';
							--register strobe
							S9 <= '1';
							--disable adder/mul
							ENA1 <= '0';
							ENM1 <= '0';
							ENM2 <= '0';
							ENM3 <= '0';
			when 10 => --write T6
							--enable adder/mul
							ENA1 <= '1';
							ENM1 <= '1';
							ENM2 <= '1';
							ENM3 <= '1';
							--demux routing
							M1O <= '0';
							M2O <= "011";
							M3O <= "11";
							A1O <= "0100";
			when 11 => --read T6
							--mux set
							A1I1 <= "0000";
							A1I2 <= "0101";
							--M1 nop
							--M2 nop
							M3I1 <= "100";
							M3I2 <= "100";
							--mux input strobe
							SA1 <= '1';
							SA2 <= '1';
							--M1 nop
							--M2 nop
							SM31 <= '1';
							SM32 <= '1';
							--register strobe
							S10 <= '1';
							S11 <= '1';
							--disable adder/mul
							ENA1 <= '0';
							ENM1 <= '0';
							ENM2 <= '0';
							ENM3 <= '0';
			when 12 => --write T7
							--enable adder/mul
							ENA1 <= '1';
							ENM3 <= '1';
							--demux routing
							M3O <= "11";
							A1O <= "0101";
			when 13 => --read T7
							--mux set
							A1I1 <= "0101";
							A1I2 <= "0101";
							M1I1 <= "11";
							M1I2 <= "11";
							M2I1 <= "100";
							M2I2 <= "100";
							--M3 nop
							--mux input strobe
							SA1 <= '1';
							SA2 <= '1';
							SM11 <= '1';
							SM12 <= '1';
							SM21 <= '1';
							SM22 <= '1';
							--M3 nop
							--register strobe
							--nil
							--disable adder/mul
							ENA1 <= '0';
							ENM1 <= '0';
							ENM2 <= '0';
							ENM3 <= '0';
			when 14 => --write T8
							--enable adder/mul
							ENA1 <= '1';
							ENM1 <= '1';
							ENM2 <= '1';
							--demux routing
							M1O <= '1';
							M2O <= "100";
							A1O <= "0101";
			when 15 => --read T8
							--mux set
							A1I1 <= "0110";
							A1I2 <= "0110";
							M1I1 <= "11";
							M1I2 <= "11";
							M2I1 <= "100";
							M2I2 <= "100";
							--M3 nop
							--mux input strobe
							SA1 <= '1';
							SA2 <= '1';
							SM11 <= '1';
							SM12 <= '1';
							SM21 <= '1';
							SM22 <= '1';
							--M3 nop
							--register strobe
							S13 <= '1';
							S14 <= '1';
							--disable adder/mul
							ENA1 <= '0';
							ENM1 <= '0';
							ENM2 <= '0';
							ENM3 <= '0';
			when 16 => --write T9
							--enable adder/mul
							ENA1 <= '1';
							ENM1 <= '1';
							ENM2 <= '1';
							--demux routing
							M1O <= '0';
							M2O <= "101";
							A1O <= "0110";
			when 17 => --read T9
							--mux set
							A1I1 <= "0111";
							A1I2 <= "0001";
							--M1 nop
							--M2 nop
							--M3 nop
							--mux input strobe
							SA1 <= '1';
							SA2 <= '1';
							--M1 nop
							--M2 nop
							--M3 nop
							--register strobe
							S12 <= '1';
							S15 <= '1';
							--disable adder/mul
							ENA1 <= '0';
							ENM1 <= '0';
							ENM2 <= '0';
							ENM3 <= '0';
			when 18 => --write T10
							--enable adder/mul
							ENA1 <= '1';
							--demux routing
							A1O <= "0111";
			when 19 => --read T10
							--mux set
							A1I1 <= "1000";
							A1I2 <= "0111";
							--M1 nop
							--M2 nop
							--M3 nop
							--mux input strobe
							SA1 <= '1';
							SA2 <= '1';
							--M1 nop
							--M2 nop
							--M3 nop
							--register strobe
							S16 <= '1';
							--disable adder/mul
							ENA1 <= '0';
							ENM1 <= '0';
							ENM2 <= '0';
							ENM3 <= '0';
			when 20 => --write T11
							--enable adder/mul
							ENA1 <= '1';
							--demux routing
							A1O <= "1000";
			when 21 => --read T11
							--mux set
							A1I1 <= "1001";
							A1I2 <= "1000";
							--M1 nop
							--M2 nop
							--M3 nop
							--mux input strobe
							SA1 <= '1';
							SA2 <= '1';
							--M1 nop
							--M2 nop
							--M3 nop
							--register strobe
							S17 <= '1';
							--disable adder/mul
							ENA1 <= '0';
							ENM1 <= '0';
							ENM2 <= '0';
							ENM3 <= '0';
			when 22 => --write T12
							--enable adder/mul
							ENA1 <= '1';
							--demux routing
							A1O <= "1001";
			when 23 => --read T12
							--mux set
							A1I1 <= "1010";
							A1I2 <= "1001";
							--M1 nop
							--M2 nop
							--M3 nop
							--mux input strobe
							SA1 <= '1';
							SA2 <= '1';
							--M1 nop
							--M2 nop
							--M3 nop
							--register strobe
							SY1 <= '1';
							--disable adder/mul
							ENA1 <= '0';
							ENM1 <= '0';
							ENM2 <= '0';
							ENM3 <= '0';
			when 24 => --write T13
							--enable adder/mul
							ENA1 <= '1';
							--demux routing
							A1O <= "1010";
			when 25 => --read T13
							--mux set
							--A1 nop
							--M1 nop
							--M2 nop
							--M3 nop
							--mux input strobe
							--A1 nop
							--M1 nop
							--M2 nop
							--M3 nop
							--register strobe
							SY2 <= '1';
							--disable adder/mul
							ENA1 <= '0';
							ENM1 <= '0';
							ENM2 <= '0';
							ENM3 <= '0';
		end case;
	end if;
end process;
process(clk)
begin
	if falling_edge(clk) then
		T <= T+1;
	end if;
end process;
end architecture;