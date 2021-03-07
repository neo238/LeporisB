extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var pb = get_tree().get_root().find_node("PlayButton", true, false)
onready var pb2 = get_tree().get_root().find_node("PlayButtonOverlay", true, false)


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_PlayButton_pressed():
	pb2.disabled = true
	yield(get_tree().create_timer(0.6), "timeout")
	pb.queue_free()
