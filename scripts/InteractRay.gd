extends RayCast3D

@onready var player = $"../.."

@onready var prompt = $Prompt

func _ready():
	add_exception(player)

func _physics_process(_delta):
	prompt.text = ""
	if is_colliding():
		var detected = get_collider()
		
		if detected is Interactable:
			prompt.text = detected.name
			prompt.text = detected.get_prompt()
			
			if Input.is_action_just_pressed(detected.prompt_action):
				detected.interact(player)
