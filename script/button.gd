extends Button
func _ready():
	var button = self
	#button.text = "Click me"
	button.pressed.connect(_button_pressed)

func _button_pressed():
	print("Hello world!")
