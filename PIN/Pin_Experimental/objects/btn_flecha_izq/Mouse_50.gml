/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


global.contador = global.contador - 1 ;
var roomname = room_get_name(room);

if(roomname == "room_instruccion1" )
{
	room_goto(room_instruccion1);
	
}

if(roomname == "room_instruccion1" &&  global.contador == -1)
{
	room_goto(room_menu);
	global.contador = 0;
	audio_stop_all();
}


