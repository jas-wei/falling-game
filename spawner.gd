extends Node2D
func _ready():
	$Timer.start()  # Manually start the timer
# Preload the RigidBody2D scene you want to spawn
@export var rigid_body_scene := preload("res://scenes/falling_block.tscn")

# Function to spawn a RigidBody2D at a random X coordinate
func _on_Timer_timeout():
	print("asda")
	var new_rigid_body = rigid_body_scene.instantiate()  # Create an instance of the RigidBody2D scene
	new_rigid_body.position = Vector2(randi_range(100,300),10)
	add_child(new_rigid_body)  # Add the new instance to the scene tree

# Function called every time the Timer times out
#func _on_Timer_timeout():
	#spawn_rigid_body()  # Spawn a new rigid body when the timer triggers
#
#func _ready():
	## Ensure a Timer node exists and set it up if necessary
	#var timer = $Timer if has_node("Timer") else Timer.new()
	#timer.wait_time = 1.0  # Set the timer to 1 second
	#timer.autostart = true  # Start the timer automatically
	#timer.connect("timeout", self, "_on_Timer_timeout")  # Connect the timeout signal
	#add_child(timer) if not has_node("Timer") else null  # Add Timer if not in the scene
