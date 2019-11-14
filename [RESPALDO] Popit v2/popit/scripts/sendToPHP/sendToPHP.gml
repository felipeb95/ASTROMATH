/// sendToPHP(gameMap);

var gameMap = argument0;
var data_send = undefined;
var mapToString = json_encode(gameMap);

data_send = "puntaje="+string(oPlayerProperties.puntaje)+
    "&correctas="+string(oPlayerProperties.correctAnswers)+
    "&incorrectas="+string(oPlayerProperties.wrongAnswers)+
    "&ejercicios="+string(oLogicSpawner.exercise)+
	"&jsonEjercicios="+string(mapToString);
    
	show_debug_message("[DATA SENT] "+data_send);
	
post = http_post_string("http://popit.informaticapucv.cl/async.php", data_send);