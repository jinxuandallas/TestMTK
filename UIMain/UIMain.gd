extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_mouse_moved_to_map_position(position):
	
	$ColorRect/TileInfo.text=str(SharedData.terrains[int(SharedData.map_data[position.y][position.x])])+str(position)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
