extends Node2D

@onready var label = $Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func update_label(current_mix_key: String, is_valid: bool) -> void:
	label.text = current_mix_key + "\n" + ("valid" if is_valid else "invalid")
