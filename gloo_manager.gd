extends Node

var use_real_gloo = false

func get_encouragement() -> String:

	if use_real_gloo:
		return get_real_gloo_response()

	return """🌿 Personalized Encouragement

Congratulations on completing your quest!

Your perseverance, patience, and willingness to help reflect the importance of staying faithful even in small acts.

Every journey begins with a single step, and every act of kindness has purpose. Continue walking with courage, knowing that God is with you wherever your path leads.
"""


func get_real_gloo_response() -> String:
	# This is where the real Gloo API call will go.
	return "Loading personalized encouragement from Gloo AI..."
	
