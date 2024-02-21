extends Node

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("move_up"):
		get_tree().change_scene("res://rooms/gameplay/OtherLevel.tscn")
