extends Area2D

@onready var game_manager = $"/root/Game/GameManager/Root2D/Area2D"


func _on_body_entered(_body):
	print("bod entered")
	print (game_manager)
	if(is_instance_valid(game_manager)):
		print (str(game_manager))
		get_tree().change_scene_to_file("res://endscreen.tscn") #GOES TO END SCENE
	
