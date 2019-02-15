/*
device_check.mm 
Copyright (c) 2019 Alek Mlynek, Swift Root Inc.

C++ class implementation for connecting Godot and the IOSDevice class. 
*/


#include "device_check.h"
#import "app_delegate.h"

// Init
DeviceCheck::DeviceCheck() {
	instance = this;
}

void DeviceCheck::init(int instanceId)
{
	iosDevice = [IOSDevice alloc];
	[iosDevice setInstanceId:instanceId];

}

// Methods
bool DeviceCheck::is_supported() {
	return [iosDevice isSupported];
}

void DeviceCheck::get_token() {
	[iosDevice getToken];
}

void DeviceCheck::_bind_methods() {
	ClassDB::bind_method(D_METHOD("is_supported"), &DeviceCheck::is_supported);
	ClassDB::bind_method(D_METHOD("get_token"), &DeviceCheck::get_token);
	ClassDB::bind_method(D_METHOD("init"), &DeviceCheck::init);
}



