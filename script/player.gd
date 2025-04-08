extends "res://script/Movable.gd"
class_name Player
var touched_crate

func player_move_trial(Ray: String, dir: Vector2):
	var block = get_node(Ray).get_collider()
	if block == null:
		move(dir)
		pass
	elif block is Crate:
		var subblock = block.get_node(Ray).get_collider()
		if subblock == null:
			move(dir)
			block.move(dir)
			pass
		pass
	pass

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_right"):
		player_move_trial("RayRIGHT", Vector2.RIGHT)
	elif event.is_action_pressed("ui_left"):
		player_move_trial("RayLEFT", Vector2.LEFT)
	elif event.is_action_pressed("ui_up"):
		player_move_trial("RayUP", Vector2.UP)
	elif event.is_action_pressed("ui_down"):
		player_move_trial("RayDOWN", Vector2.DOWN)
	pass
