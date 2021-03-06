# TCL File Generated by Component Editor 10.0sp1
# Wed Jun 15 17:27:29 CST 2011
# DO NOT MODIFY


# +-----------------------------------
# | 
# | SOPC_GlobalReset "Global Reset Controller 8-bit" v1.0
# | Jeff Kaplan 2011.06.15.17:27:29
# | 
# | 
# | D:/Project/_BuildBlock/Hardware/EXB-100/Testbench/EXB-100-U1-C8051F/sopc_root/SOPC_GlobalReset.v
# | 
# |    ./SOPC_GlobalReset.v syn, sim
# | 
# +-----------------------------------

# +-----------------------------------
# | request TCL package from ACDS 10.0
# | 
package require -exact sopc 10.0
# | 
# +-----------------------------------

# +-----------------------------------
# | module SOPC_GlobalReset
# | 
set_module_property NAME SOPC_GlobalReset
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property GROUP EXB-100-C8051/Basic
set_module_property AUTHOR "Jeff Kaplan"
set_module_property DISPLAY_NAME "Global Reset Controller 8-bit"
set_module_property TOP_LEVEL_HDL_FILE SOPC_GlobalReset.v
set_module_property TOP_LEVEL_HDL_MODULE GlobalReset
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL TRUE
# | 
# +-----------------------------------

# +-----------------------------------
# | files
# | 
add_file SOPC_GlobalReset.v {SYNTHESIS SIMULATION}
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
add_interface_port clockreset csi_clockreset_reset_n reset_n Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point reset
# | 
add_interface reset avalon end
set_interface_property reset addressAlignment DYNAMIC
set_interface_property reset associatedClock clockreset
set_interface_property reset burstOnBurstBoundariesOnly false
set_interface_property reset explicitAddressSpan 0
set_interface_property reset holdTime 0
set_interface_property reset isMemoryDevice false
set_interface_property reset isNonVolatileStorage false
set_interface_property reset linewrapBursts false
set_interface_property reset maximumPendingReadTransactions 0
set_interface_property reset printableDevice false
set_interface_property reset readLatency 0
set_interface_property reset readWaitTime 1
set_interface_property reset setupTime 0
set_interface_property reset timingUnits Cycles
set_interface_property reset writeWaitTime 0

set_interface_property reset ASSOCIATED_CLOCK clockreset
set_interface_property reset ENABLED true

add_interface_port reset avs_reset_readdata readdata Output 8
add_interface_port reset avs_reset_writedata writedata Input 8
add_interface_port reset avs_reset_write_n write_n Input 1
add_interface_port reset avs_reset_read_n read_n Input 1
add_interface_port reset avs_reset_waitrequest_n waitrequest_n Output 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point EXPORT
# | 
add_interface EXPORT conduit end

set_interface_property EXPORT ENABLED true

add_interface_port EXPORT RESET_OUT export Output 1
add_interface_port EXPORT BATFL_OUT export Output 1
# | 
# +-----------------------------------
