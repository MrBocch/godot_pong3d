extends Label

var victor
# Called when the node enters the scene tree for the first time.
func _ready():
	victor = ""


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.text = "%s IS THE WINNER" % [victor]
