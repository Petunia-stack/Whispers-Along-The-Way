extends Area2D

static var apples_collected = 0

func _on_body_entered(body):
	if body.name == "Player":
		apples_collected += 1

		var village = get_tree().current_scene

		village.get_node("QuestPanel/QuestText").text = "Current Quest\n\nCollect 3 Apples\n\nProgress: %d/3" % apples_collected

		call_deferred("queue_free")

		if apples_collected >= 3:
			call_deferred("_finish_game")


func _finish_game():
	get_tree().change_scene_to_file("res://scenes/ending_scene.tscn")
	
