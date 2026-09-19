extends Node
@export var vitesse = 300


func _ready() -> void:
	var parent = get_parent()
	parent.linear_velocity = Vector2(1, 1) * vitesse
	
	
	
