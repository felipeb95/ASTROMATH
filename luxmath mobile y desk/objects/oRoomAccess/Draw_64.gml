if(room_get_name(room) == "endRoom"){
	draw_set_font(scorefont);
	draw_set_halign(fa_center);
	draw_text(room_width/2, room_height/2, "OBTUVISTE "+string(global.playerScore)+" PUNTOS");
}

if(room_get_name(room) == "welcomeRoom"){
	draw_set_font(transitionFont);
	draw_set_halign(fa_center);
	if(!oRoomAccess.canStart){
		draw_set_colour(c_yellow);
		draw_text(browser_width/2, browser_height-50, "CARGANDO");
		draw_set_colour(c_white);
	}
	else{
		draw_set_colour(c_yellow);
		draw_text(browser_width/2, browser_height-50, "LISTO, YA PUEDES JUGAR");
		draw_set_colour(c_white);
	}
}

if(global.playerState == -1){ // Just Lost
	canStart = true;
	draw_set_font(transitionFont);
	draw_set_halign(fa_center);
	if(global.Config == 1)
		draw_text(browser_width/2, browser_height/2, "PERDISTE EL ESCENARIO"+
		"\nLLEVAS "+string(global.playerScore)+" PUNTOS ACUMULADOS"+
		"\nPULSA <ENTER> PARA REINTENTAR ESTE ESCENARIO");
	else
		draw_text(browser_width/2, browser_height/2, "PERDISTE EL ESCENARIO"+
		"\nLLEVAS "+string(global.playerScore)+" PUNTOS ACUMULADOS"+
		"\nPRESIONA EN CUALQUIER PARTE PARA REINTENTAR ESTE ESCENARIO");
}

if(global.playerState == 1){ // Just Won
	canStart = true;
	draw_set_font(transitionFont);
	draw_set_halign(fa_center);
	if(global.Config == 1)
		draw_text(browser_width/2, browser_height/2, "GANASTE EL ESCENARIO"+
		"\nLLEVAS "+string(global.playerScore)+" PUNTOS ACUMULADOS"+
		"\nPULSA <ENTER> PARA SEGUIR JUGANDO");
	else
		draw_text(browser_width/2, browser_height/2, "GANASTE EL ESCENARIO"+
		"\nLLEVAS "+string(global.playerScore)+" PUNTOS ACUMULADOS"+
		"\nPRESIONA EN CUALQUIER PARTE PARA SEGUIR JUGANDO");
}