/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (global.contador == 0){
	
	draw_sprite_ext(vida, 0, x-165, y-280, 1, 1, 0, c_white, 1);
	draw_sprite_ext(indicar, 0, x-400, y-260, 1, 1, 300, -1, 1);
	draw_sprite_ext(indicaciones, 0, x-495, y-220, 1, 1, 0, c_white, 1);
	
}

if (global.contador == 1){
	
	draw_sprite_ext(cat_normal, 1, x-550, y-70, 1, 1, 0, c_white, 1);
	draw_sprite_ext(disparo_normal, 1, x-250, y-65, 1, 1, 0, c_white, 1);
	draw_sprite_ext(disparo_normal, 1, x-50, y-65, 1, 1, 0, c_white, 1);
	draw_sprite_ext(avispa, 1, x+500, y-65, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numeros, 6, x+560, y-65, 1, 1, 0, c_white, 1);
	draw_sprite_ext(avispa, 1, x+500, y+55, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numeros, 7, x+560, y+55, 1, 1, 0, c_white, 1);
	draw_sprite_ext(avispa, 1, x+500, y+175, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numeros, 9, x+560, y+175, 1, 1, 0, c_white, 1);
	draw_sprite_ext(MSR, 0, x-450, y+220, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, 2, x-140, y+230, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, 3, x-10, y+230, 1, 1, 0, c_white, 1);
	draw_text(530, 680, string("Y"));
	draw_sprite_ext(indicar, 0, x-250, y-150, 1, 1, 45, c_white, 1);
	draw_sprite_ext(indicaciones, 1, x-320, y-530, 1, 1, 0, c_white, 1);
	
}



if (global.contador == 2){
	
	draw_sprite_ext(volver, 0, x-580, y-428, 1, 1, 0, c_white, 1);
	draw_sprite_ext(pausa, 0, x+575, y-420, 1, 1, 0, c_white, 1);

	draw_sprite_ext(indicar, 0, x+350, y-140, 1, 1, 45, c_white, 1);
	draw_sprite_ext(indicar, 0, x-340, y-90, 1, 1, 135, -1, 1);
	draw_sprite_ext(indicaciones, 2, x-370, y-180, 1, 1, 0, c_white, 1);
}

if (global.contador == 3){
	draw_text(1065, 67, string("Puntaje"));
	draw_text(1185, 67, string("20"));
	draw_text(1065, 87, string("Max Puntaje"));
	draw_text(1185, 87, string("1200"));
	draw_text(1065, 110, string("Juegos"));
	draw_text(1185, 110, string("23"));
	draw_sprite_ext(indicar, 0, x+350, y-140, 1, 1, 45, c_white, 1);
	draw_sprite_ext(indicaciones, 3, x-350, y-150, 1, 1, 0, c_white, 1);
}

if (global.contador == 4){
	draw_sprite_ext(upss, 1, x+600, y+200, 1, 1, 0, c_white, 1);
	draw_sprite_ext(numerosNaranjos, 3, x+400, y+230, 1, 1, 0, c_white, 1);
	draw_sprite_ext(indicar, 4, x+200, y+70, 1, 1, 300, -1, 1);
	draw_sprite_ext(indicaciones, 4, x-400, y-200, 1, 1, 0, c_white, 1);
}
