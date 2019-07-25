/// @description Insert description here
// You can write your code in this editor
numeroEnemigo = operacion_E.actual;
draw_sprite_ext(avispa, image_index, x, y, 1, 1, 0, c_white, 1);

if(operacion_E.enemBueno = 1) 
{	
	if(numeroEnemigo < 10) draw_sprite_ext(numeros, numeroEnemigo, x + 65, y, 1, 1, 0, c_white, 0.8);
	else
	{
		primero = numeroEnemigo div 10;
		segundo = numeroEnemigo mod 10;
		draw_sprite_ext(numeros, primero, x + 65, y, 1, 1, 0, c_white, 0.8);
		draw_sprite_ext(numeros, segundo, x + 115, y, 1, 1, 0, c_white, 0.8);
	}
}
else
{
	if(numeroEnemigo + rango < 10) draw_sprite_ext(numeros, numeroEnemigo + rango, x + 65, y, 1, 1, 0, c_white, 0.8);
	else
	{
		primero = (numeroEnemigo + rango) div 10;
		segundo = (numeroEnemigo + rango) mod 10;
		draw_sprite_ext(numeros, primero, x + 65, y, 1, 1, 0, c_white, 0.8);
		draw_sprite_ext(numeros, segundo, x + 115, y, 1, 1, 0, c_white, 0.8);
	}
}