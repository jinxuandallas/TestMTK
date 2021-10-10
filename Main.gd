extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$UICanvas/UIMain/GridButton.connect("pressed",$Scenario/Map,"_on_map_grid_pressed")
	#$Scenario.connect("mouse_moved_to_map_position",$UICanvas/UIMain,"_on_mouse_moved_to_map_position")
	$Scenario/Map.connect("mouse_moved_to_map_position",$UICanvas/UIMain,"_on_mouse_moved_to_map_position")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
