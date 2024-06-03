extends Control

onready var _option: OptionButton = get_node("add_time/OptionButton")
onready var _layer_menu = get_node("add_time")
onready var _label_info = get_node("add_time/aviso")
onready var _valueTime = get_node("add_time/LineEdit")

## Para executar depois: itens da lista estarão contidos em um array
var gavetas: Array = ["a1", "a2", "a3"]
var gavetas_indisponiveis = []



func _ready() -> void:
	# Cria itens na lista
	 add_item()


func get_time():
	global.horas.appent(_valueTime.text) 
	print(global.horas)

func _on_add_pressed() -> void:
	# @TODO resolver depois essa condição
	if _option.text != null:
		get_time()
		closed_info()
	else:
		_label_info.text = "Adicione o horário primero"

func _process(delta) -> void:
	pass
	
	#  Para adicionar idem à lista
func add_item():
	_option.add_item("Gaveta A1")
	_option.add_separator()
	_option.add_item("Gaveta A2")
	_option.add_separator()


# Fecha janela de definição
func closed_info():
	_layer_menu.layer = 0
	_layer_menu.visible = false
	
	# Fecha a jabela de adição
func closed_info2():
	$wind_gaveta.layer = 0
	$wind_gaveta.visible = 0
	
	# Desabilitar gaveta da lista (ainda não utilizado)
func _disableItem(ind, estado):
	_option.set_item_disabled(ind, estado)


func _addIntensOnList(nome):
	_option.add_item(str(nome))
	_option.add_separator()

# Muda o nome de um item da lista via interface (a fazer > ainda não utilizado)
func _setItemName(ind, nome):
	_option.set_item_text(ind, str(nome))

# Abre janela de configuração de horário de remédio
func _on_config_pills_pressed() -> void:
	_layer_menu.visible = true
	_layer_menu.layer = 2

# Adiociona o novo item na lista
func _addGaveta():
	_addIntensOnList($wind_gaveta/gaveta.text)


func _on_add_gaveta_pressed() -> void:
	if $wind_gaveta/info2.text != null:
		_addGaveta()
		closed_info2()
		


func _on_config_gaveta_pressed() -> void:
	$wind_gaveta.visible = true
	$wind_gaveta.layer = 2

