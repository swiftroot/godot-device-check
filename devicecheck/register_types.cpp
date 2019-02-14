#include "register_types.h"
#include "core/class_db.h"
#include "device_check.h"

void register_devicecheck_types() {
	ClassDB::register_class<DeviceCheck>();
}

void unregister_devicecheck_types() {
}
