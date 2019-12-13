/* VARIABLES */
randomize();
ySpeed = random_range(0.3,0.6);

/*VARIABLES FOR EFFECTS */
rotation = random_range(0.5,0.8);
yScaleMin = 0.8;
yScaleMax = 1.1; 
image_yscale = random_range(yScaleMin, yScaleMax);
yScaleRate = 0.005;

/* FLAGS */
scale = true;

/* Random selection of sprite */
image_index = irandom_range(0,sprite_get_number(sAlternativeHolder)-1);
show_debug_message("My index is: "+string(image_index));

numberOnHolder = undefined;
isCorrect = false;
applies = -1; 
/* 
	-1 : Not the correct anser.
	 0 : Doesn't apply, but is the correct answer.
	 1 : Applies and is the correct answer.
*/