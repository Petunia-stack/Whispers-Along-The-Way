extends CharacterBody2D

var player_near = false

@onready var dialogue_manager = $"../DialogueManager"
@onready var gloo_manager = preload("res://scripts/gloo_manager.gd").new()


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name != "Player":
		return

	player_near = true
	$"../Panel".visible = true
	$"../Panel/DialogueText".text = "Press E to Talk"


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.name != "Player":
		return

	player_near = false
	$"../Panel".visible = false


func _process(_delta):

	if !player_near:
		return

	if !Input.is_action_just_pressed("interact"):
		return

	var player = get_node("../Player")

	# Continue current dialogue if one is already active
	if dialogue_manager.dialogue_active:

		if dialogue_manager.next_line():
			$"../Panel/DialogueText".text = dialogue_manager.get_line()

		else:

			# Finished the quest dialogue
			if player.apples >= 3:
				get_bible_verse()
			else:
				$"../Panel".visible = false

		return

	# Start a new dialogue
	$"../Panel".visible = true

	if player.apples == 0:
		dialogue_manager.start_dialogue(dialogue_manager.welcome_dialogue)

	elif player.apples < 3:
		dialogue_manager.start_dialogue(dialogue_manager.reminder_dialogue)

	else:
		dialogue_manager.start_dialogue(dialogue_manager.complete_dialogue)

	$"../Panel/DialogueText".text = dialogue_manager.get_line()


func get_bible_verse():

	# Show Gloo encouragement first
	$"../Panel/DialogueText".text = gloo_manager.get_encouragement()

	await get_tree().create_timer(5.0).timeout

	var output = []

	var exit_code = OS.execute(
		"C:\\Users\\tpmol\\AppData\\Local\\Python\\pythoncore-3.14-64\\python.exe",
		["get_verse.py"],
		output,
		true
	)

	if exit_code == 0 and output.size() > 0:

		$"../Panel/DialogueText".text = output[0].strip_edges()

		await get_tree().create_timer(5.0).timeout

	else:

		$"../Panel/DialogueText".text = "Unable to connect to YouVersion.\nPlease check your internet connection."

		await get_tree().create_timer(3.0).timeout

	get_tree().change_scene_to_file("res://scenes/ending_scene.tscn")
	
