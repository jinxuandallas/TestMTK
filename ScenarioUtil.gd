extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

static func search_architecture_by_coordinate(coordinate,scenario):
	var arch=null
	# 此处查找建筑需要一个坐标转换，因为建筑坐标是全地图，需要转换到小地图的坐标
#	print(scenario.architectures)
	for key in scenario.architectures:
		var a=scenario.architectures[key]
		for mp in range(0,a.map_position.size()-1,2):
			var map_coordinate:=Array()
			map_coordinate.append(int(a.map_position[mp]))
			map_coordinate.append(int(a.map_position[mp+1]))
			map_coordinate =convert_coordinate(map_coordinate)
			if Vector2(map_coordinate[0],map_coordinate[1])==coordinate:
				return a
# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.

# 将大地图坐标转换成小坐标，并将float类型的数组转换成int类型的数组
static func convert_coordinate(bigmap_coordinate):
	bigmap_coordinate[0]-=60
	bigmap_coordinate[1]-=60
	return bigmap_coordinate
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
