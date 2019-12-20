if(room_get_name(room) == "EndRoom"){
	draw_set_font(scorefont);
	draw_set_halign(fa_center);
	draw_text(room_width/2, room_height/2, "Tu puntaje fue: "+string(global.playerScore));
}