/// @description Insert description here
// You can write your code in this editor
disparado = true;
if(hp > 0)hp--;
else 
{
	global.numEjercicio++;
	if(operacion.enemBueno = 2)
	{
		operacion.estadoOperacion = false;
		operacion.Puntaje += 10;
		espera = false;
		enemigo.espera = false;
		enemigo3.espera = false;
		x = equis;
		y = ygriega;
		enemigo.x = enemigo.equis;
		enemigo.y = enemigo.ygriega;
		enemigo3.x = enemigo3.equis;
		enemigo3.y = enemigo3.ygriega;
		hp = 2;
		enemigo.hp = 2;
		enemigo3.hp = 2;
		error_operacion = 0;
		audio_play_sound(sonidoGanar,70,false);
		operacion.contador_G++;
		

	}
	else
	{
		// ESTE CODIGO PARA QUE PASE AL SIGUIENTE EJERCICIO PERDIENDO
		//espera = true;
		error_operacion = 1;
		respuesta = operacion.actual;
		operacion.estadoOperacion = false;
		espera = false;
		enemigo.espera = false;
		enemigo3.espera = false;
		x = equis;
		y = ygriega;
		enemigo.x = enemigo.equis;
		enemigo.y = enemigo.ygriega;
		enemigo3.x = enemigo3.equis;
		enemigo3.y = enemigo3.ygriega;
		hp = 2;
		enemigo.hp = 2;
		enemigo3.hp = 2;
		vidas.vidas_index--;
		audio_play_sound(sonidoPerder,70,false);
		operacion.contador_G = 0;
		operacion.contador_M++;

	}
	
}