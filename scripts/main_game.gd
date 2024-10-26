extends Node2D

@onready var rigid_body_scene = preload("res://scenes/MyRigidBody.tscn")
@onready var spawn_timer = $Timer

func _ready():
	spawn_timer.wait_time = 1.0  # Set spawn interval to 1 second
	spawn_timer.start()

func _on_Timer_timeout():
	# Spawn a new RigidBody at a random X position along the top of the screen
	var spawn_position = Vector2(randf() * 400, 0)
	spawn_rigid_body(spawn_position)

func spawn_rigid_body(position: Vector2):
	var rigid_body_instance = rigid_body_scene.instantiate()
	rigid_body_instance.position = position
	rigid_body_instance.linear_velocity = Vector2(0, 200)  # Set initial downward velocity
	add_child(rigid_body_instance)
