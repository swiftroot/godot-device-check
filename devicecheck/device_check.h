/* device_check.h */

#ifndef DEVICE_CHECK_H
#define DEVICE_CHECK_H

#include "core/reference.h"

// typedef IOSDevicek *iosDevice;
//
#ifdef __OBJC__
@class IOSDevice;
typedef IOSDevice *iosDevicePointer;
#else
typedef void *iosDevicePointer;
#endif

class DeviceCheck : public Reference {
	GDCLASS(DeviceCheck, Reference);

	DeviceCheck *instance;
	iosDevicePointer iosDevice;

	protected:
		static void _bind_methods();
	public:
		bool is_supported();

		DeviceCheck();
		~DeviceCheck();
};
#endif
