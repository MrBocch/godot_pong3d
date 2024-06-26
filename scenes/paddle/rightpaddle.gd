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
		#print("move paddle up {str}".format(counter))
		# - z plane Vector3
		# print(type_string(typeof(self.position)))
	if not paused:
		if Input.is_action_pressed("ui_up"):
			self.position.z += (self.position.z - SPEED) * delta
		elif Input.is_action_pressed("ui_down"):
			self.position.z += (self.position.z + SPEED) * delta
		
		self.position.z = clamp(self.position.z, -1.45, 1.45)
	# how do we check if something entered body?

func reset():
	self.position.z = 0
	paused = true
