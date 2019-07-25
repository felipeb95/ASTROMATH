/// @description Insert description here
// You can write your code in this editor

enviado = 1;

if os_is_network_connected(){
		
	ini_open("datos.ini")
		VecesJugadas = ini_read_real("juegos","vecesJugadas",0)
		PrimeraVez = ini_read_real("primera","primera_vez",0)
		if(global.name == 0 ){
				global.name = ini_read_real(VecesJugadas,"nombre",0);
			}
				enviado = ini_read_real(VecesJugadas,"enviado",0);
				
		smax = ini_read_real("puntaje","scoremax",0)
		HoraInicio = ini_read_string(VecesJugadas,"hora inicio",0)
		HoraFinal = ini_read_string(VecesJugadas,"hora termino",0)
		
		if(enviado == 0 && PrimeraVez != 0){
			var str = "http://pingame.me/datos?veces_jugadas="+string(VecesJugadas) +"&max_puntaje=" +string(smax)+"&puntaje="+string(smax)+"&hora_salida="+string(HoraFinal)+ "&hora_entrada="+string(HoraInicio) + "&nombre="+string(global.name) + "&tipo_experimento="+string(2)+ "&colegio="+string(1);
			http_get(str);
		}
	ini_close();
   }