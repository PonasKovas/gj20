extends Node2D

var objects = [
	preload("res://objects/engine.tscn"),
	preload("res://objects/engine2.tscn"),
	preload("res://objects/engine2.tscn"),
	preload("res://objects/engine3.tscn"),
	preload("res://objects/engine3.tscn"),
	preload("res://objects/engine3.tscn"),
	preload("res://objects/engine3.tscn"),
	preload("res://objects/engine4.tscn"),
	preload("res://objects/engine4.tscn"),
	preload("res://objects/engine4.tscn"),
	preload("res://objects/engine4.tscn"),
	preload("res://objects/garbage.tscn"),
	preload("res://objects/garbage.tscn"),
	preload("res://objects/garbage.tscn"),
	preload("res://objects/garbage.tscn"),
	preload("res://objects/garbage.tscn"),
	preload("res://objects/garbage.tscn"),
	preload("res://objects/garbage.tscn"),
	preload("res://objects/garbage.tscn"),
	preload("res://objects/garbage.tscn"),
	preload("res://objects/garbage.tscn"),
	preload("res://objects/garbage.tscn"),
	preload("res://objects/garbage.tscn"),
	preload("res://objects/garbage.tscn"),
	preload("res://objects/garbage.tscn"),
	preload("res://objects/garbage.tscn"),
	preload("res://objects/garbage.tscn"),
	preload("res://objects/garbage2.tscn"),
	preload("res://objects/garbage2.tscn"),
	preload("res://objects/garbage2.tscn"),
	preload("res://objects/garbage2.tscn"),
	preload("res://objects/garbage2.tscn"),
	preload("res://objects/garbage2.tscn"),
	preload("res://objects/garbage2.tscn"),
	preload("res://objects/garbage2.tscn"),
	preload("res://objects/garbage2.tscn"),
	preload("res://objects/garbage2.tscn"),
	preload("res://objects/garbage2.tscn"),
	preload("res://objects/garbage2.tscn"),
	preload("res://objects/garbage2.tscn"),
	preload("res://objects/garbage2.tscn"),
	preload("res://objects/garbage2.tscn"),
	preload("res://objects/garbage2.tscn"),
	preload("res://objects/garbage2.tscn"),
	preload("res://objects/garbage3.tscn"),
	preload("res://objects/garbage3.tscn"),
	preload("res://objects/garbage3.tscn"),
	preload("res://objects/garbage3.tscn"),
	preload("res://objects/garbage3.tscn"),
	preload("res://objects/garbage3.tscn"),
	preload("res://objects/garbage3.tscn"),
	preload("res://objects/garbage3.tscn"),
	preload("res://objects/garbage3.tscn"),
	preload("res://objects/garbage3.tscn"),
	preload("res://objects/garbage3.tscn"),
	preload("res://objects/garbage3.tscn"),
	preload("res://objects/garbage3.tscn"),
	preload("res://objects/garbage3.tscn"),
	preload("res://objects/garbage3.tscn"),
	preload("res://objects/garbage3.tscn"),
	preload("res://objects/garbage4.tscn"),
	preload("res://objects/garbage4.tscn"),
	preload("res://objects/garbage4.tscn"),
	preload("res://objects/garbage4.tscn"),
	preload("res://objects/garbage4.tscn"),
	preload("res://objects/garbage4.tscn"),
	preload("res://objects/garbage4.tscn"),
	preload("res://objects/garbage4.tscn"),
	preload("res://objects/garbage4.tscn"),
	preload("res://objects/garbage4.tscn"),
	preload("res://objects/garbage4.tscn"),
	preload("res://objects/garbage4.tscn"),
	preload("res://objects/garbage4.tscn"),
	preload("res://objects/garbage4.tscn"),
	preload("res://objects/garbage4.tscn"),
	preload("res://objects/garbage4.tscn"),
	preload("res://objects/garbage4.tscn"),
	preload("res://objects/garbage5.tscn"),
	preload("res://objects/garbage5.tscn"),
	preload("res://objects/garbage5.tscn"),
	preload("res://objects/garbage5.tscn"),
	preload("res://objects/garbage5.tscn"),
	preload("res://objects/garbage5.tscn"),
	preload("res://objects/garbage5.tscn"),
	preload("res://objects/garbage5.tscn"),
	preload("res://objects/garbage6.tscn"),
	preload("res://objects/garbage6.tscn"),
	preload("res://objects/garbage6.tscn"),
	preload("res://objects/garbage6.tscn"),
	preload("res://objects/garbage6.tscn"),
	preload("res://objects/garbage6.tscn"),
	preload("res://objects/garbage6.tscn"),
	preload("res://objects/garbage6.tscn"),
	preload("res://objects/garbage7.tscn"),
	preload("res://objects/garbage7.tscn"),
	preload("res://objects/garbage7.tscn"),
	preload("res://objects/garbage7.tscn"),
	preload("res://objects/garbage7.tscn"),
	preload("res://objects/garbage7.tscn"),
	preload("res://objects/garbage7.tscn"),
	preload("res://objects/garbage7.tscn"),
	preload("res://objects/garbage8.tscn"),
	preload("res://objects/garbage8.tscn"),
	preload("res://objects/garbage8.tscn"),
	preload("res://objects/garbage8.tscn"),
	preload("res://objects/garbage8.tscn"),
	preload("res://objects/garbage8.tscn"),
	preload("res://objects/garbage8.tscn"),
	preload("res://objects/garbage8.tscn"),
	preload("res://objects/garbage8.tscn"),
	preload("res://objects/garbage8.tscn"),
	preload("res://objects/garbage8.tscn"),
	preload("res://objects/garbage8.tscn"),
	preload("res://objects/garbage8.tscn"),
	preload("res://objects/garbage8.tscn"),
	preload("res://objects/garbage8.tscn"),
	preload("res://objects/garbage8.tscn"),
	preload("res://objects/garbage8.tscn"),
	preload("res://objects/garbage9.tscn"),
	preload("res://objects/garbage9.tscn"),
	preload("res://objects/garbage9.tscn"),
	preload("res://objects/garbage9.tscn"),
	preload("res://objects/tire.tscn"),
	preload("res://objects/tire.tscn"),
	preload("res://objects/tire.tscn"),
	preload("res://objects/tire.tscn"),
	preload("res://objects/tire.tscn"),
	preload("res://objects/tire.tscn"),
	preload("res://objects/tire.tscn"),
	preload("res://objects/tire.tscn"),
	preload("res://objects/tire.tscn"),
	preload("res://objects/tire2.tscn"),
	preload("res://objects/tire2.tscn"),
	preload("res://objects/tire2.tscn"),
	preload("res://objects/tire2.tscn"),
	preload("res://objects/tire3.tscn"),
	preload("res://objects/tire4.tscn"),
	preload("res://objects/tire4.tscn"),
	preload("res://objects/tire4.tscn"),
	preload("res://objects/tire4.tscn"),
	preload("res://objects/tire5.tscn"),
]

