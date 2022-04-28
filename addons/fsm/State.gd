extends Reference

class_name State

# State ID
var id: String

# Target for the state (object, node, etc)
var target

# Reference to state machine
var state_machine

var process_enabled: bool = true
var physics_process_enabled: bool = true
var input_enabled: bool = true
var enter_state_enabled: bool = true
var leave_state_enabled: bool = true

func clear() -> void:
	process_enabled = false
	physics_process_enabled = false
	input_enabled = false
	target = null
	state_machine = null

# State machine callback called during transition when entering this state
func _on_enter_state() -> void:
	push_warning("Unimplemented _on_enter_state")

# State machine callback called during transition when leaving this state
func _on_leave_state() -> void:
	push_warning("Unimplemented _on_leave_state")

func _process(delta: float) -> void:
	push_warning("Unimplemented _process(delta)")

func _physics_process(delta: float) -> void:
	push_warning("Unimplemented _physics_process(delta)")

func _input(event: InputEvent) -> void:
	push_warning("Unimplemented _input(event)")

func _terminate() -> void:
	pass
