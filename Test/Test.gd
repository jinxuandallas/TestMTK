extends Node2D

export var dataResource:Resource=null
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print("xxx")
#	print(dataResource.MM)
	print(dataResource.b)
#	print(dataResource.c)
	
	dataResource.b=66
	
	get_tree().change_scene("res://Test/Test2.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
