extends RigidBody2D

enum TYPE { tire,engine }

export(NodePath) var remas_path
export(TYPE) var type
onready var remas = get_node(remas_path)

var mouse_hovering = false

var pullable = true

func _ready():
	# connect the signals
	connect("mouse_entered", self, "_mouse_entered")
	connect("mouse_exited", self, "_mouse_exited")

func _mouse_entered():
	mouse_hovering = true

func _mouse_exited():
	mouse_hovering = false

func _process(delta):
	if pullable:
		if Input.is_action_just_pressed("mouseclick") and mouse_hovering:
			if remas.pulled_object == self:
				self.applied_force = Vector2(0,0)
				remas.pulled_object = null
			else:
				if remas.pulled_object != null:
					remas.pulled_object.applied_force = Vector2(0,0)
				remas.pulled_object = self

