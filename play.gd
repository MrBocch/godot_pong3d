extends Node3D

# dont like how im keeping track of this in two places
var left_score: int
var right_score: int

var ball_node 
var left_pad_node
var right_pad_node

# Called when the node enters the scene tree for the first time.
func _ready():
	left_score = 0
	right_score = 0
	ball_node = get_node("ball")
	left_pad_node = get_node("left")
	right_pad_node = get_node("right")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func _on_left_area_entered(area):
	right_score += 1
	
	ball_node.reset()
	left_pad_node.reset()
	right_pad_node.reset()


func _on_right_area_entered(area):
	left_score += 1

	ball_node.reset()
	left_pad_node.reset()
	right_pad_node.reset()
