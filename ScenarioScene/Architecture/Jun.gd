extends Node
class_name Jun

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var id:int
var jun_name:String
var junzhi:int

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func load_data(json: Dictionary):
	id = json["Id"]
	jun_name = json["Name"]
	junzhi=json["JunZhi"]
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
