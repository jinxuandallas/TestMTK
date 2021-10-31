extends WindowDialog
var current_architecture: Architecture

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var tabcontainer=$VBoxContainer/CenterContainer/TabContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	tabcontainer.set_tab_title(0,"基本")

#func _input(event):
#	pass
#	if event is InputEventMouseButton:
#		if event.button_index == BUTTON_RIGHT and event.pressed:
#			hide()
			

func _set_data():
	$VBoxContainer/MarginContainer/HBoxContainer/CityName.text=current_architecture.get_name()
	$VBoxContainer/MarginContainer/HBoxContainer/Jun.text=current_architecture.get_jun_name()
	
	
func _on_ArchitectureDetail_clicked(coordinate,scenario):
	current_architecture=ScenarioUtil.search_architecture_by_coordinate(coordinate,scenario)
	_set_data()
	popup_centered()
#	print(arch,scenario.architectures[5].get_name())
	
