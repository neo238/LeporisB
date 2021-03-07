extends Button

var popup
onready var isvisible = get_node("CreditsBody")

func _ready():
	pass


func _on_CreditsInvisibleOverlay_pressed():
	
#	if isvisible.visible == true: 
#		isvisible.visible = false
#	else:
#		isvisible.visible = true

	isvisible.visible_characters = false
