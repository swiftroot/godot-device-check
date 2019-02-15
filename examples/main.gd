extends Control

var device_check = null

func _ready():
	if(Engine.has_singleton("DeviceCheck")):
	  device_check = Engine.get_singleton("DeviceCheck")
	  device_check.init(get_instance_id())

func _callback_token_received(token):
	print(token)

func _callback_token_failed():
	print("Token failed")

func _cb_supported_btn():
	var message = 'No DC SDK present'

	if device_check != null && device_check.is_supported():
		message = 'Device check supported'

		device_check.get_token()
		
	$panel/supported_label.text = message 
