extends Node

#var transition = load("res://Transition.gd").new()

func _on_TextureButton_pressed():
	#transition.transition()
	get_tree().change_scene("res://CharacterSelection.tscn")
