extends RigidBody2D

onready var camera = get_node("Camera2D")

var pulled_object: RigidBody2D

var attached_objects = []

func _process(delta):
	# if moving fast zoom out camera
	var zoom = 0.4 + sqrt(self.linear_velocity.length())/10
	
	# make it more smooth
	var current_zoom = camera.zoom.x
	var new = current_zoom + (zoom-current_zoom)/10
	camera.zoom = Vector2(new, new);
	
	if pulled_object != null:
		var direction = (self.position-pulled_object.position).normalized()
		var force = 50
		
		self.applied_force = -direction* (force/self.mass)
		pulled_object.applied_force = direction* (force/pulled_object.mass)
		
		# check if touching with the pulled object
		for obj in get_colliding_bodies():
			if obj == pulled_object:
				attach_object()
				break
	
	if Input.is_action_just_pressed("ui_up"):
		self.linear_velocity += Vector2(1000*delta, -10000*delta)

func attach_object():
	pulled_object.applied_force = Vector2(0,0)
	pulled_object.pullable = false
	var attach_point = pulled_object.position
	
	var joint = PinJoint2D.new()
	joint.softness = 8
	joint.node_a = self.get_path()
	joint.node_b = pulled_object.get_path()
	joint.position = attach_point
	joint.disable_collision = false
	get_node("joints").add_child(joint)
	attached_objects.push_back(pulled_object)
	pulled_object = null
