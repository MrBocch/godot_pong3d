extends Node3D

@export var left_score: int
@export var right_score: int

var ball_node 

# Called when the node enters the scene tree for the first time.
func _ready():
	left_score = 0
	right_score = 0
	ball_node = get_node("ball")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(left_score)

func _on_left_area_entered(area):
	print("left side was scored on")
	right_score += 1
	ball_node.reset()
	ball_node.position.x = 0;
	ball_node.position.z = 0;


func _on_right_area_entered(area):
	print("right side was scored on")
	left_score += 1
	ball_node.reset()
	ball_node.position.x = 0;
	ball_node.position.z = 0;
