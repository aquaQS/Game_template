extends Control

@onready var Audio_Name = $HBoxContainer/Audio_Name as Label
@onready var Audio_Num = $HBoxContainer/Audio_Num as Label
@onready var h_slider = $HBoxContainer/HSlider as HSlider

@export_enum("Master", "Music", "Effects") var bus_name : String

var bus_index : int = 0

func _ready():
	h_slider.value_changed.connect(on_value_changed)
	set_name_label()
	
func set_name_label() -> void:
	Audio_Name.text = str(bus_name)
	
func on_value_changed(value:float) -> void:
	pass
