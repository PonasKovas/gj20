extends Node2D

var pool = PoolVector2Array([
	Vector2(-500, 200),
	Vector2( 500, 200),
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
	pool_with_bottom.insert(0, Vector2(-500, 2000))
	pool_with_bottom.push_back(Vector2(pool[-1].x, 2000))
	
	ground_polygon.polygon = pool_with_bottom
	ground_collision_polygon.polygon = pool_with_bottom
	
	print(len(pool))

