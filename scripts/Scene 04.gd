extends "res://scripts/Level.gd"

func _ready():
	ball .position = Vector2(960, 480)
	goal .position = Vector2(800, 466)
	$Objects.get_node("Platform").position = Vector2(960, 520)
	ball .apply_impulse (Vector2(0.0, 0.0), Vector2(150.0, 0.0))
