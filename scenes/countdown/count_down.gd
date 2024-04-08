extends Node2D

var display 

# Called when the node enters the scene tree for the first time.
func _ready():
	display = get_node("display")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func start():
	display.counter = 3
