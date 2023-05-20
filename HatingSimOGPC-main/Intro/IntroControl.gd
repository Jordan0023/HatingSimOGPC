extends Control

onready var text = get_parent().get_node("IntroDialogue").dialogue_1

var dialogue_index = 0
var finished
var active
var sceneChange = 0

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
				
		if $Button.text == "":
			$Button.visible = false 
		else:
			$Button.visible = true

func load_dialogue():
	if dialogue_index < text.size():
		active = true
		finished = false

		$TextBox.visible = true
		
		if sceneChange == 1:
			get_tree().change_scene("res://TitleScreen.tscn")
		else:
			$TextBox/RichTextLabel.bbcode_text = text[dialogue_index]["Text"]
			$TextBox/Label.text = text[dialogue_index]["Name"]
			$Button.text = text[dialogue_index]["Choices"]
			
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

func _on_Button_pressed():
	text = get_parent().get_node("IntroDialogue").after_choice_1
	dialogue_index = 0
	load_dialogue()
	sceneChange = 1
	load_dialogue()

	
	
