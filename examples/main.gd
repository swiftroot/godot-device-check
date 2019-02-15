extends Control

var device_check = null

func _ready():
	if(Engine.has_singleton("DeviceCheck")):
	  device_check = Engine.get_singleton("DeviceCheck")

# Check if 
func _cb_supported_btn():
	var message = 'No DC SDK present'

	if device_check != null:
		message = str("Supported?: ", device_check.is_supported())
		
	$panel/supported_label.text = message 
