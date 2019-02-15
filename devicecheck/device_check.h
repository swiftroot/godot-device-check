/*
device_check.h 
Copyright (c) 2019 Alek Mlynek, Swift Root Inc.

C++ class for connecting Godot and the IOSDevice class. 
*/

#ifndef DEVICE_CHECK_H
#define DEVICE_CHECK_H

#include "core/reference.h"

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
		void init(int instanceId);
		bool is_supported();
		void get_token();

		DeviceCheck();
		// ~DeviceCheck();
};
#endif
