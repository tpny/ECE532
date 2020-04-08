# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "FSM_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_CLIENTS" -parent ${Page_0}


}

proc update_PARAM_VALUE.FSM_WIDTH { PARAM_VALUE.FSM_WIDTH } {
	# Procedure called to update FSM_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FSM_WIDTH { PARAM_VALUE.FSM_WIDTH } {
	# Procedure called to validate FSM_WIDTH
	return true
}

proc update_PARAM_VALUE.NUM_CLIENTS { PARAM_VALUE.NUM_CLIENTS } {
	# Procedure called to update NUM_CLIENTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_CLIENTS { PARAM_VALUE.NUM_CLIENTS } {
	# Procedure called to validate NUM_CLIENTS
	return true
}


proc update_MODELPARAM_VALUE.NUM_CLIENTS { MODELPARAM_VALUE.NUM_CLIENTS PARAM_VALUE.NUM_CLIENTS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_CLIENTS}] ${MODELPARAM_VALUE.NUM_CLIENTS}
}

proc update_MODELPARAM_VALUE.FSM_WIDTH { MODELPARAM_VALUE.FSM_WIDTH PARAM_VALUE.FSM_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FSM_WIDTH}] ${MODELPARAM_VALUE.FSM_WIDTH}
}

