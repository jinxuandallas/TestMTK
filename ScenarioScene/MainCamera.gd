extends Camera2D

const CAMERA_MARGIN=50
const SPEED=1000
const MAP_SIZE_X = 3 * 1000
const MAP_SIZE_Y = 2 * 1000


var _zoom=1
onready var screen_size = get_viewport_rect().size
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
#	var mouse_position=get_local_mouse_position()
	var mouse_position=get_viewport().get_mouse_position()
#	var mouse_position=get_global_mouse_positi on()
#	print(mouse_position)
#	if mouse_position.x<CAMERA_MARGIN or mouse_position.x>screen_size.x-CAMERA_MARGIN \
#	or mouse_position.y<CAMERA_MARGIN or mouse_position.y>screen_size.y-CAMERA_MARGIN:
	var camera_translation = Vector2()
	if mouse_position.x<CAMERA_MARGIN:
		camera_translation.x-=delta*SPEED*_zoom
#			print("a")
	if mouse_position.x>screen_size.x-CAMERA_MARGIN:
		camera_translation.x+=delta*SPEED*_zoom
#			print("b")
	if mouse_position.y<CAMERA_MARGIN:
		camera_translation.y-=delta*SPEED*_zoom
#			print("c")
	if mouse_position.y>screen_size.y-CAMERA_MARGIN:
		camera_translation.y+=delta*SPEED*_zoom
			
	if camera_translation!=Vector2():
		print(mouse_position)
		move_camera(camera_translation)
#			print("d")
			
			
func move_camera(position_offset: Vector2):
	var size_x_half = get_viewport().size.x * _zoom / 2.0
	var size_y_half = get_viewport().size.y * _zoom / 2.0
	position.x = clamp(position.x + position_offset.x, size_x_half, MAP_SIZE_X - size_x_half)
	position.y = clamp(
		position.y + position_offset.y, size_y_half, MAP_SIZE_Y - size_y_half
	)
	
#	print(position)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
