extends Node2D

export var dataResource:Resource=null

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print(dataResource.b)
	
	var map=[[1,2,3],[2,3,4]]
	map[1].append(5)
	var pm=[]
	for i in 3:
#		var p=PoolIntArray([1,2])
		var p=PoolIntArray([1])
		pm.append(p)
	
#	var d=PoolIntArray([1,2,3])
#	p.append_array(d)
#	print(map[1])
	
	pm[1].resize(100)
	(pm[1] as PoolIntArray).append_array([1,3,5])
	pm[1][0]=3
#	pm[1][1]=6
	pm[1].append(6)
	pm[1].push_back(7)
	print(pm[1] is PoolIntArray)
	print(pm[1].empty())
	for pp in pm:
		(pp as PoolIntArray).resize(200)
		pp.append_array([1,3,5])
	print(pm)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
