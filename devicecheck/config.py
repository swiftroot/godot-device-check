def can_build(platform):
	return platform=="iphone"

def configure(env):
	if env['platform'] == "iphone":
		env.Append(LINKFLAGS=['-ObjC', '-framework','DeviceCheck'])
