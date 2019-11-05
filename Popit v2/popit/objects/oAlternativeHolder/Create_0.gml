/* VARIABLES */
randomize();
ySpeed = 2;//random_range(0.3,0.6);
rotation = random_range(0.5,0.8);
image_index = irandom_range(0,sprite_get_number(sAlternativeHolder)-1);
//sub_img = irandom_range(0,sprite_get_number(sAlternativeHolder)-1);
//image_speed = 0;
show_debug_message("My index is: "+string(image_index));
numberOnHolder = undefined;
isCorrect = false;
applies = -1; 
/* 
	-1 : Not the correct anser.
	 0 : Doesn't apply, but is the correct answer.
	 1 : Applies and is the correct answer.
*/