extends Node

export var global_data:Resource=null
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var persons:=Dictionary()

# Called when the node enters the scene tree for the first time.
func _ready():
	_load_data(global_data.path)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _load_data(path):
	var file=File.new()
	file.open(path+"/Persons.json",File.READ)
	var json=parse_json(file.get_as_text())
	for item in json:
		var instance=Person.new()
		_load_item(instance,item,persons)
	file.close()
	
#	print(persons)

func _load_item(instance,item,add_to_list):
	instance.load_data(item)
	add_to_list[instance.id]=instance
