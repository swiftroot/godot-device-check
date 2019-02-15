#include "register_types.h"
#include "core/class_db.h"
#include "device_check.h"

void register_devicecheck_types() {
	//  ClassDB is not a good idea in this case. If it doesn't exist, there is no way to check.
	//	ClassDB::register_class<DeviceCheck>();
	
	#if VERSION_MAJOR == 3
		Engine::get_singleton()->add_singleton(Engine::Singleton("DeviceCheck", memnew(GodotAdmob)));
	#else
		// Will load on Godot 2 but this is unsupported, use at your own risk
		Globals::get_singleton()->add_singleton(Globals::Singleton("DeviceCheck", memnew(GodotAdmob))); 
	#endif

}

void unregister_devicecheck_types() {
}
