/// @description Insert description here
// You can write your code in this editor
if(obj_spawner.new_exercise) instance_destroy(self);

if(obj_spawner.phaseOneDone){
	x += aceleration;
	aceleration += 0.5;
	image_angle += 2;
	
	if(x >= 1500){
		show_debug_message("Bubble destroyed");
		instance_destroy(self);
	}
}
else
	image_angle += 0.1;