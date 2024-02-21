extends Particles2D

func _process(delta):
	# vertical movement
	if Input.is_action_pressed("move_up"):
		emitting = true
	else:
		emitting = false
