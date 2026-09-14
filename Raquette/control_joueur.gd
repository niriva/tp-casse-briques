extends Node
@export var vitesse : float = 520.0

func _physics_process(_delta: float) -> void:
	var raquette := get_parent() as CharacterBody2D
	var direction := 0.0
	if Input.is_action_pressed("p1_left"):
		direction -= 1.0
	if Input.is_action_pressed("p1_right"):
		direction += 1.0
	raquette.velocity = Vector2(direction * vitesse, 0.0)
	raquette.move_and_slide()
	# Empêche de sortir de l'écran
	var demi_largeur := 96.0
	var collision := raquette.get_node_or_null("CollisionShape2D") as CollisionShape2D
	if collision and collision.shape is RectangleShape2D:
		demi_largeur = (collision.shape as RectangleShape2D).size.x * 0.5
	var largeur := raquette.get_viewport_rect().size.x
	raquette.global_position.x = clampf(raquette.global_position.x, demi_largeur, largeur - demi_largeur)
	raquette.velocity.y = 0.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

	
	
	
	
	
