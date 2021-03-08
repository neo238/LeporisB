extends Node2D

# Will get information node

onready var inf = get_tree().get_root().get_node("Level").find_node("Inf").editor_description

# Called when the node enters the scene tree for the first time.
func _ready():
	 pass


func _on_Area2D2_body_entered(_body):
	print("Player entered")
	if inf == null:
		print("No next-level defined")
	else:
		var _cs = get_tree().change_scene("res://scenes/levels/" + inf + ".tscn")
