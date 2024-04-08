extends Node2D

var display 
var timer 
# Called when the node enters the scene tree for the first time.
func _ready():
	display = get_node("display")
	timer = get_node("Timer")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func start():
	display.counter = 3
