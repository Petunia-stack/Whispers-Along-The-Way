extends Node2D

func _ready() -> void:
	$QuestPanel.visible = true
	$QuestPanel/QuestText.text = "Current Quest\n\nCollect 3 Apples\n\nProgress: 0/3"
	
