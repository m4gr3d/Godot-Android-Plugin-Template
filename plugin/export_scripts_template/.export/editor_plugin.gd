@tool
extends EditorPlugin

# A class member to hold the editor export plugin during its lifecycle.
var export_plugin : EditorExportPlugin

func _enter_tree():
	# Initialization of the plugin goes here.
	export_plugin = preload("editor_export_plugin.gd").new()
	add_export_plugin(export_plugin)


func _exit_tree():
	# Clean-up of the plugin goes here.
	remove_export_plugin(export_plugin)
	export_plugin = null
