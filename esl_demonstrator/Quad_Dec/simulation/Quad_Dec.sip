set_global_assignment -entity "Quad_Dec" -library "lib_Quad_Dec" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "Quad_Dec" -library "lib_Quad_Dec" -name IP_TOOL_VERSION "13.1"
set_global_assignment -entity "Quad_Dec" -library "lib_Quad_Dec" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_Quad_Dec" -name SPD_FILE [file join $::quartus(sip_path) "../../Quad_Dec.spd"]
set_global_assignment -library "lib_Quad_Dec" -name MISC_FILE [file join $::quartus(sip_path) "../../Quad_Dec.qsys"]

set_global_assignment -library "lib_Quad_Dec" -name MISC_FILE [file join $::quartus(sip_path) "Quad_Dec.vhd"]
