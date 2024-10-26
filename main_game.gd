extends Node2D

@export var rigid_body_scene := preload("res://falling_block.tscn")

func _ready():
	print("Starting timer...")
	$Timer.start()
	$Timer.connect("timeout", Callable(self, "_on_timer_timeout"))


func _on_timer_timeout() -> void:
	print("asdas")
	var new_rigid_body = rigid_body_scene.instantiate()  # Create an instance of the RigidBody2D scene
	new_rigid_body.position = Vector2(100, 8)            # Set the spawn position
	add_child(new_rigid_body)                            # Add the RigidBody2D to the scene tree
