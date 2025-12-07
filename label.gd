extends Label

var user_rolls =[]
var DiceOptions 
func _ready() -> void:
	randomize()
	DiceOptions = get_parent().get_node("DiceOptions")

func _process(delta: float) -> void:
	pass

func roll_number():
	var times = DiceOptions.num_die
	var display_text
	for i in range(times):
		var roll = randi_range(1, 6)
		user_rolls.append(roll)
		if i == 0:
			display_text = str(roll)
		else:
			display_text += "   " + str(roll)
	text = display_text
