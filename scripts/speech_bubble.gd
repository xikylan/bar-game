extends Node2D

@onready var panel = $PanelContainer
@onready var label = $PanelContainer/Label

func _ready() -> void:
	visible = false
	label.add_theme_font_size_override("font_size", 6)
	label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	label.custom_minimum_size.x = 100
	panel.custom_minimum_size.x = 100

func show_text(text: String) -> void:
	label.text = text
	visible = true
	
func hide_bubble() -> void:
	visible = false
