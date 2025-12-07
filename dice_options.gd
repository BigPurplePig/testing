extends Control

#choice detects which choice the user has made
var choice = []

var num_die = 2
var choice_count = 0
var label
var amount

func check_matches():
	for i in range(len(choice)):
		
		if choice[i] == label.user_rolls[i]:
			print("matched roll")
			
		else: 
			print("did not match")
			
func clear_previous():
	choice.clear()
	label.user_rolls.clear()
		
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visible = false
	label = get_parent().get_node("Label")
	amount = get_parent().get_node("user_cash/amount")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	visible = true


func _on_option_1_pressed() -> void:
	choice.append(1)
	choice_count += 1
	if choice_count >= num_die:
		visible = false 
		
		label.roll_number()
		check_matches()
		amount.add_money()
		clear_previous()
		
		


func _on_option_2_pressed() -> void:
	choice.append(2)
	choice_count += 1
	if choice_count >= num_die:
		visible = false 
		
		label.roll_number()
		amount.add_money()
		check_matches()
		clear_previous()


func _on_option_3_pressed() -> void:
	choice.append(3)
	choice_count += 1
	if choice_count >= num_die:
		visible = false 
		
		label.roll_number()
		amount.add_money()
		check_matches()
		clear_previous()
		

func _on_option_4_pressed() -> void:
	choice.append(4)
	choice_count += 1
	if choice_count >= num_die:
		visible = false 
		
		label.roll_number()
		amount.add_money()
		check_matches()
		clear_previous()


func _on_option_5_pressed() -> void:
	choice.append(5)
	choice_count += 1
	if choice_count >= num_die:
		visible = false 
		
		label.roll_number()
		amount.add_money()
		check_matches()
		clear_previous()


func _on_option_6_pressed() -> void:
	choice.append(6)
	choice_count += 1
	if choice_count >= num_die:
		visible = false 
		
		label.roll_number()
		amount.add_money()
		check_matches()
		clear_previous()
