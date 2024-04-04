extends Area3D
var SPEED = 2.0
var accelerate_x
var accelerate_z
var bounces

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
	randomize()
	bounces = 0
	initball()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
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


# hit right paddle 
func _on_right_area_entered(area):
	bounces += 1
	accelerate_x *= -1

# hit left paddle
func _on_left_area_entered(area):
	bounces += 1
	accelerate_x *= -1

# ball hit top wall
func _on_top_area_entered(area):
	accelerate_z *= -1


func _on_bot_area_entered(area):
	accelerate_z *= -1

