onerror {resume}
quietly virtual signal -install /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0 { /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data32_in_reg(11 downto 0)} 00
quietly virtual signal -install /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0 { /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data32_in_reg(23 downto 12)} 01
quietly virtual signal -install /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0 { (context /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0 )( data32_in(3 downto 0) & data32_in_reg(31 downto 24) )} 02
quietly virtual signal -install /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0 { /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data32_in(15 downto 4)} 04
quietly virtual signal -install /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0 { /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(16 downto 0)} out0
quietly virtual signal -install /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0 { /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(31 downto 16)} out1
quietly virtual signal -install /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0 { /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(47 downto 32)} out2
quietly virtual signal -install /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0 { /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(63 downto 48)} out3
quietly virtual signal -install /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0 { /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(15 downto 0)} out0001
quietly WaveActivateNextPane {} 0
add wave -noupdate /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/clk
add wave -noupdate /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/reset_n
add wave -noupdate /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data_in_wrreq
add wave -noupdate -radix hexadecimal /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data32_in
add wave -noupdate -max 33472.0 -radix hexadecimal /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/out0001
add wave -noupdate -max 33488.0 -radix hexadecimal /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/out1
add wave -noupdate -max 33504.0 -radix hexadecimal /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/out2
add wave -noupdate -max 33520.0 -radix hexadecimal /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/out3
add wave -noupdate -radix hexadecimal -childformat {{/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(63) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(62) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(61) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(60) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(59) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(58) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(57) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(56) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(55) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(54) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(53) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(52) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(51) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(50) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(49) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(48) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(47) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(46) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(45) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(44) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(43) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(42) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(41) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(40) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(39) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(38) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(37) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(36) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(35) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(34) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(33) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(32) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(31) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(30) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(29) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(28) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(27) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(26) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(25) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(24) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(23) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(22) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(21) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(20) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(19) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(18) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(17) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(16) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(15) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(14) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(13) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(12) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(11) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(10) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(9) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(8) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(7) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(6) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(5) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(4) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(3) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(2) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(1) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(0) -radix hexadecimal}} -subitemconfig {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(63) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(62) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(61) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(60) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(59) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(58) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(57) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(56) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(55) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(54) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(53) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(52) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(51) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(50) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(49) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(48) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(47) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(46) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(45) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(44) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(43) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(42) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(41) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(40) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(39) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(38) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(37) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(36) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(35) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(34) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(33) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(32) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(31) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(30) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(29) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(28) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(27) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(26) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(25) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(24) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(23) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(22) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(21) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(20) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(19) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(18) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(17) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(16) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(15) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(14) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(13) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(12) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(11) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(10) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(9) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(8) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(7) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(6) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(5) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(4) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(3) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(2) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(1) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out(0) {-radix hexadecimal}} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data64_out
add wave -noupdate /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data_out_valid
add wave -noupdate -radix hexadecimal /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/word64_0
add wave -noupdate -radix hexadecimal /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/word64_1
add wave -noupdate /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/word64_0_valid
add wave -noupdate /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/word64_1_valid
add wave -noupdate -radix hexadecimal -childformat {{/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/00(11) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/00(10) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/00(9) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/00(8) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/00(7) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/00(6) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/00(5) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/00(4) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/00(3) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/00(2) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/00(1) -radix hexadecimal} {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/00(0) -radix hexadecimal}} -subitemconfig {/bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data32_in_reg(11) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data32_in_reg(10) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data32_in_reg(9) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data32_in_reg(8) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data32_in_reg(7) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data32_in_reg(6) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data32_in_reg(5) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data32_in_reg(4) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data32_in_reg(3) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data32_in_reg(2) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data32_in_reg(1) {-radix hexadecimal} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data32_in_reg(0) {-radix hexadecimal}} /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/00
add wave -noupdate -radix hexadecimal /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/01
add wave -noupdate -radix hexadecimal /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/02
add wave -noupdate -radix hexadecimal /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/04
add wave -noupdate -radix unsigned /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/wr_cnt
add wave -noupdate -radix hexadecimal /bit_unpack_tb/bit_unpack_dut3/unpack_32_to_48_inst0/data32_in_reg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5575000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 197
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {8715 ns}
