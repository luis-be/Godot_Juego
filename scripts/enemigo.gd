extends Node2D

const SPEED = 60

var direccion = 1

@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var monstruo = $Monstruo
@onready var animation_player = $AnimationPlayer

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		direccion = -1
	if ray_cast_left.is_colliding():
		direccion = 1
	position.x += direccion * SPEED * delta

func _on_Area2D_body_entered(body):
	if body == monstruo:
		monstruo.play()
