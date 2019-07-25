/// @description Insert description here
// You can write your code in this editor

	var inst;
		inst = instance_create_depth(x, y,-1000, object_feedback);
	with (inst){
	   speed = jugador.speed;
	   direction = jugador.image_angle;
   }
	//instance_activate_object(object_feedback);
	