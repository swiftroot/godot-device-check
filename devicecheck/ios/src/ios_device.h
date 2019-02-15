/*
ios_device.h 
Copyright (c) 2019 Alek Mlynek, Swift Root Inc.

Obj-C interface for IOSDevice. A class that uses the Apple 
DeviceCheck SDK and returns the result in a GDScript callback.
*/

#import "app_delegate.h"
#import <DeviceCheck/DeviceCheck.h>

@interface IOSDevice : NSObject {
	int instanceId;
}

- (void) setInstanceId: (int)pInstanceId;
- (bool) isSupported;
- (void) getToken;
@end

