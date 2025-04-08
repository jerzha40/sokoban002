extends Area2D

const TILE_SIZE = 64
const SPEED = .1

var moving = false

func _ready():
	pass

func move(dir: Vector2):
	if moving:
		return
	moving = true
	var tween = get_tree().create_tween()
	tween.tween_property(self, "position", position + dir * TILE_SIZE, SPEED)
	await tween.finished
	#tween.tween_callback($Sprite2D.queue_free)
	moving = false
	pass
