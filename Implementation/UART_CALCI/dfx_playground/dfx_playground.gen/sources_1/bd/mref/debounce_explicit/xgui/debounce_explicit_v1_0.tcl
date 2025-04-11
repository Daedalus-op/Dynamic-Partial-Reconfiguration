# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "N" -parent ${Page_0}
  ipgui::add_param $IPINST -name "one" -parent ${Page_0}
  ipgui::add_param $IPINST -name "wait0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "wait1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "zero" -parent ${Page_0}


}

proc update_PARAM_VALUE.N { PARAM_VALUE.N } {
	# Procedure called to update N when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.N { PARAM_VALUE.N } {
	# Procedure called to validate N
	return true
}

proc update_PARAM_VALUE.one { PARAM_VALUE.one } {
	# Procedure called to update one when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.one { PARAM_VALUE.one } {
	# Procedure called to validate one
	return true
}

proc update_PARAM_VALUE.wait0 { PARAM_VALUE.wait0 } {
	# Procedure called to update wait0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.wait0 { PARAM_VALUE.wait0 } {
	# Procedure called to validate wait0
	return true
}

proc update_PARAM_VALUE.wait1 { PARAM_VALUE.wait1 } {
	# Procedure called to update wait1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.wait1 { PARAM_VALUE.wait1 } {
	# Procedure called to validate wait1
	return true
}

proc update_PARAM_VALUE.zero { PARAM_VALUE.zero } {
	# Procedure called to update zero when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.zero { PARAM_VALUE.zero } {
	# Procedure called to validate zero
	return true
}


proc update_MODELPARAM_VALUE.zero { MODELPARAM_VALUE.zero PARAM_VALUE.zero } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.zero}] ${MODELPARAM_VALUE.zero}
}

proc update_MODELPARAM_VALUE.wait0 { MODELPARAM_VALUE.wait0 PARAM_VALUE.wait0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.wait0}] ${MODELPARAM_VALUE.wait0}
}

proc update_MODELPARAM_VALUE.one { MODELPARAM_VALUE.one PARAM_VALUE.one } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.one}] ${MODELPARAM_VALUE.one}
}

proc update_MODELPARAM_VALUE.wait1 { MODELPARAM_VALUE.wait1 PARAM_VALUE.wait1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.wait1}] ${MODELPARAM_VALUE.wait1}
}

proc update_MODELPARAM_VALUE.N { MODELPARAM_VALUE.N PARAM_VALUE.N } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.N}] ${MODELPARAM_VALUE.N}
}

