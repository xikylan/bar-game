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

@onready var label = $Label

func _init() -> void:
	print("BARSCENE INIT")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("BARSCENE READY")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	label.update_label(current_mix)

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
	current_mix["soda"] = true

func _on_syrup_clicked() -> void:
	current_mix["syrup"] = true

func _on_lime_juice_clicked() -> void:
	current_mix["lime_juice"] = true

func _on_orange_juice_clicked() -> void:
	current_mix["orange_juice"] = true

func _on_ice_clicked() -> void:
	current_mix["ice"] = true
