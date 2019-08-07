/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (pausa_juego == false){
	vidas_pausa = vidas.vidas_index;
	puntaje = operacion.Puntaje;
	puntaje_max = vidas.smax;
	veces_jugadas = vidas.VecesJugadas;
	instance_deactivate_all(true);
	pausa_juego = true;
}
else{
	instance_activate_all();
	pausa_juego = false;
}