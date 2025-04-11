# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BR_BITS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BR_LIMIT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DBITS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SB_TICK" -parent ${Page_0}


}

proc update_PARAM_VALUE.BR_BITS { PARAM_VALUE.BR_BITS } {
	# Procedure called to update BR_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BR_BITS { PARAM_VALUE.BR_BITS } {
	# Procedure called to validate BR_BITS
	return true
}

proc update_PARAM_VALUE.BR_LIMIT { PARAM_VALUE.BR_LIMIT } {
	# Procedure called to update BR_LIMIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BR_LIMIT { PARAM_VALUE.BR_LIMIT } {
	# Procedure called to validate BR_LIMIT
	return true
}

proc update_PARAM_VALUE.DBITS { PARAM_VALUE.DBITS } {
	# Procedure called to update DBITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DBITS { PARAM_VALUE.DBITS } {
	# Procedure called to validate DBITS
	return true
}

proc update_PARAM_VALUE.SB_TICK { PARAM_VALUE.SB_TICK } {
	# Procedure called to update SB_TICK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SB_TICK { PARAM_VALUE.SB_TICK } {
	# Procedure called to validate SB_TICK
	return true
}


proc update_MODELPARAM_VALUE.DBITS { MODELPARAM_VALUE.DBITS PARAM_VALUE.DBITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DBITS}] ${MODELPARAM_VALUE.DBITS}
}

proc update_MODELPARAM_VALUE.SB_TICK { MODELPARAM_VALUE.SB_TICK PARAM_VALUE.SB_TICK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SB_TICK}] ${MODELPARAM_VALUE.SB_TICK}
}

proc update_MODELPARAM_VALUE.BR_LIMIT { MODELPARAM_VALUE.BR_LIMIT PARAM_VALUE.BR_LIMIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BR_LIMIT}] ${MODELPARAM_VALUE.BR_LIMIT}
}

proc update_MODELPARAM_VALUE.BR_BITS { MODELPARAM_VALUE.BR_BITS PARAM_VALUE.BR_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BR_BITS}] ${MODELPARAM_VALUE.BR_BITS}
}

