extends Node2D


var current_mix = {
	"vodka": false,
	"rum": false,
	"gin": false,
	"whiskey": false,
	"tequila": false,
	"ice": false,
	"soda_water": false,
	"lime_juice": false,
	"simple_syrup": false,
	"orange_juice": false,
	"cola": false
}

var drink_sprites = {
	"vodka": preload("res://assets/drinks/clear_spirit.png"),
	"gin": preload("res://assets/drinks/clear_spirit.png"),
	"tequila": preload("res://assets/drinks/clear_spirit.png"),
	"rum": preload("res://assets/drinks/amber_spirit.png"),
	"whiskey": preload("res://assets/drinks/amber_spirit.png"),
	"cola": preload("res://assets/drinks/cola.png"),
	"soda_water": preload("res://assets/drinks/soda_water.png"),
	"orange_juice": preload("res://assets/drinks/orange_juice.png"),
	"lime_juice": preload("res://assets/drinks/lime_juice.png"),
	"simple_syrup": preload("res://assets/drinks/simple_syrup.png"),
	"ice": preload("res://assets/drinks/ice.png"),

	"soda_water,vodka": preload("res://assets/drinks/clear_spirit__soda_water.png"),
	"gin,soda_water": preload("res://assets/drinks/clear_spirit__soda_water.png"),
	"soda_water,tequila": preload("res://assets/drinks/clear_spirit__soda_water.png"),

	"orange_juice,vodka": preload("res://assets/drinks/clear_spirit__orange_juice.png"),
	"gin,orange_juice": preload("res://assets/drinks/clear_spirit__orange_juice.png"),
	"orange_juice,tequila": preload("res://assets/drinks/clear_spirit__orange_juice.png"),

	"lime_juice,vodka": preload("res://assets/drinks/clear_spirit__lime_juice.png"),
	"gin,lime_juice": preload("res://assets/drinks/clear_spirit__lime_juice.png"),
	"lime_juice,tequila": preload("res://assets/drinks/clear_spirit__lime_juice.png"),

	"simple_syrup,vodka": preload("res://assets/drinks/clear_spirit__simple_syrup.png"),
	"gin,simple_syrup": preload("res://assets/drinks/clear_spirit__simple_syrup.png"),
	"simple_syrup,tequila": preload("res://assets/drinks/clear_spirit__simple_syrup.png"),

	"ice,vodka": preload("res://assets/drinks/clear_spirit__ice.png"),
	"gin,ice": preload("res://assets/drinks/clear_spirit__ice.png"),
	"ice,tequila": preload("res://assets/drinks/clear_spirit__ice.png"),

	"cola,rum": preload("res://assets/drinks/amber_spirit__cola.png"),
	"cola,whiskey": preload("res://assets/drinks/amber_spirit__cola.png"),

	"lime_juice,rum": preload("res://assets/drinks/amber_spirit__lime_juice.png"),
	"lime_juice,whiskey": preload("res://assets/drinks/amber_spirit__lime_juice.png"),

	"rum,simple_syrup": preload("res://assets/drinks/amber_spirit__simple_syrup.png"),
	"simple_syrup,whiskey": preload("res://assets/drinks/amber_spirit__simple_syrup.png"),

	"ice,rum": preload("res://assets/drinks/amber_spirit__ice.png"),
	"ice,whiskey": preload("res://assets/drinks/amber_spirit__ice.png"),

	"cola,ice": preload("res://assets/drinks/cola__ice.png"),
	"lime_juice,soda_water": preload("res://assets/drinks/lime_juice__soda_water.png"),
	"ice,soda_water": preload("res://assets/drinks/ice__soda_water.png"),
	"ice,orange_juice": preload("res://assets/drinks/ice__orange_juice.png"),
	"lime_juice,simple_syrup": preload("res://assets/drinks/lime_juice__simple_syrup.png"),
	"ice,lime_juice": preload("res://assets/drinks/ice__lime_juice.png"),
	"ice,simple_syrup": preload("res://assets/drinks/ice__simple_syrup.png"),

	"lime_juice,soda_water,vodka": preload("res://assets/drinks/clear_spirit__lime_juice__soda_water.png"),
	"gin,lime_juice,soda_water": preload("res://assets/drinks/clear_spirit__lime_juice__soda_water.png"),
	"lime_juice,soda_water,tequila": preload("res://assets/drinks/clear_spirit__lime_juice__soda_water.png"),

	"ice,soda_water,vodka": preload("res://assets/drinks/clear_spirit__ice__soda_water.png"),
	"gin,ice,soda_water": preload("res://assets/drinks/clear_spirit__ice__soda_water.png"),
	"ice,soda_water,tequila": preload("res://assets/drinks/clear_spirit__ice__soda_water.png"),

	"ice,orange_juice,vodka": preload("res://assets/drinks/clear_spirit__ice__orange_juice.png"),
	"gin,ice,orange_juice": preload("res://assets/drinks/clear_spirit__ice__orange_juice.png"),
	"ice,orange_juice,tequila": preload("res://assets/drinks/clear_spirit__ice__orange_juice.png"),

	"lime_juice,simple_syrup,vodka": preload("res://assets/drinks/clear_spirit__lime_juice__simple_syrup.png"),
	"gin,lime_juice,simple_syrup": preload("res://assets/drinks/clear_spirit__lime_juice__simple_syrup.png"),
	"lime_juice,simple_syrup,tequila": preload("res://assets/drinks/clear_spirit__lime_juice__simple_syrup.png"),

	"ice,lime_juice,vodka": preload("res://assets/drinks/clear_spirit__ice__lime_juice.png"),
	"gin,ice,lime_juice": preload("res://assets/drinks/clear_spirit__ice__lime_juice.png"),
	"ice,lime_juice,tequila": preload("res://assets/drinks/clear_spirit__ice__lime_juice.png"),

	"ice,simple_syrup,vodka": preload("res://assets/drinks/clear_spirit__ice__simple_syrup.png"),
	"gin,ice,simple_syrup": preload("res://assets/drinks/clear_spirit__ice__simple_syrup.png"),
	"ice,simple_syrup,tequila": preload("res://assets/drinks/clear_spirit__ice__simple_syrup.png"),

	"cola,ice,rum": preload("res://assets/drinks/amber_spirit__cola__ice.png"),
	"cola,ice,whiskey": preload("res://assets/drinks/amber_spirit__cola__ice.png"),

	"lime_juice,rum,simple_syrup": preload("res://assets/drinks/amber_spirit__lime_juice__simple_syrup.png"),
	"lime_juice,simple_syrup,whiskey": preload("res://assets/drinks/amber_spirit__lime_juice__simple_syrup.png"),

	"ice,lime_juice,rum": preload("res://assets/drinks/amber_spirit__ice__lime_juice.png"),
	"ice,lime_juice,whiskey": preload("res://assets/drinks/amber_spirit__ice__lime_juice.png"),

	"ice,rum,simple_syrup": preload("res://assets/drinks/amber_spirit__ice__simple_syrup.png"),
	"ice,simple_syrup,whiskey": preload("res://assets/drinks/amber_spirit__ice__simple_syrup.png"),

	"ice,lime_juice,soda_water": preload("res://assets/drinks/ice__lime_juice__soda_water.png"),
	"ice,lime_juice,simple_syrup": preload("res://assets/drinks/ice__lime_juice__simple_syrup.png"),

	"ice,lime_juice,soda_water,vodka": preload("res://assets/drinks/clear_spirit__ice__lime_juice__soda_water.png"),
	"gin,ice,lime_juice,soda_water": preload("res://assets/drinks/clear_spirit__ice__lime_juice__soda_water.png"),
	"ice,lime_juice,soda_water,tequila": preload("res://assets/drinks/clear_spirit__ice__lime_juice__soda_water.png"),

	"ice,lime_juice,simple_syrup,vodka": preload("res://assets/drinks/clear_spirit__ice__lime_juice__simple_syrup.png"),
	"gin,ice,lime_juice,simple_syrup": preload("res://assets/drinks/clear_spirit__ice__lime_juice__simple_syrup.png"),
	"ice,lime_juice,simple_syrup,tequila": preload("res://assets/drinks/clear_spirit__ice__lime_juice__simple_syrup.png"),

	"ice,lime_juice,rum,simple_syrup": preload("res://assets/drinks/amber_spirit__ice__lime_juice__simple_syrup.png"),
	"ice,lime_juice,simple_syrup,whiskey": preload("res://assets/drinks/amber_spirit__ice__lime_juice__simple_syrup.png")
}


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
	
func update_drink_sprite():
	var current_mix_key = get_current_mix_key()
	var current_drink_sprite = get_current_drink_sprite()
	var is_valid = true if current_drink_sprite else false
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
	return sprite

func _on_clear_clicked() -> void:
	reset_mix()
		
func reset_mix():
	for mix in current_mix:
		current_mix[mix] = false
	
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
