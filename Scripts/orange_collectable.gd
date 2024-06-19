extends Area2D
@onready var animated_sprite_2d = $AnimatedSprite2D

@onready var game_manager = %GameManager
var collected = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if (body.name == "CharacterBody2D"):
		animated_sprite_2d.animation = "Collected"
		if collected == false:
			game_manager.add_point()
			collected = true


func _on_animated_sprite_2d_animation_finished():
	if (animated_sprite_2d.animation == "Collected"):
		queue_free()
