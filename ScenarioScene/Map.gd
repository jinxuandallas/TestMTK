extends Node2D

signal mouse_moved_to_map_position(position)
signal architecture_clicked

#const GRID_A=0.40
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var _CurrentGrid=$CurrentGrid
onready var _Grids=$Grids
# Called when the node enters the scene tree for the first time.
func _ready():
	for i in 3:
		for j in 2:
			for m in 20:
				for n in 20:
					var grid=Sprite.new()
					grid.texture=preload("res://Image/Misc/PositionSelector.png")
					grid.scale=Vector2(0.5,0.5)
					grid.position=Vector2(i*1000+m*50,j*1000+n*50)
					grid.centered=false
#					grid.self_modulate.a=GRID_A
					_Grids.add_child(grid)

func _physics_process(delta):
	var current_grid=get_global_mouse_position()/50
#	print(current_grid)
	var coordinate=Vector2(floor(current_grid.x),floor(current_grid.y))
	current_grid=coordinate*50
#	print(current_grid)
#	var current_grid=Vector2()
#	print(get_global_mouse_position(),current_grid)
	_CurrentGrid.rect_position=current_grid
#	print(get_global_mouse_position(),current_grid,_CurrentGrid.rect_position)
#	_CurrentGrid.show()
	emit_signal("mouse_moved_to_map_position",coordinate)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			var current_grid=event.global_position/50
			if SharedData.map_data[current_grid.y][current_grid.x]==8: # 如果当前的瓦片地图类型是城堡
				emit_signal("architecture_clicked", self, event.global_position.x, event.global_position.y, false)
#			get_tree().set_input_as_handled()
#		elif event.button_index == BUTTON_RIGHT and event.pressed:
#			call_deferred("emit_signal", "architecture_clicked", self, event.global_position.x, event.global_position.y, true)
#			get_tree().set_input_as_handled()
	
	
func _on_map_grid_pressed():
	_Grids.visible=!_Grids.visible
	
