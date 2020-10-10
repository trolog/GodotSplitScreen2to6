extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var spd = 5
var follow_cam : Camera2D

# Called when the node enters the scene tree for the first time.
func _ready():
	follow_cam = get_node("/root/splitscreen_component/GridContainer/container2/Viewport2/Camera2D")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Input.is_action_pressed("d")):
		global_position.x += spd
	if(Input.is_action_pressed("a")):
		global_position.x -= spd
	if(Input.is_action_pressed("w")):
		global_position.y -= spd
	if(Input.is_action_pressed("s")):
		global_position.y += spd
		
	follow_cam.global_position = global_position
	pass
