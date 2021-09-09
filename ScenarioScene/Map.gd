extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var _CurrentGrid=$CurrentGrid

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	var current_grid=get_global_mouse_position()/50
#	print(current_grid)
	current_grid=Vector2(floor(current_grid.x),floor(current_grid.y))*50
#	print(current_grid)
#	var current_grid=Vector2()
#	print(get_global_mouse_position(),current_grid)
	_CurrentGrid.rect_position=current_grid
#	print(get_global_mouse_position(),current_grid,_CurrentGrid.rect_position)
#	_CurrentGrid.show()
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
