/// @description Insert description here
// You can write your code in this editor
show_message("Hola "+string(nombresito)+" tuviste "+string(operacion.Puntaje)+" de score");
ini_open("datos.ini")
vidas.smax = ini_read_real("usuario","scoremax",0)
	if(vidas.smax < operacion.Puntaje){
	
		ini_write_real("usuario","scoremax",operacion.Puntaje)
	}
ini_write_string("usuario","nombre",nombresito)
ini_write_real("usuario","score",operacion.Puntaje)
ini_close();

show_message("Quieres salir del juego ?");
salir = get_integer("Presiona 1 para salir 0 para seguir jugando y 2 para reiniciar el juego","");
if(salir == 1){

	game_end();
}
if(salir == 2){

	game_restart();
}