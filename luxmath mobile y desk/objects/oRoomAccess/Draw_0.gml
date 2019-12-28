if(room_get_name(room) == "endRoom"){
	draw_set_font(scorefont);
	draw_set_halign(fa_center);
	draw_text(room_width/2, room_height/2, "OBTUVISTE "+string(global.playerScore)+" PUNTOS");
}

if(room_get_name(room) == "welcomeRoom"){
	draw_set_font(scorefont);
	draw_set_halign(fa_center);
	if(!oRoomAccess.canStart)
		draw_text(room_width/2, room_height-20, "CARGANDO");
}

if(global.playerState == -1){ // Just Lost
	draw_set_font(transitionFont);
	draw_set_halign(fa_center);
	if(global.Config == 0)
		draw_text(room_width/2, room_height/2, "PERDISTE EL ESCENARIO"+
		"\nLLEVAS "+string(global.playerScore)+" PUNTOS ACUMULADOS"+
		"\nPULSA <ENTER> PARA REINTENTAR ESTE ESCENARIO");
	else
		draw_text(room_width/2, room_height/2, "PERDISTE EL ESCENARIO"+
		"\nLLEVAS "+string(global.playerScore)+" PUNTOS ACUMULADOS"+
		"\nPRESIONA EN CUALQUIER PARTE PARA REINTENTAR ESTE ESCENARIO");
}

if(global.playerState == 1){ // Just Won
	draw_set_font(transitionFont);
	draw_set_halign(fa_center);
	if(global.Config == 0)
		draw_text(room_width/2, room_height/2, "GANASTE EL ESCENARIO"+
		"\nLLEVAS "+string(global.playerScore)+" PUNTOS ACUMULADOS"+
		"\nPULSA <ENTER> PARA SEGUIR JUGANDO");
	else
		draw_text(room_width/2, room_height/2, "GANASTE EL ESCENARIO"+
		"\nLLEVAS "+string(global.playerScore)+" PUNTOS ACUMULADOS"+
		"\nPRESIONA EN CUALQUIER PARTE PARA SEGUIR JUGANDO");
}