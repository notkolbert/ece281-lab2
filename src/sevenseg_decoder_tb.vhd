----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2025 08:04:57 PM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg_decoder_tb is
--  Port ( );
end sevenseg_decoder_tb;

architecture Behavioral of sevenseg_decoder_tb is
component sevenseg_decoder is
    port (
        i_Hex: in std_logic_vector (3 downto 0);
        o_seg_n: out std_logic_vector (6 downto 0));
    end component sevenseg_decoder;

signal w_Hex : std_logic_vector (3 downto 0);
signal w_seg : std_logic_vector (6 downto 0);

begin
    bench : sevenseg_decoder
    port map (
        i_Hex => w_Hex,
        o_seg_n => w_seg
    );

test_bench : process
begin
        w_Hex <= "0000"; wait for 10 ns;
            assert w_seg = b"1000000" report "error on 0000" severity failure;
        w_Hex <= "0001"; wait for 10 ns;
            assert w_seg = b"1111001" report "error on 0001" severity failure;
        w_Hex <= "0010"; wait for 10 ns;
            assert w_seg = b"0100100" report "error on 0010" severity failure;
        w_Hex <= "0011"; wait for 10 ns;
            assert w_seg = b"0110000" report "error on 0011" severity failure;
        w_Hex <= "0100"; wait for 10 ns;
            assert w_seg = b"0011001" report "error on 0100" severity failure;
        w_Hex <= "0101"; wait for 10 ns;
            assert w_seg = b"0010010" report "error on 0101" severity failure;
        w_Hex <= "0110"; wait for 10 ns;
            assert w_seg = b"0000010" report "error on 0110" severity failure;
        w_Hex <= "0111"; wait for 10 ns;
            assert w_seg = b"1111000" report "error on 0111" severity failure;
        w_Hex <= "1000"; wait for 10 ns;
            assert w_seg = b"0000000" report "error on 1000" severity failure;
        w_Hex <= "1001"; wait for 10 ns;
            assert w_seg = b"0011000" report "error on 1001" severity failure;
        w_Hex <= "1010"; wait for 10 ns;
            assert w_seg = b"0001000" report "error on 1010" severity failure;
        w_Hex <= "1011"; wait for 10 ns;
            assert w_seg = b"0000011" report "error on 1011" severity failure;
        w_Hex <= "1100"; wait for 10 ns;
            assert w_seg = b"0100111" report "error on 1100" severity failure;
        w_Hex <= "1101"; wait for 10 ns;
            assert w_seg = b"0100001" report "error on 1101" severity failure;
        w_Hex <= "1110"; wait for 10 ns;
            assert w_seg = b"0000110" report "error on 1110" severity failure;
        w_Hex <= "1111"; wait for 10 ns;
            assert w_seg = b"0001110" report "error on 1111" severity failure;
        wait;
        end process;
end Behavioral;
