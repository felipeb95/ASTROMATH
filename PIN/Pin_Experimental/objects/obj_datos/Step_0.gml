/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
segundos += (delta_time/1000000)*room_speed 
if(instance_exists(enemigo) and enemigo.disparado){
	show_debug_message("Num Ejercicio: "+string(global.numEjercicio)); //Nro. Ejercicio
	show_debug_message("Num Operacion: "+string(operacion.numOperacion)); //Nro. Sub-Ejercicio
	if(operacion.sor == 1) show_debug_message("Operacion Ejercicio: Suma"); //Suma o Resta de Fracciones
	else show_debug_message("Operacion Ejercicio: Resta"); //Suma o Resta de Fracciones
	if(operacion.numOperacion!=4) show_debug_message("Operacion SubEjercicio: Multiplicacion"); //Multiplicacion de A y B
	else{
		if(operacion.sor == 1) show_debug_message("Operacion SubEjercicio: Suma"); //Suma o Resta de Fracciones
		else show_debug_message("Operacion SubEjercicio: Resta"); //Suma o Resta de Fracciones
	}
	show_debug_message("Numerador 1: "+string(operacion.num1)); //Numerador 1
	show_debug_message("Denominador 1: "+string(operacion.den1)); //Denominador 1
	show_debug_message("Numerador 2: "+string(operacion.num2)); //Numerador 2
	show_debug_message("Denominador 2: "+string(operacion.den2)); //Denominador 2
	//show_debug_message("Primer Nro. Sub-Ejercicio: "+string(operacion.primero)); //Primer nro. Sub-Ejercicio
	//show_debug_message("Segundo Nro. Sub-Ejercicio: "+string(operacion.segundo)); //Segundo nro. Sub-Ejercicio
	segundos = segundos/60;
	show_debug_message("Segundos: "+string(segundos)); //Segundos
	segundos=0;
	if(operacion.enemBueno==1) {
		show_debug_message("Valor Intento: "+string(enemigo.numeroEnemigo)); //Valor Intento
		show_debug_message("Estado Intento: Correcta"); //Estado
	}
	else {
		show_debug_message("Valor Intento: "+string(enemigo.numeroEnemigo+enemigo.rango)); //Valor Intento
		show_debug_message("Estado Intento: Incorrecta"); //Estado
	}
	enemigo.disparado=false;
}
if(instance_exists(enemigo2) and enemigo2.disparado){
	show_debug_message("Num Ejercicio: "+string(global.numEjercicio)); //Nro. Ejercicio
	show_debug_message("Num Operacion: "+string(operacion.numOperacion)); //Nro. Sub-Ejercicio
	if(operacion.sor == 1) show_debug_message("Operacion Ejercicio: Suma"); //Suma o Resta de Fracciones
	else show_debug_message("Operacion Ejercicio: Resta"); //Suma o Resta de Fracciones
	if(operacion.numOperacion!=4) show_debug_message("Operacion SubEjercicio: Multiplicacion"); //Multiplicacion de A y B
	else{
		if(operacion.sor == 1) show_debug_message("Operacion SubEjercicio: Suma"); //Suma o Resta de Fracciones
		else show_debug_message("Operacion SubEjercicio: Resta"); //Suma o Resta de Fracciones
	}
	show_debug_message("Numerador 1: "+string(operacion.num1)); //Numerador 1
	show_debug_message("Denominador 1: "+string(operacion.den1)); //Denominador 1
	show_debug_message("Numerador 2: "+string(operacion.num2)); //Numerador 2
	show_debug_message("Denominador 2: "+string(operacion.den2)); //Denominador 2
	//show_debug_message("Primer Nro. Sub-Ejercicio: "+string(operacion.primero)); //Primer nro. Sub-Ejercicio
	//show_debug_message("Segundo Nro. Sub-Ejercicio: "+string(operacion.segundo)); //Segundo nro. Sub-Ejercicio
	segundos = segundos/60;
	show_debug_message("Segundos: "+string(segundos)); //Segundos
	segundos=0;
	if(operacion.enemBueno==2) {
		show_debug_message("Valor Intento: "+string(enemigo2.numeroEnemigo)); //Valor Intento
		show_debug_message("Estado Intento: Correcta"); //Estado
	}
	else {
		show_debug_message("Valor Intento: "+string(enemigo2.numeroEnemigo+enemigo2.rango)); //Valor Intento
		show_debug_message("Estado Intento: Incorrecta"); //Estado
	}
	enemigo2.disparado=false;
}
if(instance_exists(enemigo3) and enemigo3.disparado){
	show_debug_message("Num Ejercicio: "+string(global.numEjercicio)); //Nro. Ejercicio
	show_debug_message("Num Operacion: "+string(operacion.numOperacion)); //Nro. Sub-Ejercicio
	if(operacion.sor == 1) show_debug_message("Operacion Ejercicio: Suma"); //Suma o Resta de Fracciones
	else show_debug_message("Operacion Ejercicio: Resta"); //Suma o Resta de Fracciones
	if(operacion.numOperacion!=4) show_debug_message("Operacion SubEjercicio: Multiplicacion"); //Multiplicacion de A y B
	else{
		if(operacion.sor == 1) show_debug_message("Operacion SubEjercicio: Suma"); //Suma o Resta de Fracciones
		else show_debug_message("Operacion SubEjercicio: Resta"); //Suma o Resta de Fracciones
	}
	show_debug_message("Numerador 1: "+string(operacion.num1)); //Numerador 1
	show_debug_message("Denominador 1: "+string(operacion.den1)); //Denominador 1
	show_debug_message("Numerador 2: "+string(operacion.num2)); //Numerador 2
	show_debug_message("Denominador 2: "+string(operacion.den2)); //Denominador 2
	//show_debug_message("Primer Nro. Sub-Ejercicio: "+string(operacion.primero)); //Primer nro. Sub-Ejercicio
	//show_debug_message("Segundo Nro. Sub-Ejercicio: "+string(operacion.segundo)); //Segundo nro. Sub-Ejercicio
	segundos = segundos/60;
	show_debug_message("Segundos: "+string(segundos)); //Segundos
	segundos=0;
	if(operacion.enemBueno==3) {
		show_debug_message("Valor Intento: "+string(enemigo3.numeroEnemigo)); //Valor Intento
		show_debug_message("Estado Intento: Correcta"); //Estado
	}
	else {
		show_debug_message("Valor Intento: "+string(enemigo3.numeroEnemigo+enemigo3.rango)); //Valor Intento
		show_debug_message("Estado Intento: Incorrecta"); //Estado
	}
	enemigo3.disparado=false;
}
