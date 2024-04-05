extends Node3D

# dont like how im keeping track of this in two places
var left: int
var right: int

var ball_node 
var left_pad_node
var right_pad_node
var scoreboard_node

# Called when the node enters the scene tree for the first time.
func _ready():

	ball_node = get_node("ball")
	left_pad_node = get_node("left")
	right_pad_node = get_node("right")
	scoreboard_node = get_node("scoreboard")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func _on_left_area_entered(area):
	scoreboard_node.right += 1
	
	ball_node.reset()
	left_pad_node.reset()
	right_pad_node.reset()


func _on_right_area_entered(area):
	scoreboard_node.left += 1

	ball_node.reset()
	left_pad_node.reset()
	right_pad_node.reset()
