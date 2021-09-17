extends Node
class_name Biography

var id:int
var text:String
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func load_data(json: Dictionary):
	id = json["_Id"]
	text = json["Text"]
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
