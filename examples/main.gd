extends Control

var device_check = null
var request = 'http://127.0.0.1:8000/validate' # Change to your server address
var headers = ['Content-Type: application/json']

func _ready():
	if(Engine.has_singleton("DeviceCheck")):
	  device_check = Engine.get_singleton("DeviceCheck")
	  device_check.init(get_instance_id())
	$HTTPRequest.connect('request_completed', self, '_cb_request_completed')
	
func send_to_server(token):
	print(token)
	
	# The token should now be sent to your validation server that interfaces with Device Check Server API
	$HTTPRequest.request(request, headers, false, HTTPClient.METHOD_POST, JSON.print({'device_token':token}))

func _cb_request_completed(result, response_code, headers, body ):
	print(result)
	print(response_code)

func _callback_token_received(token):
	print('Got Token in GDScript')
	send_to_server(token)

func _callback_token_failed():
	print("Token failed")

func _cb_supported_btn():
	var message = 'No DC SDK present'

	if device_check != null && device_check.is_supported():
		message = 'Device check supported'

		device_check.get_token()
		
	$panel/supported_label.text = message 
