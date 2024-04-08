extends Label

var counter
# Called when the node enters the scene tree for the first time.
func _ready():
	counter = 3
	self.text = "%d" % [counter]
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.text = "%d" % [counter]
