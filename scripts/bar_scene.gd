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

var valid_mixes = {
	"vodka": true,
	"gin": true,
	"tequila": true,
	"rum": true,
	"whiskey": true,
	"cola": true,
	"soda_water": true,
	"orange_juice": true,
	"lime_juice": true,
	"simple_syrup": true,
	"ice": true,

	"soda_water,vodka": true,
	"gin,soda_water": true,
	"soda_water,tequila": true,

	"orange_juice,vodka": true,
	"gin,orange_juice": true,
	"orange_juice,tequila": true,

	"lime_juice,vodka": true,
	"gin,lime_juice": true,
	"lime_juice,tequila": true,

	"simple_syrup,vodka": true,
	"gin,simple_syrup": true,
	"simple_syrup,tequila": true,

	"ice,vodka": true,
	"gin,ice": true,
	"ice,tequila": true,

	"cola,rum": true,
	"cola,whiskey": true,

	"lime_juice,rum": true,
	"lime_juice,whiskey": true,

	"rum,simple_syrup": true,
	"simple_syrup,whiskey": true,

	"ice,rum": true,
	"ice,whiskey": true,

	"cola,ice": true,
	"lime_juice,soda_water": true,
	"ice,soda_water": true,
	"ice,orange_juice": true,
	"lime_juice,simple_syrup": true,
	"ice,lime_juice": true,
	"ice,simple_syrup": true,

	"lime_juice,soda_water,vodka": true,
	"gin,lime_juice,soda_water": true,
	"lime_juice,soda_water,tequila": true,

	"ice,soda_water,vodka": true,
	"gin,ice,soda_water": true,
	"ice,soda_water,tequila": true,

	"ice,orange_juice,vodka": true,
	"gin,ice,orange_juice": true,
	"ice,orange_juice,tequila": true,

	"lime_juice,simple_syrup,vodka": true,
	"gin,lime_juice,simple_syrup": true,
	"lime_juice,simple_syrup,tequila": true,

	"ice,lime_juice,vodka": true,
	"gin,ice,lime_juice": true,
	"ice,lime_juice,tequila": true,

	"ice,simple_syrup,vodka": true,
	"gin,ice,simple_syrup": true,
	"ice,simple_syrup,tequila": true,

	"cola,ice,rum": true,
	"cola,ice,whiskey": true,

	"lime_juice,rum,simple_syrup": true,
	"lime_juice,simple_syrup,whiskey": true,

	"ice,lime_juice,rum": true,
	"ice,lime_juice,whiskey": true,

	"ice,rum,simple_syrup": true,
	"ice,simple_syrup,whiskey": true,

	"ice,lime_juice,soda_water": true,
	"ice,lime_juice,simple_syrup": true,

	"ice,lime_juice,soda_water,vodka": true,
	"gin,ice,lime_juice,soda_water": true,
	"ice,lime_juice,soda_water,tequila": true,

	"ice,lime_juice,simple_syrup,vodka": true,
	"gin,ice,lime_juice,simple_syrup": true,
	"ice,lime_juice,simple_syrup,tequila": true,

	"ice,lime_juice,rum,simple_syrup": true,
	"ice,lime_juice,simple_syrup,whiskey": true
}


@onready var label = $Label

func _init() -> void:
	print("BARSCENE INIT")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("BARSCENE READY")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	label.update_label(current_mix, valid_mixes)

func _on_clear_clicked() -> void:
	reset_mix()
		
func reset_mix():
	for mix in current_mix:
		current_mix[mix] = false
	
func _on_bottle_vodka_clicked() -> void:
	current_mix["vodka"] = true

func _on_bottle_rum_clicked() -> void:
	current_mix["rum"] = true

func _on_bottle_gin_clicked() -> void:
	current_mix["gin"] = true
	
func _on_bottle_tequila_clicked() -> void:
	current_mix["tequila"] = true

func _on_bottle_whiskey_clicked() -> void:
	current_mix["whiskey"] = true

func _on_cola_clicked() -> void:
	current_mix["cola"] = true

func _on_soda_clicked() -> void:
	current_mix["soda_water"] = true

func _on_syrup_clicked() -> void:
	current_mix["simple_syrup"] = true

func _on_lime_juice_clicked() -> void:
	current_mix["lime_juice"] = true

func _on_orange_juice_clicked() -> void:
	current_mix["orange_juice"] = true

func _on_ice_clicked() -> void:
	current_mix["ice"] = true
