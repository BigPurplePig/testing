extends Button

const SIZE_DIFF = 0.05

var origin = position
var offset = position - size * SIZE_DIFF * 0.5
var offset_less = position - size * SIZE_DIFF * 0.25

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass

func _on_mouse_entered() -> void:
	var tween = create_tween()
	
	tween.tween_property(self, "scale", Vector2(1 + SIZE_DIFF, 1 + SIZE_DIFF), 0.1).set_trans(Tween.TRANS_SINE)
	tween.parallel().tween_property(self, "position", offset, 0.1).set_trans(Tween.TRANS_SINE)

func _on_mouse_exited() -> void:
	var tween = create_tween()
	
	tween.tween_property(self, "scale", Vector2(1, 1), 0.1).set_trans(Tween.TRANS_SINE)
	tween.parallel().tween_property(self, "position", origin, 0.1).set_trans(Tween.TRANS_SINE)

func _on_button_down() -> void:
	var tween = create_tween()
	
	tween.tween_property(self, "scale", Vector2(1 + SIZE_DIFF * 0.5, 1 + SIZE_DIFF * 0.5), 0.1).set_trans(Tween.TRANS_SINE)
	tween.parallel().tween_property(self, "position", offset_less, 0.1).set_trans(Tween.TRANS_SINE)

func _on_button_up() -> void:
	var tween = create_tween()
	
	tween.tween_property(self, "scale", Vector2(1 + SIZE_DIFF, 1 + SIZE_DIFF), 0.1).set_trans(Tween.TRANS_SINE)
	tween.parallel().tween_property(self, "position", offset, 0.1).set_trans(Tween.TRANS_SINE)
