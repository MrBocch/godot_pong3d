extends Label

var left
var right
# Called when the node enters the scene tree for the first time.
func _ready():
	left = 0
	right = 0
	self.text = "%d - %d" % [left, right]

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.text = "%d - %d" % [left, right]
	


func _on_left_area_entered(area):
	right += 1


func _on_right_area_entered(area):
	left += 1
