extends Label

var left
var right
var victor_screen
# Called when the node enters the scene tree for the first time.
func _ready():
	victor_screen = false
	left = 0
	right = 0
	self.text = "%d - %d" % [left, right]

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if not victor_screen:
		self.text = "%d - %d" % [left, right]
	else:
		self.text = ""
	
func reset():
	left = 0
	right = 0
