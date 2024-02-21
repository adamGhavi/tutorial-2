extends KinematicBody2D

export var vacc = 20.0
export var grav = 20.0

var velocity = Vector2()

func _physics_process(delta):
	# horizontal movement
	velocity.x = 200.0
	
	# vertical movement
	if Input.is_action_pressed("move_up"):
		velocity.y -= vacc
		rotation_degrees = max(rotation_degrees-1, -10)
	else:
		velocity.y += grav
		rotation_degrees = lerp(rotation_degrees, 0, .1)
	
	# update coordinates
	velocity = move_and_slide(velocity)
	
	# collision detection
	for i in get_slide_count():
		var collision = get_slide_collision(i)
		
		if collision.collider.is_in_group("obstacles"):
			get_tree().change_scene("res://rooms/gameends/GameOver.tscn")
		
		elif collision.collider.is_in_group("finishlines"):
			get_tree().change_scene("res://rooms/gameends/GameWin.tscn")
