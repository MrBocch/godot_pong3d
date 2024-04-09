extends Node3D

# dont like how im keeping track of this in two places
#var left: int
#var right: int

var victor_screen

@onready var ball_node = get_node("ball")
@onready var left_pad_node = $left
@onready var right_pad_node = $right
@onready var scoreboard_node = $scoreboard
@onready var score: AudioStreamPlayer = $score
@onready var timer = $Timer
@onready var count_down = $count_down

# Called when the node enters the scene tree for the first time.
func _ready():
	# save yourself all this boilerplate by using @onready
	#ball_node = get_node("ball")
	victor_screen = preload("res://scenes/winner/winner.tscn").instantiate()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func winner(side):
	scoreboard_node.victor_screen = true
	ball_node.reset()
	left_pad_node.reset()
	right_pad_node.reset()
	
	victor_screen.victor = side
	add_child(victor_screen)
	

func _on_left_area_entered(area):
	score.play()
	scoreboard_node.right += 1
	
	if scoreboard_node.right == 7:
		winner("RIGHT")
	else:
		ball_node.reset()
		left_pad_node.reset()
		right_pad_node.reset()
		
		timer.start()
		count_down.start()


func _on_right_area_entered(area):
	score.play()
	scoreboard_node.left += 1
	
	if scoreboard_node.left == 7:
		winner("LEFT")
	else:
		ball_node.reset()
		left_pad_node.reset()
		right_pad_node.reset()
		
		timer.start()
		count_down.start()




func _on_timer_timeout():
	# i was confused on the one_shot and autostart 
	# values, got it working like it should
	# automatically starts and stops until after is called again
	ball_node.paused = false
	left_pad_node.paused = false
	right_pad_node.paused = false
	# i totally forgot i did this here, and was also
	# pausing them after scoring, kinda scary
	
