extends Node3D

@export var max_health: int = 5
@onready var label_3d: Label3D = $Label3D

var current_health: int:
	set(health_in):
		current_health = health_in
		label_3d.text = str(current_health) + "/" + str(max_health)
		var red: Color = Color.RED
		var green: Color = Color.GREEN
		label_3d.modulate = red.lerp(green, float(current_health) / float(max_health))
		if current_health < 1:
			print("You lost!")
			get_tree().reload_current_scene()

func _ready() -> void:
	current_health = max_health

func take_damage() -> void:
	current_health -= 1

	
