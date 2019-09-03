# PCIe_5GRadio_lms7_trx FPGA gateware

This repository contains the FPGA gateware project for the PCIe_5GRadio board.

The gateware can be built with the free version of the Xilinx Vivado v2019.1 (64-bit).

## Project building

* Open Vivado;
* Use "Tcl console" to change working directory to where this project resides;
* Use "Tcl console" and type "source PCIe_5GRadio_lms7_trx.tcl" command;

## Changing project settings or adding new src files

* Open PCIe_5GRadio_lms7_trx project with Vivado;
* Use "Tcl console" to change working directory to where "write_proj_script.tcl" resides;
* Use "Tcl console" and type "source write_proj_script.tcl" command;
* Open generated PCIe_5GRadio_lms7_trx.tcl file and change line:  
    set origin_dir "."
    
    to
    
    set origin_dir [file dirname [info script]]

## Branches

This repository contains the following branches:

* Master:
  * Main branch;

  
## Licensing

Please see the COPYING file(s). However, please note that the license terms stated do not extend to any files provided with the Xilinx design tools and see the relevant files for the associated terms and conditions.