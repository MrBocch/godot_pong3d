extends Area3D

var SPEED = 2.0
var accelerate_x
var accelerate_z
var bounces
var paused 

var hit_audio

func initball():
	if randi() % 2 == 0:
		accelerate_x = SPEED
	else:
		accelerate_x = -SPEED
		
	if randi() % 2 == 0:
		accelerate_z = SPEED *0.8
	else:
		accelerate_z = -SPEED *0.8
	

# Called when the node enters the scene tree for the first time.
func _ready():
	paused = true
	randomize()
	bounces = 0
	initball()
	hit_audio = get_node("hit")



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if not paused:
		self.position.x += SPEED * accelerate_x * delta
		self.position.z += SPEED * accelerate_z * delta 
		if bounces % 2 == 0:
			SPEED += 0.002


func reset():
	SPEED = 2.0
	bounces = 0
	initball()
	
	position.x = 0
	position.z = 0
	paused = true


# hit right paddle 
func _on_right_area_entered(area):
	hit_audio.play()
	bounces += 1
	accelerate_x *= -1

# hit left paddle
func _on_left_area_entered(area):
	hit_audio.play()
	bounces += 1
	accelerate_x *= -1

# ball hit top wall
func _on_top_area_entered(area):
	hit_audio.play()
	accelerate_z *= -1


func _on_bot_area_entered(area):
	hit_audio.play()
	accelerate_z *= -1
