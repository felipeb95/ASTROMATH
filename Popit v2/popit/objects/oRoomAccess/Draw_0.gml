if(room_get_name(room) == "rWelcomeRoom"){
	draw_set_font(fWelcomeInstructions);
	draw_set_halign(fa_center);
	if(canStart){
		if(global.Config == 0 || global.Config == 2 || global.Config == 3)
			draw_text_transformed_colour(x, y, "Pulsa ESPACIO para comenzar", 1, 1, 0, c1, c1, c1, c1, alpha_change);
		else
			draw_text_transformed_colour(x, y, "Presiona en cualquier lugar para comenzar", 1, 1, 0, c1, c1, c1, c1, alpha_change);
	}
	else
		draw_text_transformed_colour(x, y, loadingTypewriterOut, 1, 1, 0, c1, c1, c1, c1, 1);
}

if(room_get_name(room) == "rEndRoom"){
	draw_set_font(fWelcomeInstructions)
	draw_set_halign(fa_center);
	draw_set_colour(c1);
	draw_text(x,y-20, "TU PUNTAJE FUE: "+string(global.playersScore)+" PUNTOS");
	draw_set_font(fEndRoomScore);
	if(global.Config == 0 || global.Config == 2 || global.Config == 3)
		draw_text(x,y+30, "Presiona ESPACIO para jugar otra vez");
	else
		draw_text(x,y+30, "Presiona en cualquier lugar para jugar otra vez");
}