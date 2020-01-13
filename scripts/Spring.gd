extends RigidBody2D

signal triggered

export var power :float = 50

func get_class(): return "Spring"

func _ready():
	# Insure object is not scaled or roated
	scale = Vector2 (1.0, 1.0)
	rotation = 0.0
	

func hurl (what):
	print("Applying Impulse to ", what.name)
	$AnimationPlayer.play("Trigger")
	what .apply_impulse (Vector2 (0.0, 0.0), Vector2(0.0, -power))
	
	

func _on_Area2D_area_entered(area):
	emit_signal ("triggered", self)
