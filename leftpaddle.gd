extends Area3D

const SPEED = 5.0
var direction
# Called when the node enters the scene tree for the first time.
func _ready():
	direction = Vector3(self.position.x, self.position.y, self.position.z)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
		#print("move paddle up {str}".format(counter))
		# - z plane Vector3
		# print(type_string(typeof(self.position)))
	if Input.is_action_pressed("right_up"):
		self.position.z += (-SPEED) * delta
	elif Input.is_action_pressed("right_down"):
		self.position.z += (SPEED) * delta
	
	self.position.z = clamp(self.position.z, -1.45, 1.45)
	

# how do we check if something entered body?
