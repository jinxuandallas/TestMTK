extends Node
class_name Scenario

#signal mouse_moved_to_map_position(terrain,position)

export var global_data:Resource=null
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var persons:=Dictionary()
var architectures:=Dictionary()
var jun:=Dictionary()
var biographies:=Dictionary()
#var terrains:=Dictionary()

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
	
	file.open(path+"/Biographies.json",File.READ)
	json=parse_json(file.get_as_text())
	for item in json:
		var instance=Biography.new()
		_load_item(instance,item,biographies)
	file.close()
	
	file.open(path+"/Architectures.json",File.READ)
	json=parse_json(file.get_as_text())
	for item in json:
		var instance=Architecture.new()
		_load_item(instance,item,architectures)
	file.close()
	
	file.open(path+"/Jun.json",File.READ)
	json=parse_json(file.get_as_text())
	for item in json:
		var instance=Jun.new()
		_load_item(instance,item,jun)
	file.close()
	
#	file.open("res://Json/Terrain.json",File.READ)
##	print(file.file_exists("res://Json/Terrain.json"))
#	json=parse_json(file.get_as_text())
#	for item in json:
#		var instance=Terrain.new()
#		_load_item(instance,item,terrains)
#	file.close()
#	for p in persons:
#		print("%s%s，字%s"%[persons[p].surname,persons[p].given_name,persons[p].courtesy_name])
#	for arc in architectures:
#		print(str(arc)+ architectures[arc].architecture_name)
#		print(architectures[arc].persons)
	

#	for i in 3:
#		for j in 2:
#			file.open("res://json/Map/%d.json"%(39+i+j*12),File.READ)
#			for k in 20:
#				pass
#			file.close()
	
func _load_item(instance,item,add_to_list):
	if instance.has_meta("scenario"):
		instance.scenario=self
		
	instance.load_data(item)
	add_to_list[instance.id]=instance
