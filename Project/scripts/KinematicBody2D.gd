# The walking sounds will be replaced with something better when the game releases.
# In the meantime I'll be using walking_gravel_short

extends KinematicBody2D

export (int) var speed = 350

var velocity = Vector2()
var thingus = true
var isRunning = false
var play = false

func footstep():
	$Walk.play()

func get_input():
	
	
	velocity = Vector2()
	
	if Input.is_action_pressed("shift"):
		isRunning = true
		speed = 450
	elif Input.is_action_just_released("shift"):
		isRunning = false
		speed = 350
	
	if Input.is_action_pressed('right'):
		
		velocity.x += 1;
		
	if Input.is_action_pressed('left'):
		velocity.x -= 1

	if Input.is_action_pressed('down'):
		velocity.y += 1

	if Input.is_action_pressed('up'):
		velocity.y -= 1

	velocity = velocity.normalized() * speed

func _physics_process(_delta):
	get_input()
	velocity = move_and_slide(velocity)
	
	#Animation handler thing
	if Input.is_action_pressed("shift"): #forward/backward runnning anims
		if thingus == false:
			$Sprite.play("frun") #placeholder for "frun" --  nowreplaced with frun
			$AnimationPlayer.play("Run")
		else:
			$Sprite.play("run")
			$AnimationPlayer.play("Run")
	elif Input.is_action_pressed("up"):
		$AnimationPlayer.play("SFX")
		thingus = false
		$Sprite.play("forward")
	elif Input.is_action_pressed("down"):
		$AnimationPlayer.play("SFX")
		thingus = true
		$Sprite.play("walk")
	elif Input.is_action_pressed("left"):
		$AnimationPlayer.play("SFX")
		thingus = true
		$Sprite.play("walk")
	elif Input.is_action_pressed("right"):
		$AnimationPlayer.play("SFX")
		thingus = true
		$Sprite.play("walk")
	else:
		# If else, show idle
		# but it will revert to the front facing pic :(
		if thingus == false:
			$Sprite.play("fidle")
		else:
			$Sprite.play("idle")
	
	#animates_player(velocity)
