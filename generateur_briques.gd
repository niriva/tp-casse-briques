extends Node
@export var colonnes := 6
@export var lignes := 4
@export var marge_gauche := 60.0
@export var marge_droite := 60.0
@export var marge_haut := 25.0
@export var marge_bas := 250.0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	var ecran := get_viewport().get_visible_rect().size
	var largeur_zone := ecran.x - marge_droite - marge_gauche
	var hauteur_zone := marge_bas - marge_haut 
	var largeur_case := largeur_zone / colonnes
	var hauteur_case := hauteur_zone / lignes
	
	for l in lignes :
		for c in colonnes :
			var x := marge_gauche + (	c+0.5) * largeur_case
			var y := marge_haut + (l+0.5) * hauteur_case
			var scene_brique = preload("res://Générateur briques/briques/briques.tscn")
			var brique := scene_brique.instantiate()
			add_child(brique)
			brique.position = Vector2(x, y)
			
			
			
	 



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
