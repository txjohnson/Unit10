extends "res://scripts/Level.gd"

func _ready():

	ball .position = Vector2(260, 200)
	goal .position = Vector2(500, 184)
	ball .apply_impulse (Vector2(0.0, 0.0), Vector2(150.0, 0.0))
	pass # Replace with function body.

