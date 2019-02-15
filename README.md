# Godot iOS Device Check
Apple iOS device check implementation for iOS 11+ in Godot

You can read the full implementation here.
https://developer.apple.com/documentation/devicecheck

## Status
This module is currently in beta but should work correctly.

## Install
- Clone this module and copy the devicecheck folder into your godot/modules folder
- Compile the export template for iOS

## Usage
- This module exposes a Godot singleton (DeviceCheck) with the following methods:

### init
Requires instance ID of current object for callback. Use get_instance_id() in GDScript.

### is_supported
Checks if DeviceCheck is supported on the current device. Returns true|false.

### get_token
Initiates token generation. Result returned in _callback_token_received, or _callback_token_failed.

#### Refer to the example project for specific implementation details

