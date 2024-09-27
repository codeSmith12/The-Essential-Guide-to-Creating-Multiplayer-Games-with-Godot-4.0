extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_client_button_pressed() -> void:
	get_tree().change_scene_to_file("res://01.setting-up-a-server/practice1/Client.tscn")


func _on_server_button_pressed() -> void:
	get_tree().change_scene_to_file("res://01.setting-up-a-server/practice1/Server.tscn")
