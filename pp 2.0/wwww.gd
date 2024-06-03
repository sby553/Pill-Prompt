extends Node

var notification_time = "10:23" # Define o horário desejado para notificação

func _ready():
	set_process(true) # Ativa o processo para verificar o horário regularmente

func _process(delta):
	var current_utc_time = OS.get_utc_time() # Obtém o tempo UTC atual
	var current_local_time = current_utc_time.localtime() # Converte para o fuso horário local
	var current_time_str = current_local_time.strftime("%H:%M") # Formata o horário atual no formato HH:MM
	
	if current_time_str == notification_time:
		show_notification("Hora de notificação! Horário atual: " + current_time_str)
		# Também pode ser adicionado código aqui para qualquer outra ação desejada

func show_notification(message):
	print(message) # Exibe a mensagem no console do Godot
