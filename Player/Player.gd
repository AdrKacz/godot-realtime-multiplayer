extends Node2D

export var is_active = true

onready var _controller = $Controller
onready var _object = $Object

var _target = Vector2()

func _input(event):
	if not is_active:
		return
		
	if event is InputEventMouseMotion:
		_target = event.global_position
		_controller.global_position = _target
