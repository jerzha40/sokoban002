extends "res://script/Movable.gd"

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_right"):
		move(Vector2.RIGHT)
	elif event.is_action_pressed("ui_left"):
		move(Vector2.LEFT)
	elif event.is_action_pressed("ui_up"):
		move(Vector2.UP)
	elif event.is_action_pressed("ui_down"):
		move(Vector2.DOWN)
	pass

func move(dir:Vector2):
	if moving:
		print("not")
		return
	moving=true
	var tween =get_tree().create_tween()
	tween.tween_property(self, "position", position+dir*TILE_SIZE, SPEED)
	await tween.finished
	print("sldkfh")
	#tween.tween_callback($Sprite2D.queue_free)
	moving=false
	pass
