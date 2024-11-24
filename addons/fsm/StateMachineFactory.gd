extends Resource

class_name StateMachineFactory

const StateMachine = preload("StateMachine.gd")

static func create(config: Dictionary = {}) -> StateMachine:
	"""
	Factory method accepting an optional configuration object
	"""
	var sm = StateMachine.new()

	if "target" in config:
		sm._set_target(config.target)

	if "states" in config:
		sm._set_states(config.states)

	if "transitions" in config:
		sm._set_transitions(config.transitions)

	if "current_state" in config:
		sm._set_current_state(config.current_state)
	
	#sm.set_current_state(sm.current_state)

	return sm
