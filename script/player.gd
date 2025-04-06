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


func move(dir: Vector2):
	if moving:
		return
	if dir_free(dir):
		moving = true
		var tween = get_tree().create_tween()
		tween.tween_property(self, "position", position + dir * TILE_SIZE, SPEED)
		await tween.finished
		#tween.tween_callback($Sprite2D.queue_free)
		moving = false
	pass


func dir_free(dir):
	match dir:
		Vector2.RIGHT:
			return not $RayRIGHT.is_colliding()
		Vector2.LEFT:
			return not $RayLEFT.is_colliding()
		Vector2.UP:
			return not $RayUP.is_colliding()
		Vector2.DOWN:
			return not $RayDOWN.is_colliding()
	pass
