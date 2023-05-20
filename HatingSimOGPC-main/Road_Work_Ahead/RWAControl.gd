extends Control

onready var text = get_parent().get_node("RWADialogue").dialogue_1

var test = 4

var neutral_expression = preload("res://Road_Work_Ahead/RWA_Neutral.PNG")
var mad_expression = preload("res://Road_Work_Ahead/RWA_Mad.PNG")
var happy_expression = preload("res://Road_Work_Ahead/RWA_Happy.PNG")

var dialogue_index = 0
var finished
var active

var position
var expression

var love = 0

var hate = 0

var choiceNum1 = [0, 3, 6, 9]

var num = 1

var choiceNum2 = [1, 4, 7, 10]

var choiceNum3 = [2, 5, 8, 11]

var choiceIndex = 0

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
		
		if $TextBox/Label.text == "Road Work Ahead":
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
		
		if dialogue_index == 1 && hate >= 2:
			print("hi")
			get_tree().change_scene("res://Victory/Victory.tscn")
		elif dialogue_index == 1 && love >= 2:
			get_tree().change_scene("res://GameOver/GameOver.tscn")
		else:
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

func points():
	print(love)
	if hate >= 2:
		text = get_parent().get_node("RWADialogue").succeed
		
	else: 
		text = get_parent().get_node("RWADialogue").fail
		

func _on_Button1_pressed():
	text = get_parent().get_node("RWADialogue").choices[num][0]
	dialogue_index = 0
	
	if num == 1:
		love += 1
	elif num == 2:
		love += 1
	elif num == 3:
		love += 1
		points()
	elif num == 4:
		hate += 1
		points()
	load_dialogue()
	num += 1
	
func _on_Button2_pressed():
	text = get_parent().get_node("RWADialogue").choices[num][1]
	dialogue_index = 0
	
	if num == 1:
		hate += 1
	elif num == 2:
		hate += 1
	elif num == 3:
		love += 1
		points()
	elif num == 4:
		love += 1
		points()
	load_dialogue()
	num += 1
		
func _on_Button3_pressed():
	text = get_parent().get_node("RWADialogue").choices[num][2]
	dialogue_index = 0
	#points(3)
	if num == 1:
		love += 1
	elif num == 2:
		love += 1
	elif num == 3:
		hate += 1
		points()
	elif num == 4:
		love += 1
		points()
	load_dialogue()
		
	num += 1

	
