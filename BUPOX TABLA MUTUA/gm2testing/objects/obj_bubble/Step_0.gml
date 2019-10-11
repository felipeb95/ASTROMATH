/// @description Insert description here
// You can write your code in this editor
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
	

if(deinflate){
	image_xscale = image_xscale * 0.9995; // Bubbles x values are reduced to its 0.999th part every step
	image_yscale = image_yscale * 0.9995; // Bubbles y values are reduced to its 0.999th part every step
	
	/* The next condition should substract lifes from the player */
	if(image_xscale <= 0.65 or image_yscale <= 0.65){ // Limit for bubble to shrink
		show_debug_message("Time expired");
		image_xscale = 1; // Bubble returns to normal size
		image_yscale = 1; // Bubble returns to normal size
		deinflate = false;
		alarm[0] = 50; // Little timer for next deinflation
	}
}