extends Node

# player signals
signal PlayerInteractPressed
signal RemovePlayerInteract
signal AllowPlayerInteract
signal RemovePlayerMovement
signal AllowPlayerMovement

# area based triggers
signal InteractibleTriggered(intName: String)
signal TeleTriggered(teleToPoint: Marker2D, cameraFocusPoint: Sprite2D)

# dialogue signals
signal DialogueStarted
signal DialogueFinished
