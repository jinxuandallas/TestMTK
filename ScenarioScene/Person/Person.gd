extends Node
class_name Person

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var id:int
var surname: String 
var given_name: String 
var courtesy_name: String 

var command: int
var strength: int 
var intelligence: int 
var politics: int 
var glamour: int

var picture_index:int
var year_available:int
var year_born:int
var year_dead:int
var sex:bool
var ideal:int
var p_character:int
var available_location:int

var scenario

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func load_data(json:Dictionary):
	id=json["Id"]
	surname=json["SurName"]
	given_name=json["GivenName"]
	courtesy_name=json["CourtesyName"]
	command=int(json["BaseCommand"])
	strength=int(json["BaseStrength"])
	intelligence=int(json["BaseIntelligence"])
	politics=int(json["BasePolitics"])
	glamour=int(json["BaseGlamour"])
	picture_index=int(json["PictureIndex"])
	year_available=int(json["YearAvailable"])
	year_born=int(json["YearBorn"])
	year_dead=int(json["YearDead"])
	sex=json["Sex"]
	ideal=int(json["Ideal"])
	p_character=int(json["PCharacter"])
	available_location=int(json["AvailableLocation"])

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
