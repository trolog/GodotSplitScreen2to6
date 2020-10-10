extends CanvasLayer

onready var viewport1 = $GridContainer/container1/Viewport1
onready var grid = $GridContainer

var viewports

func _ready():
	for i in range(1,grid.get_child_count() + 1):
		var view : Viewport = get_node("GridContainer/container" + str(i) + "/Viewport" + str(i))
		if(view != null):
			var zoom_size = (grid.get_child_count() + 1) / 2
			var cam : Camera2D = view.get_node("Camera2D")
			
			view.world_2d = viewport1.world_2d
			
			cam.zoom = Vector2(zoom_size,zoom_size)
			cam.global_position = viewport1.get_node("level0/" + str(i)).global_position
			
			
	pass # Replace with function body.
