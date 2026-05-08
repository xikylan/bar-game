extends Node2D

@onready var speech_bubble = $SpeechBubble

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func hide_scene() -> void:
	visible = false
	
func unhide_scene() -> void:
	visible = true
	queue_speech_bubble()
	
func queue_speech_bubble() -> void:
	await get_tree().create_timer(1.0).timeout
	speech_bubble.show_text("hello world")
	await get_tree().create_timer(2.0).timeout
	speech_bubble.show_text("this is a test of a bigger speech bubble")
	await get_tree().create_timer(2.0).timeout
	speech_bubble.show_text("this is a test of an even bigger line of text to test constraints of the speech bubble")
	await get_tree().create_timer(2.0).timeout
	speech_bubble.show_text("short")
	await get_tree().create_timer(2.0).timeout
	speech_bubble.hide_bubble()
	
