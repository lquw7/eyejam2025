extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Signals.InteractibleTriggered.connect(handleInteractible)

func handleInteractible(intName: String):
	match intName:
		"Bed":
			pass
		"Ancient box":
			pass
		"Front door":
			pass
		"Knife":
			pass
		"TV":
			pass
		_:
			$DialogueCreator.createDialogue("Test", "This is an ancient box")
