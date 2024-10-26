extends Node2D

@export var rigid_body_scene := preload("res://scenes/falling_block.tscn")

func _ready():
	# Start a repeating Timer to trigger every second
	$Timer.start()

# Function to spawn a RigidBody2D every time the Timer times out
func _on_Timer_timeout():
	print("asdas")
	var new_rigid_body = rigid_body_scene.instantiate()  # Create an instance of the RigidBody2D scene
	new_rigid_body.position = Vector2(100, 8)            # Set the spawn position
	add_child(new_rigid_body)                            # Add the RigidBody2D to the scene tree
