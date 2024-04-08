extends Node3D

# dont like how im keeping track of this in two places
var left: int
var right: int

var ball_node 
var left_pad_node
var right_pad_node
var scoreboard_node
var score
var timer

# Called when the node enters the scene tree for the first time.
func _ready():

	ball_node = get_node("ball")
	left_pad_node = get_node("left")
	right_pad_node = get_node("right")
	scoreboard_node = get_node("scoreboard")
	score = get_node("score")
	timer = get_node("Timer")
	
	print("timer started")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func _on_left_area_entered(area):
	score.play()
	scoreboard_node.right += 1
	
	if scoreboard_node.right == 7:
		print("right won")
		print("show menu, playagaoin? or quit?")
	
	ball_node.reset()
	left_pad_node.reset()
	right_pad_node.reset()
	timer.start()


func _on_right_area_entered(area):
	score.play()
	scoreboard_node.left += 1
	
	if scoreboard_node.left == 7:
		print("left won")
		print("show menu, playagaoin? or quit?")

	ball_node.reset()
	left_pad_node.reset()
	right_pad_node.reset()
	
	timer.start()
	ball_node.paused = true
	left_pad_node.paused = true
	right_pad_node.paused = true
	print(ball_node.paused)


func _on_timer_timeout():

	print("timer ended")
	ball_node.paused = false
	left_pad_node.paused = false
	right_pad_node.paused = false
	
