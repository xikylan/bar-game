extends Node2D

var current_mix = Data.current_mix
var drink_sprites = Data.drink_sprites

@onready var label = $Label
@onready var current_drink = $CurrentDrink

func _init() -> void:
	print("BARSCENE INIT")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("BARSCENE READY")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func update_drink_sprite(reset := false):
	var current_mix_key = get_current_mix_key()
	var current_drink_sprite = get_current_drink_sprite()
	var is_valid = true if current_drink_sprite != drink_sprites["invalid_drink"] else false
	label.update_label(current_mix_key, is_valid) 

	current_drink.set_sprite(current_drink_sprite)
	
func get_current_mix_key() -> String:
	var result = []
	for key in current_mix.keys():
		if current_mix.get(key):
			result.push_back(key)

	result.sort()

	var mix = ",".join(result)
	return mix

func get_current_drink_sprite():
	var key = get_current_mix_key()
	var sprite = drink_sprites.get(key, null)
	return sprite if sprite else drink_sprites["invalid_drink"]

func _on_clear_clicked() -> void:
	reset_mix()

func reset_mix():
	for mix in current_mix:
		current_mix[mix] = false
	current_drink.set_sprite(drink_sprites["empty_glass"])
	
func _on_bottle_vodka_clicked() -> void:
	current_mix["vodka"] = true
	update_drink_sprite()

func _on_bottle_rum_clicked() -> void:
	current_mix["rum"] = true
	update_drink_sprite()

func _on_bottle_gin_clicked() -> void:
	current_mix["gin"] = true
	update_drink_sprite()
	
func _on_bottle_tequila_clicked() -> void:
	current_mix["tequila"] = true
	update_drink_sprite()

func _on_bottle_whiskey_clicked() -> void:
	current_mix["whiskey"] = true
	update_drink_sprite()

func _on_cola_clicked() -> void:
	current_mix["cola"] = true
	update_drink_sprite()

func _on_soda_clicked() -> void:
	current_mix["soda_water"] = true
	update_drink_sprite()

func _on_syrup_clicked() -> void:
	current_mix["simple_syrup"] = true
	update_drink_sprite()

func _on_lime_juice_clicked() -> void:
	current_mix["lime_juice"] = true
	update_drink_sprite()

func _on_orange_juice_clicked() -> void:
	current_mix["orange_juice"] = true
	update_drink_sprite()

func _on_ice_clicked() -> void:
	current_mix["ice"] = true
	update_drink_sprite()
