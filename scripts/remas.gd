extends RigidBody2D

onready var camera = get_node("Camera2D")

var pulled_object: RigidBody2D

var attached_objects = []

func _process(delta):
	# if moving fast zoom out camera
	var moving = self.linear_velocity.length()
	if moving < 5:
		moving = 0
	
	var zoom = 0.4 + sqrt(moving)/50
	
	# make it more smooth
	var current_zoom = camera.zoom.x
	var new = current_zoom + (zoom-current_zoom)/10
	camera.zoom = Vector2(new, new);
	
	if pulled_object != null:
		var direction = (self.position-pulled_object.position).normalized()
		var force = 50
		
		self.applied_force = -direction* (force/self.mass)
		pulled_object.applied_force = direction* (force/pulled_object.mass)
		
		var touching = false
		var touching_obj = self
		# check if the pulled object touches me
		for obj in get_colliding_bodies():
			if obj == pulled_object:
				touching = true
				break
		# ... or any of my attached objects
		if not touching:
			for attached_obj in attached_objects:
				for obj in attached_obj.get_colliding_bodies():
					if obj == pulled_object:
						touching = true
						touching_obj = attached_obj
						break
		if touching:
			attach_object(touching_obj)
	
	if Input.is_action_pressed("ui_right"):
		var power = calc_engine_power()
		rotate_tires(power)
		self.applied_torque = 5000;
	elif Input.is_action_pressed("ui_left"):
		var power = calc_engine_power()
		rotate_tires(-power)
		self.applied_torque = -5000;
	else:
		rotate_tires(0)
		self.applied_torque = 0;

func attach_object(other_object):
	pulled_object.applied_force = Vector2(0,0)
	pulled_object.z_index = 98
	self.applied_force = Vector2(0,0)
	
	pulled_object.pullable = false
	var attach_point = pulled_object.position
	
	var joint = PinJoint2D.new()
	joint.softness = 0
	joint.node_a = other_object.get_path()
	joint.node_b = pulled_object.get_path()
	joint.position = attach_point + \
		pulled_object.anchor_position.rotated(pulled_object.rotation)
	joint.disable_collision = false
	get_node("joints").add_child(joint)
	attached_objects.push_back(pulled_object)
	pulled_object = null

func calc_engine_power():
	var power = 0
	for attached_obj in attached_objects:
		if attached_obj.type == 1: # engine
			power += attached_obj.engine_power
	return power

func rotate_tires(power):
	var tires = []
	for attached_obj in attached_objects:
		if attached_obj.type == 0: # tire
			tires.push_back(attached_obj)
	for tire in tires:
		var wheel = tire.get_node("wheel")
		var speed = (power-wheel.angular_velocity) \
				/ 200 * len(tires)
		wheel.angular_velocity += speed/wheel.mass
