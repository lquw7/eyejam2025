extends Node2D

@export var interactArea: Area2D
@export var interactibleName: String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.interactArea.body_entered.connect(self.on_body_entered)
	self.interactArea.body_exited.connect(self.on_body_exited)

	$Prompt.hide()
	
func on_body_entered(body: Node2D):
	if not self.is_visible_in_tree():
		return
	if body is CharacterBody2D:
		$Prompt.show()
		Signals.PlayerInteractPressed.connect(triggerInteractible)
	
func on_body_exited(body: Node2D):
	if not self.is_visible_in_tree():
		return
	if body is CharacterBody2D:
		$Prompt.hide()
		Signals.PlayerInteractPressed.disconnect(triggerInteractible)

func triggerInteractible():
	Signals.InteractibleTriggered.emit(interactibleName)
