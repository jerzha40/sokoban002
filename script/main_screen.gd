extends Control


func _on_button_new_game_pressed() -> void:
	GameState.current_level = 0
	GameState.load_level()
	pass # Replace with function body.


func _on_button_continue_pressed() -> void:
	GameState.load_level()
	pass # Replace with function body.


func _on_button_option_pressed() -> void:
	$Options.popup_centered()
	pass # Replace with function body.


func _on_button_how_to_play_pressed() -> void:
	$Popup.popup_centered()
	pass # Replace with function body.


func _on_button_quit_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.
