extends Control

func _ready():
	var file = FileAccess.open("res://verse.json", FileAccess.READ)

	if file:
		var json_text = file.get_as_text()
		file.close()

		var json = JSON.new()
		if json.parse(json_text) == OK:
			var data = json.data
			$VersePanel/VerseLabel.text = data["reference"] + "\n\n" + data["content"]
		else:
			$VersePanel/VerseLabel.text = "Unable to read verse."
	else:
		$VersePanel/VerseLabel.text = "Verse not found."

	$AnimationPlayer.play("fade_in")
	$Timer.start()


func _on_timer_timeout():
	$AnimationPlayer.play("fade_out")
	await $AnimationPlayer.animation_finished
	get_tree().change_scene_to_file("res://scenes/village.tscn")
	
