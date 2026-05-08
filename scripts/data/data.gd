extends Node


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
	"invalid_drink": preload("res://assets/drinks/invalid_drink.png"),
	"empty_glass": preload("res://assets/drinks/empty_glass.png"),
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
