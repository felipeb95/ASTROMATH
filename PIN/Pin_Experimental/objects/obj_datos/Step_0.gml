/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
segundos += (delta_time/1000000)*room_speed 
if(enemigo.disparado){
	show_debug_message(global.numEjercicio);
	show_debug_message(operacion.numOperacion);
	show_debug_message(operacion.num1);
	show_debug_message(operacion.den1);
	show_debug_message(operacion.num2);
	show_debug_message(operacion.den2);
	segundos = segundos/60;
	show_debug_message(segundos);
	segundos=0;
	if(operacion.enemBueno==1) {
		show_debug_message(enemigo.numeroEnemigo);
		show_debug_message("correcta");
	}
	else {
		show_debug_message(enemigo.numeroEnemigo+enemigo.rango);
		show_debug_message("incorrecta");
	}
	enemigo.disparado=false;
}
if(enemigo2.disparado){
	show_debug_message(global.numEjercicio);
	show_debug_message(operacion.numOperacion);
	show_debug_message(operacion.num1);
	show_debug_message(operacion.den1);
	show_debug_message(operacion.num2);
	show_debug_message(operacion.den2);
	segundos = segundos/60;
	show_debug_message(segundos);
	segundos=0;
	if(operacion.enemBueno==2) {
		show_debug_message(enemigo2.numeroEnemigo);
		show_debug_message("correcta");
	}
	else {
		show_debug_message(enemigo2.numeroEnemigo+enemigo2.rango);
		show_debug_message("incorrecta");
	}
	enemigo2.disparado=false;
}
if(enemigo3.disparado){
	show_debug_message(global.numEjercicio);
	show_debug_message(operacion.numOperacion);
	show_debug_message(operacion.num1);
	show_debug_message(operacion.den1);
	show_debug_message(operacion.num2);
	show_debug_message(operacion.den2);
	segundos = segundos/60;
	show_debug_message(segundos);
	segundos=0;
	if(operacion.enemBueno==3) {
		show_debug_message(enemigo3.numeroEnemigo);
		show_debug_message("correcta");
	}
	else {
		show_debug_message(enemigo3.numeroEnemigo+enemigo3.rango);
		show_debug_message("incorrecta");
	}
	enemigo3.disparado=false;
}
