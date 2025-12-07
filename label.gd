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
	var text_To_Display = ""
	for i in range(times):
		var roll1 = randi_range(1, 6)
		user_rolls.append(roll1)
		
		
	
