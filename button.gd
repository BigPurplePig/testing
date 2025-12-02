extends Button

const SIZE_DIFF = 0.05

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_mouse_entered() -> void:
	scale = Vector2(1 + SIZE_DIFF, 1 + SIZE_DIFF)
	position -= size * SIZE_DIFF * 0.5

func _on_mouse_exited():
	scale = Vector2.ONE
	position += size * SIZE_DIFF * 0.5
