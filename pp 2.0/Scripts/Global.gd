extends Node


var nome: String = "";
var sala: String = ""
var horario = "11:30"
var horas = [""]
var mins = [""]
var opcao = [""]
var dose = [""]

#
func getHour() -> int:
	var _time = Time.get_datetime_dict_from_system();
	# Hora e minun pwgano do sistema
	var _hour = _time.hour;
	return _hour
func getMins() -> int:
	var _time = Time.get_datetime_dict_from_system();
	var _minute = _time.minute;
	
	return _minute
	
