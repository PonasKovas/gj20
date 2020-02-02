extends CanvasLayer

onready var remas = get_node("../remas")

onready var score = remas.position.x

var highscore = 0

func _ready():
	highscore = load_highscore()
	$highscore.text = "highscore "+str(highscore)


func _process(delta):
	if round(remas.position.x) > score:
		score = round(remas.position.x)
		$score.text = "score "+str(score)
		
		if score > highscore:
			highscore = score
			$highscore.text = "highscore "+str(highscore)
			save_highscore(highscore)


func load_highscore():
	var save = File.new()
	if not save.file_exists("user://highscore.save"):
		return 0
	
	save.open("user://highscore.save", File.READ)
	
	var highscore = parse_json(save.get_line())["highscore"]
	save.close()
	return highscore


func save_highscore(highscore):
	var save = File.new()
	save.open("user://highscore.save", File.WRITE)
	save.store_line(to_json({"highscore":highscore}))
	save.close()
