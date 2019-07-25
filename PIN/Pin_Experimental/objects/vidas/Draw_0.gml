/// @description Insert description here
// You can write your code in this editor
if(global.name != "0" && PrimeraVez == 0 ){
	PrimeraVez = 1;
}
if(PrimeraVez == 0 ){
		room_goto(room_login);
}
//------------------------------- Obtiene la fecha actual----------------------------//
	
var fecha = string(current_day) + "/" + string (current_month) + "/" + string(current_year) 



// -------------------- Abre el archivo donde se guardan los datos -------------------//

 ini_open("datos.ini")
 
if(vidas_index == 0)
{
	
	
	//--------------- Obtiene la hora al perder------------------------------//
	var HoraFinal = string(current_hour) + ":" + string(current_minute) + ":" + string(current_second)

		//lee el score max que esta en el ini y si es menor lo cambia
		smax = ini_read_real("puntaje","scoremax",0)
		if(smax < operacion.Puntaje){
			
			smax = operacion.Puntaje;
			ini_write_real("puntaje","scoremax",operacion.Puntaje)
		}
		//------------------------------------------------------------------------------------------------
		
		
		//lee en el documento las veces jugadas por el usuario cambiandolo y sumarle 1 a las veces jugadas
		VecesJugadas = ini_read_real("juegos","vecesJugadas",0)
		VecesJugadas = VecesJugadas + 1;
		ini_write_real("juegos","vecesJugadas",VecesJugadas)
		//------------------------------------------------------------------------------------------------
		
	
	
		// Escribe en el documento el nombre del usuario, su puntaje y la fecha realizada la prueba
		ini_write_string(VecesJugadas,"hora inicio",global.tiempo_inicio)
		ini_write_string(VecesJugadas,"hora termino",HoraFinal)
		ini_write_string(VecesJugadas,"fecha",fecha)
		ini_write_real(VecesJugadas,"juegos",operacion.Puntaje)
		ini_write_real("primera","primera_vez",PrimeraVez)
		ini_write_string(VecesJugadas,"nombre",global.name)
		
		//------------------------------------------------------------------------------------------------
		if os_is_network_connected(){
			var str = "http://pingame.me/datos?veces_jugadas="+string(VecesJugadas) +"&max_puntaje=" +string(smax)+"&puntaje="+string(operacion.Puntaje)+"&hora_salida="+string(HoraFinal)+ "&hora_entrada="+string(global.tiempo_inicio) + "&nombre="+string(global.name) + "&tipo_experimento="+string(2)+ "&colegio="+string(1);
			http_get(str);
				ini_write_real(VecesJugadas,"enviado",1)
		}else{
			ini_write_real(VecesJugadas,"enviado",0)
		}
		room_goto(room_over);
}
	
ini_close();

// Lee el puntaje maximo alcanzado historicamente
	
	ini_open("datos.ini")
	smax = ini_read_real("puntaje","scoremax",0)
	ini_close();
//-----------------------------------------------

draw_sprite_ext(vida, vidas_index, x+200, y+20, 1, 1, 0, c_white, 1);

	