extends StaticBody3D
class_name Interactable

signal interacted(body)

#prompt message i.e. keymapping to press
@export var prompt_message = "[E] to Interact"

#Keymapping (Input mapping, project settings)
@export var prompt_action = "Interact"

func get_prompt():
	var key_name = ""
	for action in InputMap.action_get_events(prompt_action):
		if action is InputEventKey:
			key_name = OS.get_keycode_string(action.keycode)
	return prompt_message + "\n[" + key_name + "]"

func interact(body):
#Code for interact action of object
	
	
#Print to console for debugging - optional
	print("interacted!")

