set script_path [file dirname [file normalize [info script]]]
puts $script_path

cd $script_path
source PCIe_5GRadio_lms7_trx.tcl
