extends Area2D
class_name Goal

signal filled(boo:bool)




func _on_area_entered(_area: Area2D) -> void:
	emit_signal("filled",true)
	pass # Replace with function body.


func _on_area_exited(_area: Area2D) -> void:
	emit_signal("filled",false)
	pass # Replace with function body.
