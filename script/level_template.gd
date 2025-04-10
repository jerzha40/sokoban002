extends Node2D
class_name LevelTemplate

func _ready():
	for button in $CanvasLayer.get_children():
		var direction = Vector2.ZERO
		var Ray:String
		match button.name:
			"Right":
				Ray="RayRIGHT"
				direction = Vector2.RIGHT
			"Left":
				Ray="RayLEFT"
				direction = Vector2.LEFT
			"Up":
				Ray="RayUP"
				direction = Vector2.UP
			"Down":
				Ray="RayDOWN"
				direction = Vector2.DOWN
		button.pressed.connect($Player.player_move_trial.bind(Ray,direction))


func _on_goals_passed() -> void:
	print("Level Passed")
	pass # Replace with function body.
