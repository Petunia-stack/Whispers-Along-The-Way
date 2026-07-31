extends Node

var welcome_dialogue = [
	"Welcome, traveler!",
	"Our harvest has been difficult this season.",
	"Could you please collect 3 apples for me?"
]

var reminder_dialogue = [
	"You still need to collect 3 apples.",
	"I know you can do it!"
]

var complete_dialogue = [
	"Thank you for helping our village!",
	"Here is today's Scripture."
]

var current_dialogue = []
var current_line = 0
var dialogue_active = false


func start_dialogue(dialogue):
	current_dialogue = dialogue
	current_line = 0
	dialogue_active = true


func get_line():
	if current_line < current_dialogue.size():
		return current_dialogue[current_line]
	return ""


func next_line():
	current_line += 1

	if current_line >= current_dialogue.size():
		dialogue_active = false
		return false

	return true
	
