extends MarginContainer

@export var starting_gold := 150
@onready var gold_label: Label = $GoldLabel

var gold: int:
	set(gold_in):
		gold = max(gold_in, 0)
		gold_label.text = "Gold: " + str(gold)

func _ready() -> void:
	gold = starting_gold
