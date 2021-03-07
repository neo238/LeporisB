extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_Area2D_area_entered(_area):
	#replace with teleport script stuff
	var _cs = get_tree().change_scene("res://scenes/levels/Lvl2.tscn")
