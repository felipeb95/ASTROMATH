/// @description Insert description here
// You can write your code in this editor
vidas_index=3;
smax=0;
ini_open("datos.ini")
	VecesJugadas = ini_read_real("juegos","vecesJugadas",0)
	PrimeraVez = ini_read_real("primera","primera_vez",0)
	if(global.name == 0 ){
			global.name = ini_read_string(VecesJugadas,"nombre",0);
		}
ini_close();