extends "res://scripts/Level.gd"

func _ready():
	ball .position = Vector2(300, 480)
	goal .position = Vector2(800, 466)
	$Objects.get_node("Platform").position = Vector2(300, 520)
	$Objects.get_node("Platform2").position = Vector2(800, 520)
	$Objects.get_node("Platform3").position = Vector2(752, 520)
	$Objects.get_node("Wall").position = Vector2(540, 460)
	$Objects.get_node("Wall2").position = Vector2(540, 413)
	ball .apply_impulse (Vector2(0.0, 0.0), Vector2(150.0, 0.0))
