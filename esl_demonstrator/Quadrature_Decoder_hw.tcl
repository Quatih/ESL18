# TCL File Generated by Component Editor 13.1
# Fri May 25 15:22:26 CEST 2018
# DO NOT MODIFY


# 
# QuadratureDecoder "QuadratureDecoder" v1.0
#  2018.05.25.15:22:26
# 
# 

# 
# request TCL package from ACDS 13.1
# 
package require -exact qsys 13.1


# 
# module QuadratureDecoder
# 
set_module_property DESCRIPTION ""
set_module_property NAME QuadratureDecoder
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP ESL21
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME QuadratureDecoder
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL esl_demonstrator
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file esl_demonstrator.vhd VHDL PATH ip/QuadratureDecoder/esl_demonstrator.vhd TOP_LEVEL_FILE
add_fileset_file QuadratureDecoder.vhd VHDL PATH ip/QuadratureDecoder/QuadratureDecoder.vhd


# 
# parameters
# 
add_parameter DATA_WIDTH NATURAL 32
set_parameter_property DATA_WIDTH DEFAULT_VALUE 32
set_parameter_property DATA_WIDTH DISPLAY_NAME DATA_WIDTH
set_parameter_property DATA_WIDTH TYPE NATURAL
set_parameter_property DATA_WIDTH UNITS None
set_parameter_property DATA_WIDTH ALLOWED_RANGES 0:2147483647
set_parameter_property DATA_WIDTH HDL_PARAMETER true


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset reset Input 1


# 
# connection point avalon_slave_0
# 
add_interface avalon_slave_0 avalon end
set_interface_property avalon_slave_0 addressUnits WORDS
set_interface_property avalon_slave_0 associatedClock clock
set_interface_property avalon_slave_0 associatedReset reset
set_interface_property avalon_slave_0 bitsPerSymbol 8
set_interface_property avalon_slave_0 burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_0 burstcountUnits WORDS
set_interface_property avalon_slave_0 explicitAddressSpan 0
set_interface_property avalon_slave_0 holdTime 0
set_interface_property avalon_slave_0 linewrapBursts false
set_interface_property avalon_slave_0 maximumPendingReadTransactions 0
set_interface_property avalon_slave_0 readLatency 0
set_interface_property avalon_slave_0 readWaitTime 1
set_interface_property avalon_slave_0 setupTime 0
set_interface_property avalon_slave_0 timingUnits Cycles
set_interface_property avalon_slave_0 writeWaitTime 0
set_interface_property avalon_slave_0 ENABLED true
set_interface_property avalon_slave_0 EXPORT_OF ""
set_interface_property avalon_slave_0 PORT_NAME_MAP ""
set_interface_property avalon_slave_0 CMSIS_SVD_VARIABLES ""
set_interface_property avalon_slave_0 SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave_0 slave_address address Input 8
add_interface_port avalon_slave_0 slave_read read Input 1
add_interface_port avalon_slave_0 slave_write write Input 1
add_interface_port avalon_slave_0 slave_readdata readdata Output data_width
add_interface_port avalon_slave_0 slave_writedata writedata Input data_width
add_interface_port avalon_slave_0 slave_byteenable byteenable Input data_width/8
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isPrintableDevice 0


# 
# connection point Inputs
# 
add_interface Inputs conduit end
set_interface_property Inputs associatedClock clock
set_interface_property Inputs associatedReset reset
set_interface_property Inputs ENABLED true
set_interface_property Inputs EXPORT_OF ""
set_interface_property Inputs PORT_NAME_MAP ""
set_interface_property Inputs CMSIS_SVD_VARIABLES ""
set_interface_property Inputs SVD_ADDRESS_GROUP ""

add_interface_port Inputs inputs export Input 2

