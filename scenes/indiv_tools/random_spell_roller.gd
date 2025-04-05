extends PanelContainer

@onready var include_cantrip := false
@onready var spell_level := 1	# goes from 1-10
@onready var spell_count := 0
@onready var spell_number := 0	# starts at 0, uses spell number index

@onready var cantrip_count := {}

func _ready() -> void:
	include_cantrip = %IncludeCantripsCheckButton.button_pressed
	spell_level = %SpellLevelOptionButton.selected
	
	update_spell_count()

func update_spell_count() -> void:
	%SpellCountNumberLabel.set_text(str(spell_count))

func _on_include_cantrips_check_button_toggled(toggled_on: bool) -> void:
	include_cantrip = toggled_on
