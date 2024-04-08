extends Control

var victor
var label
# Called when the node enters the scene tree for the first time.
func _ready():
	label = get_node("header")
	label.victor = victor

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_play_again_pressed():
	get_tree().change_scene_to_file("res://scenes/playing/play.tscn")


func _on_quit_pressed():
	get_tree().quit()
