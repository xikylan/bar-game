extends Node2D

@onready var label = $Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func update_label(mix_data: Dictionary) -> void:
	var result = []
	for key in mix_data.keys():
		if mix_data.get(key):
			result.push_back(key)
	label.text = str(result)
