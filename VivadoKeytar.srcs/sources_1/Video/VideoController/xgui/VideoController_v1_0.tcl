# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "MAXI_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SAXI_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SAXI_SLAVE_BASE_ADDR" -parent ${Page_0}


}

proc update_PARAM_VALUE.MAXI_ID_WIDTH { PARAM_VALUE.MAXI_ID_WIDTH } {
	# Procedure called to update MAXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAXI_ID_WIDTH { PARAM_VALUE.MAXI_ID_WIDTH } {
	# Procedure called to validate MAXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.SAXI_ID_WIDTH { PARAM_VALUE.SAXI_ID_WIDTH } {
	# Procedure called to update SAXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SAXI_ID_WIDTH { PARAM_VALUE.SAXI_ID_WIDTH } {
	# Procedure called to validate SAXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.SAXI_SLAVE_BASE_ADDR { PARAM_VALUE.SAXI_SLAVE_BASE_ADDR } {
	# Procedure called to update SAXI_SLAVE_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SAXI_SLAVE_BASE_ADDR { PARAM_VALUE.SAXI_SLAVE_BASE_ADDR } {
	# Procedure called to validate SAXI_SLAVE_BASE_ADDR
	return true
}


proc update_MODELPARAM_VALUE.SAXI_SLAVE_BASE_ADDR { MODELPARAM_VALUE.SAXI_SLAVE_BASE_ADDR PARAM_VALUE.SAXI_SLAVE_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SAXI_SLAVE_BASE_ADDR}] ${MODELPARAM_VALUE.SAXI_SLAVE_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.MAXI_ID_WIDTH { MODELPARAM_VALUE.MAXI_ID_WIDTH PARAM_VALUE.MAXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAXI_ID_WIDTH}] ${MODELPARAM_VALUE.MAXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.SAXI_ID_WIDTH { MODELPARAM_VALUE.SAXI_ID_WIDTH PARAM_VALUE.SAXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SAXI_ID_WIDTH}] ${MODELPARAM_VALUE.SAXI_ID_WIDTH}
}

