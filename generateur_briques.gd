extends Node

@export var scene_brique : PackedScene
@export var colonnes :=6
@export var lignes := 4
@export var marge_gauche := 60.0
@export var marge_droite := 60.0
@export var marge_haut := 25.0
@export var marge_bas := 250.0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var ecran := get_viewport().get_visible_rect().size
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
