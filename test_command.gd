extends Node

func test(params) -> String:
	print("test")
	return "done"


func test2(params) -> void:
	print("test 2")


func param(params) -> void:
	for p in params:
		print ("parameter " + str(p))


func setResolution(params) -> void:
	var resx = int(params[0])
	var resy = int(params[1])
	if (Console.currentViewport):
		Console.currentViewport.content_scale_size = Vector2(resx,resy)
	DisplayServer.window_set_size(Vector2i(resx,resy))


func setFullscreen(params) -> void:
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)


# param 0 -> Container -> Object from Console.vars
# param 1 -> Position -> "x,y,z"
func CameraPosition(params) -> void:
	print(params)
	print(Console.GetVar(params[0]))
	var con = Console.GetVar(params[0])
	if con:
		var b = preload("res://ball.tscn").instantiate()
		var p = params[1].split(",")
		var pos = Vector3(int(p[0]),int(p[1]),int(p[2])-5)
		con.add_child(b)
		b.global_position = pos
