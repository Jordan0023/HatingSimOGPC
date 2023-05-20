extends Control

onready var text = get_parent().get_node("StopSignDialogue").dialogue_1

var test = 4

var neutral_expression = preload("res://StopSign/Stop_Sign_Neutral.PNG")
var mad_expression = preload("res://StopSign/Stop_Sign_Mad.PNG")
var happy_expression = preload("res://StopSign/Stop_Sign_Happy.PNG")

var dialogue_index = 0
var finished
var active

var position
var expression


var choiceNum1 = [0, 3, 6, 9]

var num = 1

var choiceNum2 = [1, 4, 7, 10]

var choiceNum3 = [2, 5, 8, 11]

var choiceIndex = 0

var points = 0

func _ready():
	load_dialogue()
	
		# get_tree().change_scene("res://current_scene.tscn")
	
func _physics_process(delta):
	if active:
		
		if Input.is_action_just_pressed("ui_accept"):
			if finished == true:
				load_dialogue()
			else:
				$TextBox/Tween.stop_all()
				$TextBox/RichTextLabel.percent_visible = 1
				finished = true
		
		if $TextBox/Label.text == "Stop":
			$Stop.visible = true
			if position == "2":
				$Stop.global_position = get_parent().get_node("2").position
				
			if expression == "Mad":
				$Stop.texture = mad_expression
			elif expression == "Happy":
				$Stop.texture = happy_expression
			else:
				$Stop.texture = neutral_expression
				
			
		
		if $Button1.text == "":
			$Button1.visible = false 
		else:
			$Button1.visible = true
			
		if $Button2.text == "":
			$Button2.visible = false 
		else:
			$Button2.visible = true
			
		if $Button3.text == "":
			$Button3.visible = false 
		else:
			$Button3.visible = true

func load_dialogue():
	if dialogue_index < test:
		active = true
		finished = false

		$TextBox.visible = true
	
		$TextBox/RichTextLabel.bbcode_text = text[dialogue_index]["Text"]
		$TextBox/Label.text = text[dialogue_index]["Name"]
		$Button1.text = text[dialogue_index]["Choices"][0]
		$Button2.text = text[dialogue_index]["Choices"][1]
		$Button3.text = text[dialogue_index]["Choices"][2]

		position = text[dialogue_index]["Position"]
		expression = text[dialogue_index]["Expression"]
			
		$TextBox/RichTextLabel.percent_visible = 0
		$TextBox/Tween.interpolate_property(
			$TextBox/RichTextLabel, "percent_visible", 0, 1, 2,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
				
		)
		$TextBox/Tween.start()
	else:
		$TextBox.visible = false
		finished = true 
		active = false
	dialogue_index += 1
		# text = get_parent().get_node("Dialogue").dialogue_2
		# get_tree().change_scene("res://HatingSim2.tscn")
func _on_Tween_tween_completed(object, key):
	finished = true

func points(n: int):
	if n == 1:
		if num == 2:
			points -= 1
		elif num == 3:
			points -= 1
			
	elif n == 2:
			if num == 2:
				points -= 1
			elif num == 3:
				points += 1
	elif n == 3:
			if num == 2:
				points += 1
			elif num == 3:
				points -= 1
	if points == 3:
		text = get_parent().get_node("StopSignDialogue").succeed
		
		

func _on_Button1_pressed():
	text = get_parent().get_node("StopSignDialogue").choices[num][0]
	dialogue_index = 0
	num += 1
	points(1)
	load_dialogue()

func _on_Button2_pressed():
	text = get_parent().get_node("StopSignDialogue").choices[num][1]
	dialogue_index = 0
	load_dialogue()
	num += 1
		
func _on_Button3_pressed():
	text = get_parent().get_node("StopSignDialogue").choices[num][2]
	dialogue_index = 0
	load_dialogue()
	num += 1
	
