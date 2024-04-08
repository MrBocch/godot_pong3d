extends Area3D

const SPEED = 5.0
var direction
var paused
# Called when the node enters the scene tree for the first time.
func _ready():
	paused = true
	direction = Vector3(self.position.x, self.position.y, self.position.z)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if not paused:
		if Input.is_action_pressed("right_up"):
			self.position.z += (-SPEED) * delta
		elif Input.is_action_pressed("right_down"):
			self.position.z += (SPEED) * delta
		
		self.position.z = clamp(self.position.z, -1.45, 1.45)
	

# how do we check if something entered body?
func reset():
	self.position.z = 0
	paused = true
