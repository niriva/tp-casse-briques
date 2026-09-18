extends Node
@export var vitesse : float = 520.0
@export var _largeur_raquette : float = 120


@onready var screen_size = get_viewport().get_visible_rect().size
@onready var raquette : CharacterBody2D = get_parent()

func _physics_process(delta: float) -> void:
	var direction = Vector2.ZERO
	if Input.is_action_pressed("p1_left") :
		direction.x -=1
	if Input.is_action_pressed("p1_right") :
		direction.x +=1
		
	var _limite_gauche = _largeur_raquette / 2
	var _limite_droite = screen_size.x - _largeur_raquette / 2
	raquette.position.x += direction.x * vitesse * delta
	raquette.position.x = clamp(raquette.position.x, _limite_gauche, _limite_droite)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

	
	
	
	
	
