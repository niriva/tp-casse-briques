extends Area2D

	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.



func _process(delta: float) -> void:
	pass


func _on_fosse_body_entered(body: Node2D) -> void:
	if body.is_in_group("balle")	:
		get_tree().change_scene_to_file("res://ecran_defaite.tscn")
