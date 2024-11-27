extends Resource

class_name StateMachineFactory

const StateMachine = preload("StateMachine.gd")

static func create(config: Dictionary = {}, path: String = "") -> StateMachine:
	"""
	Factory method accepting an optional configuration object
	"""
	var sm = StateMachine.new()

	if "states" in config:
		sm.add_states(config.states, path)

	if "target" in config:
		sm.set_target(config.target)

	if "transitions" in config:
		sm.set_transitions(config.transitions)

	if "initial_state" in config:
		sm.set_current_state(config.initial_state)

	return sm
