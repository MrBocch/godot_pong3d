extends Label

var counter = 3
# Called when the node enters the scene tree for the first time.
func _ready():
	self.text = "%d" % [counter]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if counter > 0:
		self.text = "%d" % [counter]
	else:
		self.text = ""


func _on_timer_timeout():
	counter -= 1
