extends Node2D

@onready var sprite = $Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func set_sprite(sprite_texture: CompressedTexture2D):
	print('called')
	if sprite_texture == null:
		sprite.texture = null
		return

	sprite.texture = sprite_texture
