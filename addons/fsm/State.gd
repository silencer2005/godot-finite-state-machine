extends RefCounted

class_name State

# State ID
var state_id: String

# Target for the state (object, node, etc)
var target : set = _set_target

# Reference to state machine
var state_machine

#var process_enabled: bool = true
#var physics_process_enabled: bool = true
#var input_enabled: bool = true
var enter_state_enabled: bool = true
var leave_state_enabled: bool = true

func _init(id: String, sm: StateMachine, _target) -> void:
	state_id = id
	state_machine = sm
	if _target != null: target = _target

func _set_target(t): target = t

#func clear() -> void:
	#process_enabled = false
	#physics_process_enabled = false
	#input_enabled = false
	#target = null
	#state_machine = null

# State machine callback called during transition when entering this state
func _on_enter_state() -> void: push_warning("Unimplemented _on_enter_state")

func _execute(): push_warning("Unimplemented _execute")
# run in _process or _process_physics
func _update(_delta: float): push_warning("Unimplemented _execute")

# State machine callback called during transition when leaving this state
func _on_leave_state() -> void: push_warning("Unimplemented _on_leave_state")

#func _process(delta: float) -> void:
	#push_warning("Unimplemented _process(delta)")

#func _physics_process(delta: float) -> void:
	#push_warning("Unimplemented _physics_process(delta)")

#func _input(event: InputEvent) -> void:
	#push_warning("Unimplemented _input(event)")

#func _terminate() -> void:
	#pass
