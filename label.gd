extends Label

func _ready() -> void:
	randomize()

func _process(delta: float) -> void:
	pass

func _on_button_pressed() -> void:
	var roll = randi_range(1, 6)
	
	text = str(roll)
