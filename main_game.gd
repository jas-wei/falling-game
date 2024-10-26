extends Node2D

# Preload the RigidBody2D scene you want to spawn
@export var rigid_body_scene := preload("res://scenes/falling_block.tscn")

# Spawn function to create a RigidBody2D at a given position
func spawn_rigid_body(position: Vector2):
	var new_rigid_body = rigid_body_scene.instantiate()  # Create an instance of the RigidBody2D scene
	new_rigid_body.position = position                    # Set the spawn position
	add_child(new_rigid_body)                             # Add the RigidBody2D to the scene tree
	
	# Optional: Set initial velocity or force
	new_rigid_body.linear_velocity = Vector2(randf() * 200 - 100, randf() * 200 - 100)  # Random velocity

# Call this function when you want to spawn a new RigidBody2D (e.g., on input)
func _unhandled_input(event):
	if event is InputEventMouseButton and event.pressed:
		# Spawn at the mouse position
		spawn_rigid_body(get_global_mouse_position())
