extends "res://scripts/Level.gd"


func _ready():
	ball .position = Vector2(860, 380)
	goal .position = Vector2(788, 554)
	$Objects.get_node("Platform1").position  = Vector2(858, 444)
	$Objects.get_node("Platform1").scale     = Vector2(2, 2)
	
	$Objects.get_node("Platform2").position = Vector2(788, 610)
	$Objects.get_node("Platform2").scale = Vector2(1, 1)

	$Objects.get_node("Platform3").position = Vector2(762, 420)
	$Objects.get_node("Platform3").scale = Vector2(2, 1)
	
	$Objects.get_node("Platform4").position = Vector2(666, 420)
	$Objects.get_node("Platform4").scale = Vector2(2, 1)

	$Objects.get_node("Platform5").position = Vector2(570, 420)
	$Objects.get_node("Platform5").scale = Vector2(2, 1)
	
	$Objects.get_node("Platform6").position = Vector2(546, 468)
	$Objects.get_node("Platform6").scale = Vector2(1, 1)
	
	$Objects.get_node("Platform7").position = Vector2(545.954, 540)
	$Objects.get_node("Platform7").scale = Vector2(1, 2)
	
	$Objects.get_node("Wall").position = Vector2(818, 790.54)
	$Objects.get_node("Wall").scale = Vector2(1, 13)
	$Objects.get_node("Wall2").position = Vector2(818, 350)
	$Objects.get_node("Wall2").scale = Vector2(1, 2)
	
	ball .apply_impulse (Vector2(0.0, 0.0), Vector2(150.0, 0.0))
