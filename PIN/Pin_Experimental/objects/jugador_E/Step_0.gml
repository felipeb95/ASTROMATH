/// @description Insert description here
if(posicion=="medio"){
	if(keyboard_check_released(vk_up)) {
		y = y-120;
		posicion = "arriba";
	}
	if(keyboard_check_released(vk_down)) {
		y = y+120;
		posicion = "abajo";
	}
}
if(posicion=="arriba"){
	if(keyboard_check_released(vk_down)) {
		y = y+120;
		posicion = "medio";
	}
}
if(posicion=="abajo"){
	if(keyboard_check_released(vk_up)) {
		y = y-120;
		posicion = "medio";
	}
}

x=clamp(x, 0, room_width);
y=clamp(y, 0, room_height);


if(retraso < 5) retraso = 5;

if(velocidad > 8) velocidad = 8;



if(boton_arriba.pulsado == false && boton_abajo.pulsado == false){
	numVY = 0;
	movimiento = numVY;
}else{
	if(boton_abajo.pulsado){
		numVY = +1 * velocidad;
		if(place_meeting(x,y+numVY,pared)) 
		{
			while(!place_meeting(x,y+sign(numVY),pared))
			{
				y = y + sign(numVY);
			}
			numVY = 0;
		}
		movimiento = numVY;
	}
	
	if(boton_arriba.pulsado){
		numVY = -1 * velocidad;
		if(place_meeting(x,y+numVY,pared)) 
		{
			while(!place_meeting(x,y+sign(numVY),pared))
			{
				y = y + sign(numVY)
			}
			numVY = 0;
		}
		movimiento = numVY;
	}
}


 
if(movimiento != 0 and !boton_disparo.disparo){
	sprite_index = cat_arriba;
}else{
	sprite_index = cat_normal;
}
delay = delay -1;
if((boton_disparo.disparo or keyboard_check(vk_space)) and delay < 0) 
{
	sprite_index = cat_disparar;
	
	auxX = x;
	auxY = y;
	delay = retraso;
	x = jugador_E.x + 60;
	y = jugador_E.y;
	audio_play_sound(sonidoDisparar,100,false);
	
	with(instance_create_layer(x,y,"Instances",fuego))
	{
		speed = 10;
		direction = other.image_angle;
		image_angle = direction;
	}
	
	x = auxX;
	y = auxY;
}
y += numVY;
