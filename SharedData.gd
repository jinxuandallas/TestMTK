extends Node

var map_data:Array
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
#	map_data[3].append(6)
#	map_data[6].append_array([7,9])
#	print(map_data)
