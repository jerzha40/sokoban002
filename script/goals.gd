extends Node2D
class_name Goals

signal passed
var filled_num:int=0

func _ready() -> void:
	for index in get_child_count():
		get_child(index).filled.connect(on_fill)
		pass
	pass

func on_fill(bsd:bool):
	if bsd:
		filled_num+=1
		pass
	else:
		filled_num-=1
		pass
	if filled_num==get_child_count():
		emit_signal("passed")
		pass
	
