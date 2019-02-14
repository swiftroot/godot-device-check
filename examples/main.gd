extends Control

onready var dc = DeviceCheck.new()

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

# Check if 
func _cb_supported_btn():
	$panel/supported_label.text = str("Supported?: ", dc.is_supported())
