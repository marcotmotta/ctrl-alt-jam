extends Node

func _ready():
	Globals.reset()
	$UI/CanvasLayer/CreditsScreen.hide()

func _input(event):
	if Input.is_action_just_pressed("esc"):
		$UI/CanvasLayer/CreditsScreen.hide()

func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://World/Rooms/RoomDefault.tscn")

func _on_credits_button_pressed():
	$UI/CanvasLayer/CreditsScreen.show()

func _on_quit_button_pressed():
	get_tree().quit()
