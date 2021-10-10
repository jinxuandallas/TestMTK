extends Node
class_name Terrain

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var id:int
var terrain_name:String

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func load_data(json: Dictionary):
	id = int(json["Id"])
	terrain_name = json["Name"]
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
