if((keyboard_check_pressed(vk_down) or keyboard_check_pressed(vk_space) or global.cofre) and global.haskey==1){	
	global.respondida = true;
	global.mostrarEjercicio = false;
	global.cofre=false;
	with(other){
		global.respuesta = num;
		if(num==global.r) {
			if(global.tiempo!=0)global.porcRespuesta = (global.tInicial-oTimer.timer)/global.tInicial;
			audio_play_sound(snCorrect,5,false);
			if(global.grupo==1){
				global.memoria[global.a,global.b] = 2;
			}
			global.buena = true;
			global.buenas++;
			instance_destroy();
		}
		else {
			audio_play_sound(snIncorrect,5,false);
			if(global.grupo==1){
				global.memoria[global.a,global.b] = 1;
			}
			global.buena = false;
			global.malas++;	
			//instance_destroy();
			KillPlayer();
			instance_destroy(oPlayer);
		}
		
	}
	instance_create_depth(0,0,100,oFondo);
	
	//IMPRIMIR COSAS
	show_debug_message("Etapa: "+string(global.etapa));
	show_debug_message("Enemigos destruidos acumulado: "+string(global.kills));
	show_debug_message("Puntaje acumulado: "+string(global.puntaje));
	show_debug_message("Cantidad de buenas: "+string(global.buenas));
	show_debug_message("Cantidad de malas: "+string(global.malas));
	show_debug_message("Numero del ejercicio: "+string(global.numEjercicios));
	
	//De aqui pa abajo son listas
	show_debug_message("Origen: "+global.origen);
	show_debug_message("Operacion: "+global.operacion);
	if(global.buena) show_debug_message("Correcto");
	else show_debug_message("Incorrecto");
	show_debug_message("Numero 1: "+string(global.a));
	show_debug_message("Numero 2: "+string(global.b));
	show_debug_message("Respuesta correcta: "+string(global.r));
	show_debug_message("Respuesta escogida: "+string(global.respuesta));
	
	SaveToMap();
	
	
}