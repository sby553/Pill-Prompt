extends Control

func _on_ButtonManager_pressed() -> void:
	get_tree().change_scene("res://Cenas/Gerenciar.tscn")

func _on_ButtonUsers_pressed() -> void:
	get_tree().change_scene("res://Cenas/Pacientes.tscn")

func _ready() -> void:
	for i in range(len(global.horas)):
		if int(global.horas[i]) == global.getHour():
			$LabelPP3.text += str(global.horas[i])
			print(i + 1)
	for i in range(len(global.mins)):
		if int(global.mins[i]) == global.getMins():
			$LabelPP2.text += str(global.mins[i])
			print(i + 1)
