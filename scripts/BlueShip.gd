extends Node2D

export var speed = 500.0
export var grav = 10.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("move_up"):
		move_local_y(-speed * delta)
	else:
		move_local_y(grav * delta)
	
	move_local_x(speed * delta)
BlueShip
