extends Area2D

func _on_ObjectiveArea_body_entered(body: RigidBody2D):
	if (body.name == "BlueShip"):
		get_tree().change_scene("res://rooms/gameplay/OtherLevel.tscn")
