
extends CanvasLayer


var parent 

func _ready():
	parent =  get_parent()
	$fairycount.text = "Faeries: " + str(parent.score)

