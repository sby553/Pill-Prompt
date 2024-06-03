extends Control

onready var opNomes: OptionButton = get_node("Nomes")
onready var _user = get_node("user")
onready var _labelname: Label = get_node("user/ColorRect/ColorRect3/LabelNome")
onready var _labelplace: Label = get_node("user/ColorRect/ColorRect3/LabelSala")
onready var _labelhour1: Label = get_node("user/ColorRect/ColorRect3/LabelGav1")
onready var _labelhour2: Label = get_node("user/ColorRect/ColorRect3/LabelGav2")
onready var _labelhour3: Label = get_node("user/ColorRect/ColorRect3/LabelGav3")
onready var _labelhour4: Label = get_node("user/ColorRect/ColorRect3/LabelGav4")
onready var _labelhour5: Label = get_node("user/ColorRect/ColorRect3/LabelGav5")
onready var _labelD1: Label = get_node("user/ColorRect/ColorRect3/LabelD1")
onready var _labelD2: Label = get_node("user/ColorRect/ColorRect3/LabelD2")
onready var _labelD3: Label = get_node("user/ColorRect/ColorRect3/LabelD3")
onready var _labelD4: Label = get_node("user/ColorRect/ColorRect3/LabelD4")
onready var _labelD5: Label = get_node("user/ColorRect/ColorRect3/LabelD5")


func _ready() -> void:
	print("hora: " + str(global.horas))
	print("opcao: " + str(global.opcao))
	add_itens()
	_labelname.text = str(global.nome)
	_labelplace.text = str(global.sala)
	_labelhour1.text = str(global.opcao[1], ")", "  ", global.horas[1], ":", global.mins[1])
	_labelhour2.text = str(global.opcao[2], ")", " ", global.horas[2], ":", global.mins[2])
	_labelhour3.text = str(global.opcao[3], ")", " ", global.horas[3], ":", global.mins[3])
	_labelhour4.text = str(global.opcao[4], ")", " ", global.horas[4], ":", global.mins[4])
	_labelhour5.text = str(global.opcao[5], ")", " ", global.horas[5], ":", global.mins[5])
	_labelD1.text = str(global.dose[1])
	_labelD2.text = str(global.dose[2])
	_labelD3.text = str(global.dose[3])
	_labelD4.text = str(global.dose[4])
	_labelD5.text = str(global.dose[5])
#func _process(delta) -> void:
#	for i in range (len(global.opcao)):
#		_labelhour1.text = str(global.opcao[i]) + "  " +str(global.horas[i]) + "   " + str(global.dose[i])
func _on_ButtonBack_pressed():
	get_tree().change_scene("res://Cenas/Menu.tscn")

func add_itens() -> void:
	opNomes.add_item("Selecione um paciente")
	opNomes.add_item(str(global.nome))

func _on_Confirm_pressed() -> void:
	_user.layer = 1 
	_user.visible = 1

func _on_ButtonBack2_pressed() -> void:
	_user.layer = 0
	_user.visible = 0


