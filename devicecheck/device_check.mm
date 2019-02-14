/* device_check.mm (objective-c++) */

#include "device_check.h"
#import "app_delegate.h"

bool DeviceCheck::is_supported() {
	return [iosDevice is_supported];
}

void DeviceCheck::_bind_methods() {
	ClassDB::bind_method(D_METHOD("is_supported"), &DeviceCheck::is_supported);
}


DeviceCheck::DeviceCheck() {
	instance = this;

	iosDevice = [IOSDevice alloc];

}

DeviceCheck::~DeviceCheck() {
}
