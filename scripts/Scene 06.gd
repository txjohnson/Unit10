extends "res://scripts/Level.gd"

func _ready():
	ball .position = Vector2(480, 750)
	goal .position = Vector2(1384, 280)
	$Objects.get_node("Platform1").position  = Vector2(480, 790)
	$Objects.get_node("Platform2").position = Vector2(1384, 336)
	$Objects.get_node("Platform3").position = Vector2(892, 530)
	$Objects.get_node("Platform4").position = Vector2(940, 530)
	$Objects.get_node("Platform5").position = Vector2(988, 530)
	$Objects.get_node("Platform6").position = Vector2(1036, 530)
	$Objects.get_node("Platform7").position = Vector2(552, 790)
	$Objects.get_node("Wall").position = Vector2(860, 276)
	$Objects.get_node("Wall").scale = Vector2(1, 12)
	$Objects.get_node("Wall2").position = Vector2(1416, 184)
	$Objects.get_node("Wall2").scale = Vector2(1, 8)
	ball .apply_impulse (Vector2(0.0, 0.0), Vector2(150.0, 0.0))
