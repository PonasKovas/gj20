extends RigidBody2D

enum TYPE { tire,engine,garbage }

export(NodePath) var remas_path = "/root/world/remas"
export(Vector2) var anchor_position
export(TYPE) var type
export(float) var engine_power
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
				self.collision_layer = 1 # 1st layer
				self.collision_mask = 1 # 1st layer
				remas.pulled_object = null
				self.applied_force = Vector2(0,0)
				remas.applied_force = Vector2(0,0)
			else:
				if remas.pulled_object != null:
					remas.pulled_object.collision_layer = 1 # 1st layer
					remas.pulled_object.collision_mask = 1 # 1st layer
					remas.pulled_object.applied_force = Vector2(0,0)
				remas.pulled_object = self

				self.collision_layer = 2 # 2nd layer
				self.collision_mask = 3 # 1st and 2nd layers