var pool = PoolVector2Array([
	Vector2(-1000, 200),
	Vector2( 200, 200),
])

var steepness = 0.0
var change_factor = 15.0
var segment_width = 50.0

onready var remas = get_node("remas")
onready var wall = get_node("wall")

onready var ground_polygon = get_node("ground")
onready var ground_collision_polygon = \
	get_node("ground/StaticBody2D/CollisionPolygon2D")

func _process(_delta):
	# move the wall with the player
	if (remas.position.x - wall.position.x) > 750.0:
		wall.position.x = remas.position.x-750.0
	# remove objects that are far away on the left from the player
	for obj in $objects.get_children():
		if remas.position.x - obj.position.x >= 650.0:
			obj.queue_free()
	
	# generate landscape
	var remo_pozicija = remas.position;
	if (pool[-1].x - remo_pozicija.x) < 1000:
		add_segment()

func add_segment():
	# make sure there are not more than 50 vertices in the pool,
	# to reduce lag
	if len(pool) == 50:
		pool.remove(0)
	randomize()
	steepness += (2.0*randf()-1.0)*change_factor
	if steepness < -40.0:
		steepness += 10.0
	var y = pool[-1].y+steepness
	if y > 1000:
		y = 1000
		steepness -= steepness
	var new_seg = Vector2(
		pool[-1].x+segment_width,
		y
	)
	pool.push_back(new_seg)
	
	var pool_with_bottom = pool
	pool_with_bottom.insert(0, Vector2(pool[0].x, 2000))
	pool_with_bottom.push_back(Vector2(pool[-1].x, 2000))
	
	ground_polygon.polygon = pool_with_bottom
	ground_collision_polygon.polygon = pool_with_bottom
	
	# instance some garbage
	randomize()
	#var number = 5.0 - floor(sqrt(randi()%9))
	if randi()%2 == 0:
	#for i in range(number):
		randomize()
		var object = randi()%len(objects)
		var instance = objects[object].instance()
		instance.position.x = pool[-1].x - 100
		instance.position.y = pool[-2].y - 40#(1+i)*40
		$objects.add_child(instance)
	
