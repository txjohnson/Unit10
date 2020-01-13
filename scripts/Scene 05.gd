extends "res://scripts/Level.gd"

func _ready():
	ball .position = Vector2(480, 420)
	goal .position = Vector2(688, 404)
	$Objects.get_node("Platform").position  = Vector2(480, 460)
	$Objects.get_node("Platform2").position = Vector2(688, 460)
	$Objects.get_node("Platform3").position = Vector2(688, 360)
	$Objects.get_node("Platform4").position = Vector2(640, 460)
	$Objects.get_node("Wall").position = Vector2(656, 410)
	ball .apply_impulse (Vector2(0.0, 0.0), Vector2(150.0, 0.0))
