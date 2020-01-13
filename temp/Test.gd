extends Node2D

var burst = preload("res://other/Burst.tscn")
var rand = RandomNumberGenerator.new()
var fired :int = 0


func _ready():
	pass # Replace with function body.


func _on_Goal_body_entered(body):
	print ("Ball has entered goal!")
	
	pass # Replace with function body.


func _on_Ball_body_entered(body):
	if body.name == "Goal":
		$Ball.mode = RigidBody2D.MODE_STATIC
		$Ball.set_physics_process (false)
		$Ball.linear_velocity *= 0
		$Ball.angular_velocity *= 0
		print ("Collided with goal!")
		$Timer.start (0.5)

	pass # Replace with function body.


func create_burst ():
	var b = burst.instance()
	b .position = Vector2 (320 + rand.randi_range(0, 1280), 160 + rand.randi_range (0, 768))
	add_child (b)
	b.emitting = true


func _on_Timer_timeout():
	if (fired < 10):
		++fired
		create_burst ()
		$Timer .start (rand.randf_range (0.25, 1))
	
	pass # Replace with function body.


func _on_Spring_triggered(who):
	print ("Object triggered spring ", who)
	who.hurl($Ball)
	pass # Replace with function body.
