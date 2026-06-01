extends Area2D

@onready var timer = $Timer

var can_kill = false  # Prevent instant death

func _ready():
	await get_tree().create_timer(1.0).timeout  # Wait 1 second
	can_kill = true

func _on_body_entered(body):
	if can_kill and body.name == "Player":  # Only kill if delay has passed
		print("You died!")
		timer.start()

func _on_timer_timeout():
	get_tree().reload_current_scene()
