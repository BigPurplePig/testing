extends Label

var DiceOptions
var label

var multiplier = 1
var money = 0

# adds 5 for every correct guess without mulitplier
var correct_money = 5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	DiceOptions = get_parent().get_parent().get_node("DiceOptions")
	label = get_parent().get_parent().get_node("Label")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func add_money(): 
	for i in range(len(DiceOptions.choice)):
		if DiceOptions.choice[i] == label.user_rolls[i]:
			money += correct_money*multiplier
			text = str(money)
			
			
