/// @description Insert description here
// You can write your code in this editor
if(enemigo.error_operacion == 1){
	
		if(enemigo.respuesta < 10){ 
			draw_sprite_ext(numerosNaranjos, enemigo.respuesta, 1030, 670, 1, 1, 0, c_white, 1);
			draw_sprite_ext(upss, image_index, 1250, 640, 1, 1, 0, c_white, 1);
		}else
		{
			primero = enemigo.respuesta div 10;
			segundo = enemigo.respuesta mod 10;
			draw_sprite_ext(upss, image_index, 1250, 640, 1, 1, 0, c_white, 1);
			draw_sprite_ext(numerosNaranjos, primero, 1030, 670, 1, 1, 0, c_white, 1);
			draw_sprite_ext(numerosNaranjos, segundo, 1080, 670, 1, 1, 0, c_white, 1);
		}
}
	if(enemigo2.error_operacion == 1){
	
		if(enemigo2.respuesta < 10) {
			draw_sprite_ext(numerosNaranjos, enemigo2.respuesta, 1030, 670, 1, 1, 0, c_white, 1);
			draw_sprite_ext(upss, image_index, 1250, 640, 1, 1, 0, c_white, 1);
		}
		else
		{
			primero = enemigo2.respuesta div 10;
			segundo = enemigo2.respuesta mod 10;
			draw_sprite_ext(upss, image_index, 1250, 640, 1, 1, 0, c_white, 1);
			draw_sprite_ext(numerosNaranjos, primero, 1030, 670, 1, 1, 0, c_white, 1);
			draw_sprite_ext(numerosNaranjos, segundo, 1080, 670, 1, 1, 0, c_white, 1);
		}
	}
	if(enemigo3.error_operacion == 1){
	
		if(enemigo3.respuesta < 10){ 
			draw_sprite_ext(numerosNaranjos, enemigo3.respuesta, 1030, 670, 1, 1, 0, c_white, 1);
			draw_sprite_ext(upss, image_index, 1250, 640, 1, 1, 0, c_white, 1);
		}
		else
		{
			primero = enemigo3.respuesta div 10;
			segundo = enemigo3.respuesta mod 10;
			draw_sprite_ext(upss, image_index, 1250, 640, 1, 1, 0, c_white, 1);
			draw_sprite_ext(numerosNaranjos, primero, 1030, 670, 1, 1, 0, c_white, 1);
			draw_sprite_ext(numerosNaranjos, segundo, 1080, 670, 1, 1, 0, c_white, 1);
		}
	}
	
	
//instance_destroy();