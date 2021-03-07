extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	 pass


func _on_Area2D2_body_entered(_body):
	print("Area entered")
	var _cs = get_tree().change_scene("res://scenes/levels/Lvl2.tscn")
