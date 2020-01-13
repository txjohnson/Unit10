extends "res://scripts/Level.gd"

func _ready():
	ball .position = Vector2(260, 200)
	goal .position = Vector2(260, 320)
	$Objects.get_node("Platform").position = Vector2(260, 240)
	$Objects.get_node("Platform2").position = Vector2(308, 240)
	ball .apply_impulse (Vector2(0.0, 0.0), Vector2(150.0, 0.0))
