extends Node
@export var vitesse = 300


func _ready() -> void:
	var parent = get_parent()
	
	var angle := randf_range(PI / 4.0, 3.0 * PI / 4.0)  # oui c'est pas de moi, j'avais aucune foutu idée de comment faire (et pas le temps de me prendre la tête y'a des délais de rendu quoi
	parent.linear_velocity = Vector2.from_angle(angle) * vitesse
	
	
	
