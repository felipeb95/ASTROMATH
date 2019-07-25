/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_sprite_ext(pausa, image_index, 1180, 25, 1, 1, 0, c_white, 1);
if(pausa_juego){

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	draw_text(room_width/2,room_height/2,"JUEGO PAUSADO");
	draw_text(room_width/2,(room_height/2)+30,"Para retomar presiona en el icono de pausa");
	draw_sprite_ext(cat_disparar, image_index, (room_width/2)-550,(room_height/2)+120, 1, 1, 0, c_white, 1);
	draw_sprite_ext(avispa, image_index, (room_width/2)+550,(room_height/2)+120, 1, 1, 0, c_white, 1);
	draw_sprite_ext(disparo_normal, image_index, (room_width/2),(room_height/2)+120, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(result_maripo, image_index, (room_width/2)-250,(room_height/2)-270, 1, 1, 0, c_white, 1);
	//draw_sprite_ext(vida,vidas_pausa , 239+200, 140+20, 1, 1, 0, c_white, 1);

}
