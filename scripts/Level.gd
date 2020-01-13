extends Node2D

var burst = preload("res://other/Burst.tscn")
var rand = RandomNumberGenerator.new()
onready var ball  = $Active.get_node("Ball")
onready var goal  = $Active.get_node("Goal")
onready var timer = $Active.get_node("Timer")

var fired :int = 0


func _ready():
	connect_springs (self)
	pass # Replace with function body.

func _on_Goal_body_entered(body):
	print ("Ball has entered goal!")


func _on_Ball_body_entered(body):
	if body.name == "Goal":
		ball.mode = RigidBody2D.MODE_STATIC
		ball.set_physics_process (false)
		ball.linear_velocity *= 0
		ball.angular_velocity *= 0
		timer.start (0.5)


func create_burst ():
	var b = burst.instance()
	b .position = Vector2 (320 + rand.randi_range(0, 1280), 160 + rand.randi_range (0, 768))
	$Objects.add_child (b)
	b.emitting = true


func _on_Timer_timeout():
	if (fired < 10):
		++fired
		create_burst ()
		timer .start (rand.randf_range (0.25, 1))


func _on_Spring_triggered(who):
	print("Boing!")
	who.hurl (ball)

func connect_springs(node):
	for n in node.get_children():
		if n.get_class() == "Spring":
			n.connect ("triggered", self, "_on_Spring_triggered")
		
		connect_springs (n)
