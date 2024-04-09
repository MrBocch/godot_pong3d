extends Label

# is assigned LEFT or RIGHT by winner.gd in function winner(), this is spaggeti
var victor: String

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.text = "%s IS THE WINNER" % [victor]
