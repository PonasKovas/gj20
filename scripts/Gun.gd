extends AnimatedSprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	#print(self.get_parent().position)
	print(self.get_global_transform_with_canvas().origin)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.rotation = (get_viewport().get_mouse_position() - self.position - self.get_global_transform_with_canvas().origin).angle()-PI/2
	#print(get_viewport().get_mouse_position())
	if(Input.is_action_just_released("mouseclick")):
		self.frame=0
		self.play("Fire")



#func on_finished():
#	if $AnimatedSprite.animation != 'Idle':
#		$AnimatedSprite.play('Idle')


func _on_GUN_animation_finished():
	if self.animation != 'Idle':
		self.play('Idle')
	pass # Replace with function body.
