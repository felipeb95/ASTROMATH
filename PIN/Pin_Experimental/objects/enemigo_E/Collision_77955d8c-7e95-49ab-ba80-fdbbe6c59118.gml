/// @description Insert description here
// You can write your code in this editor
if(hp > 0)hp--;
else 
{
	if(operacion_E.enemBueno = 1)
	{
		error_operacion = 0;
		operacion_E.estadoOperacion = false;
		operacion_E.Puntaje += 10;
		espera = false;
		enemigo2_E.espera = false;
		enemigo3_E.espera = false;
		x = equis;
		y = ygriega;
		enemigo2_E.x = enemigo2_E.equis;
		enemigo2_E.y = enemigo2_E.ygriega;
		enemigo3_E.x = enemigo3_E.equis;
		enemigo3_E.y = enemigo3_E.ygriega;
		hp = 2;
		enemigo2_E.hp = 2;
		enemigo3_E.hp = 2;
		audio_play_sound(sonidoGanar,70,false);
		
		if(operacion_E.numOperacion == 1){
			operacion_E.contador_cero++;
		}
		if(operacion_E.numOperacion == 2){
			operacion_E.contador_cero++;
		}
		if(operacion_E.numOperacion == 3){
			operacion_E.contador_uno++;
		}
		if(operacion_E.numOperacion == 4){
			operacion_E.contador_uno++;
		}
		if(operacion_E.numOperacion == 5){
			operacion_E.contador_dos++;
		}
		if(operacion_E.numOperacion == 6){
			operacion_E.contador_dos++;
		}
		if(operacion_E.numOperacion == 7){
			operacion_E.contador_tres++;
		}
		if(operacion_E.numOperacion == 8){
			operacion_E.contador_tres++;
		}
		if(operacion_E.numOperacion == 9){
			operacion_E.contador_cuatro++;
		}
		if(operacion_E.numOperacion == 10){
			operacion_E.contador_cuatro++;
		}
		if(operacion_E.numOperacion == 11){
			operacion_E.contador_cinco++;
		}
		if(operacion_E.numOperacion == 12){
			operacion_E.contador_cinco++;
		}
		if(operacion_E.numOperacion == 13){
			operacion_E.contador_seis++;
		}
		if(operacion_E.numOperacion == 14){
			operacion_E.contador_seis++;
		}
		if(operacion_E.numOperacion == 15){
			operacion_E.contador_siete++;
		}
		if(operacion_E.numOperacion == 16){
			operacion_E.contador_siete++;
		}
		if(operacion_E.numOperacion == 17){
			operacion_E.contador_ocho++;
		}
		if(operacion_E.numOperacion == 18){
			operacion_E.contador_ocho++;
		}
		if(operacion_E.numOperacion == 19){
			operacion_E.contador_nueve++;
		}
		if(operacion_E.numOperacion == 20){
			operacion_E.contador_nueve++;
			operacion_E.final = 1;
		}
		

	}
	else
	{
		// ESTE CODIGO PARA QUE PASE AL SIGUIENTE EJERCICIO PERDIENDO
		//espera = true;
		error_operacion = 1;
		respuesta = operacion_E.actual;
		operacion_E.estadoOperacion = false;
		espera = false;
		enemigo2_E.espera = false;
		enemigo3_E.espera = false;
		x = equis;
		y = ygriega;
		enemigo2_E.x = enemigo2_E.equis;
		enemigo2_E.y = enemigo2_E.ygriega;
		enemigo3_E.x = enemigo3_E.equis;
		enemigo3_E.y = enemigo3_E.ygriega;
		hp = 2;
		enemigo2_E.hp = 2;
		enemigo3_E.hp = 2;
		//vidas.vidas_index--;
		audio_play_sound(sonidoPerder,70,false);
		if(operacion_E.numOperacion == 20){
			//operacion_E.contador_nueve++;
			operacion_E.final = 1;
		}
	}
}