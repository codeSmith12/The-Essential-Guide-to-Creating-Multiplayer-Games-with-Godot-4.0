extends Control


@onready var label = $ScrollContainer/Label
@onready var line_edit = $LineEdit
@onready var container = $ScrollContainer

var avatar_name = "John"

enum {
	DEFAULT_CHANNEL = 0,
	POSITION_CHANNEL = 1,
	CHAT_CHANNEL = 2
}
func _ready():
	pass


@rpc("any_peer", "call_local", "reliable", CHAT_CHANNEL)
func add_message(_avatar_name, message):
	var message_text = "%s: %s" % [_avatar_name, message]
	label.text = label.text + "\n" + message_text
	container.scroll_vertical = label.size.y
	
	
	


@rpc
func set_avatar_name(new_avatar_name):
	avatar_name = new_avatar_name


func _on_line_edit_text_submitted(new_text):
	if line_edit.text == "":
		return
	rpc("add_message", avatar_name, new_text)
	line_edit.clear()
