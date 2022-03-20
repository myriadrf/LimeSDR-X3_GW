# Set the reference directory to where the script is
set script_path [file dirname [file normalize [info script]]]
puts $script_path

# Set output file path and name
set bit_path "[file normalize "$script_path/PCIe_5GRadio_lms7_trx/PCIe_5GRadio_lms7_trx.runs/impl_1/lms7_trx_top.bit"]"
puts $bit_path

set bit_string "up 0x00000000 $bit_path "
puts $bit_string

write_cfgmem  -format mcs -force -size 16 -interface SPIx4 -loadbit $bit_string -file "[file normalize "$script_path/bitstream/lms7_trx_B30_v6.mcs"]"
