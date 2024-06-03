extends Control

func _on_ButtonBack_pressed():
	get_tree().change_scene("res://Cenas/Menu.tscn")

func _on_ButtonAdd_pressed():
	get_tree().change_scene("res://Cenas/Add.tscn")

func _on_ButtonEdit_pressed():
	get_tree().change_scene("res://Cenas/Gerenciamento.tscn")
