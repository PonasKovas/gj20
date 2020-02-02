extends AnimatedSprite

func _process(delta):
	var parent_transform = get_parent().get_global_transform_with_canvas();
	self.rotation = (
		get_viewport().get_mouse_position() - \
		position - parent_transform.origin
	).angle()-parent_transform.get_rotation()
	if Input.is_action_just_pressed("mouseclick"):
		self.frame=0
		self.play("Fire")

func _on_GUN_animation_finished():
	if self.animation != 'Idle':
		self.play('Idle')
