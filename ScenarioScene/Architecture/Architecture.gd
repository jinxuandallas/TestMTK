extends Node
class_name Architecture

enum ArchitectureType{CITY,PORT,PASS,BARRACK }
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var id:int
var architecture_name:String
var jun:String
var junzhi:bool
var architecture_type
var map_position:Array
var agriculture:int
var commerce:int
var endurance:int
var food:int
var fund:int
var population:int
var persons:Array
var support:int

var scenario

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func load_data(json:Dictionary):
	id=int(json["Id"])
	architecture_name=json["Name"]
	jun=json["Jun"]
	junzhi=bool(json["JunZhi"])
	architecture_type=int(json["ArchitectureType"])
	map_position=json["MapPosition"]
	
	agriculture=0 if !json.has("Agriculture") else int(json["Agriculture"])
	commerce=int(json["Commerce"])
	endurance=int(json["Endurance"])
	food=int(json["Food"])
	fund=int(json["Fund"])
	population=int(json["Population"])
	persons=json["PersonsString"].split(" ",false)
	support=int(json["Support"])
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func get_name()->String:
	return architecture_name
	
func get_jun_name()->String:
	return jun

