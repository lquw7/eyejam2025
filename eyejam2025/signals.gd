extends Node

signal PlayerInteractPressed
signal RemovePlayerMovement
signal AllowPlayerMovement

var isDialogueActive = false
signal StartDialogue(triggerSource: String)

signal InteractibleTriggered(intName: String)
