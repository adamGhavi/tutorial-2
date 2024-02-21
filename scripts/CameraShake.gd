extends Camera2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# vertical movement
	if Input.is_action_pressed("move_up"):
		offset = Vector2(rand_range(-1.5, 1.5), rand_range(-1.5, 1.5))
		zoom = Vector2(.99, .99)
	else:
		offset = Vector2(0.0, 0.0)
		zoom = Vector2(1, 1)
