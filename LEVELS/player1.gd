extends Sprite

var spd = 5
var follow_cam : Camera2D

func _ready():
	follow_cam = get_node("/root/splitscreen_component/GridContainer/container1/Viewport1/Camera2D")
	pass # Replace with function body.

func _process(delta):
	if(Input.is_action_pressed("ui_right")):
		global_position.x += spd
	if(Input.is_action_pressed("ui_left")):
		global_position.x -= spd
	if(Input.is_action_pressed("ui_up")):
		global_position.y -= spd
	if(Input.is_action_pressed("ui_down")):
		global_position.y += spd
		
	follow_cam.global_position = global_position
	pass
