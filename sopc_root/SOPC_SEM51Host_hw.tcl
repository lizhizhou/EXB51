# TCL File Generated by Component Editor 10.0sp1
# Wed Jun 15 17:45:02 CST 2011
# DO NOT MODIFY


# +-----------------------------------
# | 
# | SOPC_SEM51Host "SEM Host 8-bit for C8051 System" v1.1
# | Jeff Kaplan 2011.06.15.17:45:02
# | 
# | 
# | D:/Project/_BuildBlock/Hardware/EXB-100/Testbench/EXB-100-U1-C8051F/sopc_root/SOPC_SEM51Host.v
# | 
# |    ./SOPC_SEM51Host.v syn, sim
# | 
# +-----------------------------------

# +-----------------------------------
# | request TCL package from ACDS 10.0
# | 
package require -exact sopc 10.0
# | 
# +-----------------------------------

# +-----------------------------------
# | module SOPC_SEM51Host
# | 
set_module_property NAME SOPC_SEM51Host
set_module_property VERSION 1.1
set_module_property INTERNAL false
set_module_property GROUP EXB-100-C8051/Host
set_module_property AUTHOR "Jeff Kaplan"
set_module_property DISPLAY_NAME "SEM Host 8-bit for C8051 System"
set_module_property TOP_LEVEL_HDL_FILE SOPC_SEM51Host.v
set_module_property TOP_LEVEL_HDL_MODULE SEM51Host
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL TRUE
# | 
# +-----------------------------------

# +-----------------------------------
# | files
# | 
add_file SOPC_SEM51Host.v {SYNTHESIS SIMULATION}
# | 
# +-----------------------------------

# +-----------------------------------
# | parameters
# | 
# | 
# +-----------------------------------

# +-----------------------------------
# | display items
# | 
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point clockreset
# | 
add_interface clockreset clock end

set_interface_property clockreset ENABLED true

add_interface_port clockreset csi_clockreset_clk clk Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point clockreset_reset
# | 
add_interface clockreset_reset reset end
set_interface_property clockreset_reset associatedClock clockreset
set_interface_property clockreset_reset synchronousEdges DEASSERT

set_interface_property clockreset_reset ASSOCIATED_CLOCK clockreset
set_interface_property clockreset_reset ENABLED true

add_interface_port clockreset_reset csi_clockreset_reset_n reset_n Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point EXPORT
# | 
add_interface EXPORT conduit end

set_interface_property EXPORT ENABLED true

add_interface_port EXPORT SEM_DATA export Bidir 16
add_interface_port EXPORT SEM_ADDR export Input 13
add_interface_port EXPORT SEM_WEN export Input 1
add_interface_port EXPORT SEM_OEN export Input 1
add_interface_port EXPORT SEM_CSN export Input 1
add_interface_port EXPORT SEM_WAITN export Output 1
add_interface_port EXPORT SEM_CINT export Output 1
add_interface_port EXPORT SEM_INT00 export Output 1
add_interface_port EXPORT SEM_INT01 export Output 1
add_interface_port EXPORT SEM_INT02 export Output 1
add_interface_port EXPORT SEM_INT04 export Output 1
add_interface_port EXPORT SEM_INT05 export Output 1
add_interface_port EXPORT SEM_INT06 export Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point m0
# | 
add_interface m0 avalon start
set_interface_property m0 associatedClock clockreset
set_interface_property m0 associatedReset clockreset_reset
set_interface_property m0 burstOnBurstBoundariesOnly false
set_interface_property m0 doStreamReads false
set_interface_property m0 doStreamWrites false
set_interface_property m0 linewrapBursts false

set_interface_property m0 ASSOCIATED_CLOCK clockreset
set_interface_property m0 ENABLED true

add_interface_port m0 avm_m0_writedata writedata Output 8
add_interface_port m0 avm_m0_readdata readdata Input 8
add_interface_port m0 avm_m0_address address Output 13
add_interface_port m0 avm_m0_write_n write_n Output 1
add_interface_port m0 avm_m0_read_n read_n Output 1
add_interface_port m0 avm_m0_chipselect_n chipselect_n Output 1
add_interface_port m0 avm_m0_waitrequest_n waitrequest_n Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point irq0
# | 
add_interface irq0 interrupt start
set_interface_property irq0 associatedAddressablePoint m0
set_interface_property irq0 associatedClock clockreset
set_interface_property irq0 associatedReset clockreset_reset
set_interface_property irq0 irqScheme INDIVIDUAL_REQUESTS

set_interface_property irq0 ASSOCIATED_CLOCK clockreset
set_interface_property irq0 ENABLED true

add_interface_port irq0 inr_irq0_irq irq Input 7
# | 
# +-----------------------------------