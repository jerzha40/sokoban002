extends Node

@export var levels: Array[PackedScene] = [];

var current_level: int = 0

func load_level():
	var scene
	if current_level == levels.size():
		get_tree().change_scene_to_file("res://scene/main_screen.tscn")
		current_level = 0
		pass
	else:
		scene = levels[current_level]
		get_tree().call_deferred("change_scene_to_packed", scene)
		pass
	pass
