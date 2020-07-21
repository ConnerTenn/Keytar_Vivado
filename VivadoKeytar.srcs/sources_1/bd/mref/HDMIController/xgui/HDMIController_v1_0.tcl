# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BMARGIN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "HSYNC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LMARGIN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RMARGIN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TMARGIN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VSYNC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "XRES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "YRES" -parent ${Page_0}


}

proc update_PARAM_VALUE.BMARGIN { PARAM_VALUE.BMARGIN } {
	# Procedure called to update BMARGIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BMARGIN { PARAM_VALUE.BMARGIN } {
	# Procedure called to validate BMARGIN
	return true
}

proc update_PARAM_VALUE.HSYNC { PARAM_VALUE.HSYNC } {
	# Procedure called to update HSYNC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HSYNC { PARAM_VALUE.HSYNC } {
	# Procedure called to validate HSYNC
	return true
}

proc update_PARAM_VALUE.LMARGIN { PARAM_VALUE.LMARGIN } {
	# Procedure called to update LMARGIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LMARGIN { PARAM_VALUE.LMARGIN } {
	# Procedure called to validate LMARGIN
	return true
}

proc update_PARAM_VALUE.RMARGIN { PARAM_VALUE.RMARGIN } {
	# Procedure called to update RMARGIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RMARGIN { PARAM_VALUE.RMARGIN } {
	# Procedure called to validate RMARGIN
	return true
}

proc update_PARAM_VALUE.TMARGIN { PARAM_VALUE.TMARGIN } {
	# Procedure called to update TMARGIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TMARGIN { PARAM_VALUE.TMARGIN } {
	# Procedure called to validate TMARGIN
	return true
}

proc update_PARAM_VALUE.VSYNC { PARAM_VALUE.VSYNC } {
	# Procedure called to update VSYNC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VSYNC { PARAM_VALUE.VSYNC } {
	# Procedure called to validate VSYNC
	return true
}

proc update_PARAM_VALUE.XRES { PARAM_VALUE.XRES } {
	# Procedure called to update XRES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.XRES { PARAM_VALUE.XRES } {
	# Procedure called to validate XRES
	return true
}

proc update_PARAM_VALUE.YRES { PARAM_VALUE.YRES } {
	# Procedure called to update YRES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.YRES { PARAM_VALUE.YRES } {
	# Procedure called to validate YRES
	return true
}


proc update_MODELPARAM_VALUE.HSYNC { MODELPARAM_VALUE.HSYNC PARAM_VALUE.HSYNC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HSYNC}] ${MODELPARAM_VALUE.HSYNC}
}

proc update_MODELPARAM_VALUE.LMARGIN { MODELPARAM_VALUE.LMARGIN PARAM_VALUE.LMARGIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LMARGIN}] ${MODELPARAM_VALUE.LMARGIN}
}

proc update_MODELPARAM_VALUE.XRES { MODELPARAM_VALUE.XRES PARAM_VALUE.XRES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.XRES}] ${MODELPARAM_VALUE.XRES}
}

proc update_MODELPARAM_VALUE.RMARGIN { MODELPARAM_VALUE.RMARGIN PARAM_VALUE.RMARGIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RMARGIN}] ${MODELPARAM_VALUE.RMARGIN}
}

proc update_MODELPARAM_VALUE.VSYNC { MODELPARAM_VALUE.VSYNC PARAM_VALUE.VSYNC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VSYNC}] ${MODELPARAM_VALUE.VSYNC}
}

proc update_MODELPARAM_VALUE.TMARGIN { MODELPARAM_VALUE.TMARGIN PARAM_VALUE.TMARGIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TMARGIN}] ${MODELPARAM_VALUE.TMARGIN}
}

proc update_MODELPARAM_VALUE.YRES { MODELPARAM_VALUE.YRES PARAM_VALUE.YRES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.YRES}] ${MODELPARAM_VALUE.YRES}
}

proc update_MODELPARAM_VALUE.BMARGIN { MODELPARAM_VALUE.BMARGIN PARAM_VALUE.BMARGIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BMARGIN}] ${MODELPARAM_VALUE.BMARGIN}
}

