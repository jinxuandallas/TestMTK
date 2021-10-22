extends Node

var map_data:Array
var terrains:=Dictionary()
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _init():
	_load_map_data()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _load_map_data():
	# 生成一个空的map_data方便往里面添加数据
	map_data.clear()
	
	# map_data的格式是纵坐标有两行瓦片地图，每个瓦片地图里有20行纵坐标
	# 每一行包括20*3个横坐标数据
	for j in 2:
		for k in 20:
			var row=Array()
			map_data.append(row)
		
	
	var file=File.new()
	var json
	for i in 3:
		for j in 2:
			file.open("res://json/Map/%d.json"%(39+i+j*12),File.READ)
			json=parse_json(file.get_as_text())
			for k in 20:
#				pass
				map_data[j*20+k].append_array(json[str(k+1)])
#				map_data[j*20+k].append_array([1,2,3])
			file.close()
			
	file.open("res://Json/Terrain.json",File.READ)
#	print(file.file_exists("res://Json/Terrain.json"))
	json=parse_json(file.get_as_text())
	for item in json:
		terrains[int(item["Id"])]=item["Name"]
	file.close()
#	map_data[3].append(6)
#	map_data[6].append_array([7,9])
#	print(map_data)
