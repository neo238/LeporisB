extends StaticBody2D
# Brings title up slowly

# Called when the node enters the scene tree for the first time.
func _ready():
	var _wait = yield(get_tree().create_timer(12), "timeout")
	set_process(false)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	position -= Vector2(0, 1.1)
