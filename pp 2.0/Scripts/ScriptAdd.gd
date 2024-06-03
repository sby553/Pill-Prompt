extends Control

func _on_ButtonBack_pressed():
		get_tree().change_scene("res://Cenas/Gerenciar.tscn")

func _ready():
	$LineEditNome.connect("text_changed", self, "_on_LineEditNome_text_changed")
	$LineEditSala.connect("text_entered", self, "_on_LineEditSala_text_entered")

func _on_LineEditNome_text_changed(new_text):
	# Atualiza o nome sempre que o texto mudar na LineEdit do nome
	global.nome = new_text

func _on_LineEditSala_text_entered(new_text):
	# Armazena o texto inserido na variável sala quando a tecla Enter é pressionada na LineEdit da sala
	global.sala = new_text
	print("Nome inserido:", global.nome)
	print("Sala inserida:", global.sala)
	get_tree().change_scene_to(load("res://Cenas/Add.tscn"))


func _on_LineEditSala_text_changed(new_text: String) -> void:
	pass # Replace with function body.
