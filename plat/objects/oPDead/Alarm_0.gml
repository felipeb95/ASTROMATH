/// @desc Resetear velocidad room
var data_send = undefined;
var mapToString = json_encode(oDataSaver.gameMap);
game_set_speed(60,gamespeed_fps);
if(global.vidas>=0) SlideTransition(TRANS_MODE.GOTO,room);
else {
	data_send = "puntaje="+string(global.puntaje)+
    "&correctas="+string(global.buenas)+
    "&incorrectas="+string(global.malas)+
    "&ejercicios="+string(global.numEjercicios)+
	"&jsonEjercicios="+string(mapToString);
    
	show_debug_message("[DATA SENT] "+data_send);
	
    post = http_post_string("http://platmath.informaticapucv.cl/async.php", data_send);
	SlideTransition(TRANS_MODE.RESTART);
}