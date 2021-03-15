connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS3 210299ABBEBA" && level==0 && jtag_device_ctx=="jsn-JTAG-HS3-210299ABBEBA-13636093-0"}
fpga -file /home/servenikas/git/pcie_5gradio_gw/workspace/cpu/_ide/bitstream/lms7_trx_top.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw /home/servenikas/git/pcie_5gradio_gw/workspace/lms7_trx_top/export/lms7_trx_top/hw/lms7_trx_top.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow /home/servenikas/git/pcie_5gradio_gw/workspace/cpu/Debug/cpu.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
