# TCL File Generated by Component Editor 12.1sp1
# Sat Jan 04 11:08:15 CST 2014
# DO NOT MODIFY


# 
# brushlessmotor "brushlessmotor" v1.0
# null 2014.01.04.11:08:15
# 
# 

# 
# request TCL package from ACDS 11.0
# 
package require -exact sopc 11.0


# 
# module brushlessmotor
# 
set_module_property NAME brushlessmotor
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property DISPLAY_NAME brushlessmotor
set_module_property TOP_LEVEL_HDL_FILE brushless_motor_driver.v
set_module_property TOP_LEVEL_HDL_MODULE brushless_motor
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property STATIC_TOP_LEVEL_MODULE_NAME brushless_motor
set_module_property FIX_110_VIP_PATH false
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# files
# 
add_file brushless_motor_driver.v {SYNTHESIS SIMULATION}


# 
# file sets
# 

# 
# parameters
# 


# 
# display items
# 


# 
# connection point mrst
# 
add_interface mrst reset end
set_interface_property mrst associatedClock mclk
set_interface_property mrst synchronousEdges DEASSERT
set_interface_property mrst ENABLED true

add_interface_port mrst rsi_MRST_reset reset Input 1


# 
# connection point mclk
# 
add_interface mclk clock end
set_interface_property mclk clockRate 0
set_interface_property mclk ENABLED true

add_interface_port mclk csi_MCLK_clk clk Input 1


# 
# connection point ctrl
# 
add_interface ctrl avalon end
set_interface_property ctrl addressAlignment DYNAMIC
set_interface_property ctrl addressUnits WORDS
set_interface_property ctrl associatedClock mclk
set_interface_property ctrl associatedReset mrst
set_interface_property ctrl burstOnBurstBoundariesOnly false
set_interface_property ctrl explicitAddressSpan 0
set_interface_property ctrl holdTime 0
set_interface_property ctrl isMemoryDevice false
set_interface_property ctrl isNonVolatileStorage false
set_interface_property ctrl linewrapBursts false
set_interface_property ctrl maximumPendingReadTransactions 0
set_interface_property ctrl printableDevice false
set_interface_property ctrl readLatency 0
set_interface_property ctrl readWaitTime 1
set_interface_property ctrl setupTime 0
set_interface_property ctrl timingUnits Cycles
set_interface_property ctrl writeWaitTime 0
set_interface_property ctrl ENABLED true

add_interface_port ctrl avs_ctrl_writedata writedata Input 8
add_interface_port ctrl avs_ctrl_readdata readdata Output 8
add_interface_port ctrl avs_ctrl_address address Input 4
add_interface_port ctrl avs_ctrl_write write Input 1
add_interface_port ctrl avs_ctrl_read read Input 1
set_interface_assignment ctrl embeddedsw.configuration.isFlash 0
set_interface_assignment ctrl embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment ctrl embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment ctrl embeddedsw.configuration.isPrintableDevice 0


# 
# connection point motor
# 
add_interface motor conduit end
set_interface_property motor associatedClock mclk
set_interface_property motor associatedReset ""
set_interface_property motor ENABLED true

add_interface_port motor I_limit export Input 1
add_interface_port motor Ha export Input 1
add_interface_port motor Hc export Input 1
add_interface_port motor Lbu export Output 1
add_interface_port motor Lau export Output 1
add_interface_port motor Hb export Input 1
add_interface_port motor Lcu export Output 1
add_interface_port motor Lad export Output 1
add_interface_port motor Lbd export Output 1
add_interface_port motor Lcd export Output 1

