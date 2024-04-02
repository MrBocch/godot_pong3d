extends Area3D
var SPEED = 2.0
var accelerate_x
var accelerate_z
var bounces
# Called when the node enters the scene tree for the first time.
func _ready():
	accelerate_x = SPEED
	accelerate_z = SPEED *0.8
	bounces = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position.x += SPEED * accelerate_x * delta
	self.position.z += SPEED * accelerate_z * delta 
	if bounces % 2 == 0:
		SPEED += 0.002
	
	print(SPEED)

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

