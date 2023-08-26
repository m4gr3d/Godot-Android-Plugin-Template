@tool
extends EditorExportPlugin

# TODO: Update to your plugin's name.
var _plugin_name = "GodotAndroidPluginTemplate"

func _supports_platform(platform):
	if platform is EditorExportPlatformAndroid:
		return true
	return false

func _get_android_libraries(platform, debug):
	if debug:
		return PackedStringArray([_plugin_name + "/.bin/debug/" + _plugin_name + "-debug.aar"])
	else:
		return PackedStringArray([_plugin_name + "/.bin/release/" + _plugin_name + "-release.aar"])

func _get_name():
	return _plugin_name
