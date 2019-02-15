/*
ios_device.mm 
Copyright (c) 2019 Alek Mlynek, Swift Root Inc.

Obj-C implementation for IOSDevice. A class that uses the Apple 
DeviceCheck SDK and returns the result in a GDScript callback.
*/

#import "ios_device.h"
#include "core/reference.h"

@implementation IOSDevice
int _userCount = 0;

- (void) setInstanceId: (int)pInstanceId {
	instanceId = pInstanceId;
}
- (bool) isSupported {
	if (@available(iOS 11, *)) {
		return [DCDevice.currentDevice isSupported];
	}
	
	return false;
}

- (void) getToken {
	if (@available(iOS 11, *)) {
		[DCDevice.currentDevice generateTokenWithCompletionHandler: ^(NSData *token, NSError *err){
			Object *obj = ObjectDB::get_instance(instanceId);

			if (token == nil) {
				NSLog(@"%@", [err localizedDescription]);
				obj->call_deferred("_callback_token_failed");
			}
			else {
				NSLog(@"Token OK");
				NSString *tokenString = [token base64EncodedStringWithOptions:0];
				obj->call_deferred("_callback_token_received", [tokenString UTF8String]);
			}
		}];
	}
}

@end
