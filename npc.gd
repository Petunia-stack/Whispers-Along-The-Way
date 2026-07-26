extends Node2D


func _on_area_2d_body_entered(_body):
	get_node("../DialogueText").visible = true


func _on_area_2d_body_exited(_body):
	get_node("../DialogueText").visible = false
