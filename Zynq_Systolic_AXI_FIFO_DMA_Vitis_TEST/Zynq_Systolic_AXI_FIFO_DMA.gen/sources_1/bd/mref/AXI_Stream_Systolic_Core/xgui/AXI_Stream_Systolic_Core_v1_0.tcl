# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BYTESIZES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WIDTHx" -parent ${Page_0}


}

proc update_PARAM_VALUE.BYTESIZES { PARAM_VALUE.BYTESIZES } {
	# Procedure called to update BYTESIZES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BYTESIZES { PARAM_VALUE.BYTESIZES } {
	# Procedure called to validate BYTESIZES
	return true
}

proc update_PARAM_VALUE.SIZE { PARAM_VALUE.SIZE } {
	# Procedure called to update SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SIZE { PARAM_VALUE.SIZE } {
	# Procedure called to validate SIZE
	return true
}

proc update_PARAM_VALUE.WIDTH { PARAM_VALUE.WIDTH } {
	# Procedure called to update WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WIDTH { PARAM_VALUE.WIDTH } {
	# Procedure called to validate WIDTH
	return true
}

proc update_PARAM_VALUE.WIDTHx { PARAM_VALUE.WIDTHx } {
	# Procedure called to update WIDTHx when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WIDTHx { PARAM_VALUE.WIDTHx } {
	# Procedure called to validate WIDTHx
	return true
}


proc update_MODELPARAM_VALUE.BYTESIZES { MODELPARAM_VALUE.BYTESIZES PARAM_VALUE.BYTESIZES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BYTESIZES}] ${MODELPARAM_VALUE.BYTESIZES}
}

proc update_MODELPARAM_VALUE.WIDTHx { MODELPARAM_VALUE.WIDTHx PARAM_VALUE.WIDTHx } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WIDTHx}] ${MODELPARAM_VALUE.WIDTHx}
}

proc update_MODELPARAM_VALUE.SIZE { MODELPARAM_VALUE.SIZE PARAM_VALUE.SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SIZE}] ${MODELPARAM_VALUE.SIZE}
}

proc update_MODELPARAM_VALUE.WIDTH { MODELPARAM_VALUE.WIDTH PARAM_VALUE.WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WIDTH}] ${MODELPARAM_VALUE.WIDTH}
}

