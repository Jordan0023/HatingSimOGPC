extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
# Called when the node enters the scene tree for the first tim

func _on_Restart_pressed():
	get_tree().change_scene("res://CharacterSelection.tscn")
