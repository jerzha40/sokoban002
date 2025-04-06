extends Area2D

const TILE_SIZE = 64
const SPEED = .1

var moving = false

func _ready():
	pass
	#tween.tween_property($Sprite2D, "modulate", Color.RED, 1)
	#tween.tween_property($Sprite2D, "scale", Vector2(), 1)
	#tween.tween_callback($Sprite2D.queue_free)
