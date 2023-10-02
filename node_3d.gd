extends Node3D

func _ready():
	# Register Console
	Console.Console = $Console
	# Register Var Player
	Console.RegVar("Player",$Camera3D)
	# Register Object Container
	Console.RegVar("Container",$Container)
	
	
var t = 1.0

func _process(_delta):
	t -= _delta
	if t<0:
		t = 1.0
		# Add Log
		Console.AddLog(str(Engine.get_frames_per_second()))
