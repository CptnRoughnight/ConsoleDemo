extends Node


var Console = null
var currentViewport : Viewport = null


func AddLog(value) -> void:
	if Console:
		Console.AddLog(value)
		
func RegVar(varName:String,value) -> void:
	if Console:
		Console.RegVar(varName,value)
	
		
func GetVar(varName:String):
	if Console:
		return Console.GetVar(varName)
	
	
func SaveLogFile(filename) -> void:
	if Console:
		Console._saveLogFile(filename)
