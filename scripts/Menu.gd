extends Control


func _ready():
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)  # Set fullscreen once	
func _on_button_pressed():
	get_tree().change_scene_to_file("res://game.tscn")

