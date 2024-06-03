#@TODO: os usuários serão instanciados à cena

extends Control
onready var _window = get_node("window")
onready var _labelUser1: Label = get_node("window/ColorRect2/LabelNome")
onready var _labelRoom: Label = get_node("window/ColorRect2/LabelSala")
onready var _opGavA: OptionButton = get_node("window/ColorRect2/GavA")
onready var _opGavB: OptionButton = get_node("window/ColorRect2/GavB")
onready var _opGavC: OptionButton = get_node("window/ColorRect2/GavC") 
onready var _labelpaciente: Label = get_node("Labelpaciente")
# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	add_itens()
	_disableItem()
	_labelUser1.text = str(global.nome);
	_labelRoom.text = str(global.sala);
	_labelpaciente.text = str(global.nome);
	
func _on_pass_pressed() -> void:
	_window.layer = 1
	_window.visible = 1

#	 get_tree().change_scene("res://Cenas/GenrenciarUser.tscn")
func _on_ButtonBack_pressed():
	get_tree().change_scene("res://Cenas/Gerenciar.tscn")

func add_itens():
	_opGavA.add_item("Gaveta A")
	_opGavA.add_item("A1")
	_opGavA.add_item("A2")
	_opGavA.add_item("A3")
	_opGavA.add_item("A4")
	_opGavA.add_item("A5")

	_opGavB.add_item("Gaveta B")
	_opGavB.add_item("B1")
	_opGavB.add_item("B2")
	_opGavB.add_item("B3")
	_opGavB.add_item("B4")
	_opGavB.add_item("B5")

	_opGavC.add_item("Gaveta C")
	_opGavC.add_item("C1")
	_opGavC.add_item("C2")
	_opGavC.add_item("C3")
	_opGavC.add_item("C4")
	_opGavC.add_item("C5")

func _disableItem():
	_opGavB.set_item_disabled(1, true)
	_opGavB.set_item_disabled(2, true)
	_opGavB.set_item_disabled(3, true)
	_opGavB.set_item_disabled(4, true)
	_opGavB.set_item_disabled(5, true)
	
	_opGavC.set_item_disabled(1, true)
	_opGavC.set_item_disabled(2, true)
	_opGavC.set_item_disabled(3, true)
	_opGavC.set_item_disabled(4, true)
	_opGavC.set_item_disabled(5, true)
	
func _on_ButtonBack2_pressed() -> void:
	_window.layer = -1
	_window.visible = 0


func _on_Confirmar_pressed() -> void:
	global.horas.append($window/ColorRect2/LineEditHora.text)
	print(global.horas)
	global.mins.append($window/ColorRect2/LineEditMin.text)
	print(global.mins)
	global.opcao.append($window/ColorRect2/GavA.get_item_text($window/ColorRect2/GavA.selected))
	print(global.opcao)
	global.dose.append($window/ColorRect2/LineDose.text)
	print(global.dose)
	_window.layer = -1
	_window.visible = 0
