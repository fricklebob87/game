extends Node3D

var SPEED = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.CreatureState == "staring":
		$CREATURE2.rotation.y = $ProtoController.rotation.y + 1.5
	if Global.CreatureState == "riding":
		$CREATURE2.position.x = $ProtoController.position.x 
		$CREATURE2.position.z = $ProtoController.position.z
		$CREATURE2.rotation.y = $ProtoController.rotation.y + -1.5
	if Global.CreatureState == "moving":
		if $CREATURE2.position.x < $ProtoController.position.x:
			$CREATURE2.position.x = $ProtoController.position.x + SPEED *delta
		elif $CREATURE2.position.x > $ProtoController.position.x:
			$CREATURE2.position.x = $ProtoController.position.x - SPEED *delta
		elif $CREATURE2.position.z < $ProtoController.position.z:
			$CREATURE2.position.z = $ProtoController.position.z - SPEED *delta
		elif $CREATURE2.position.z > $ProtoController.position.z:
			$CREATURE2.position.z = $ProtoController.position.z + SPEED *delta
		
		
		$CREATURE2.rotation.y = $ProtoController.rotation.y + 1.5

	#if $CREATURE2.position == $ProtoController.position:
	#	Global.CreatureState = "riding"
#		Global.CreatureState = "staring"
