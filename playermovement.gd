extends RigidBody

var speed = 10  # Adjust speed as needed

func _integrate_forces(state):
	var input_vector = Vector3.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.z = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_vector = input_vector.normalized()
	
	#apply the calculated input vector to the body's velocity
	state.linear_velocity.x = input_vector.x * speed
	state.linear_velocity.z = input_vector.z * speed
	
