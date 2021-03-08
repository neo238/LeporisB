extends ColorRect


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	


func _on_PlayButton_pressed():
	print("Play button pressed")
	$AnimationPlayer.play("Fade_In")
	yield(get_tree().create_timer(1.0), "timeout")
	$AnimationPlayer.play("Fadeback")
	var _cs = get_tree().change_scene("res://scenes/levels/Lvl1.tscn")
