/* When the spawner gets enabled, then bubbles are created 
If the steps to select number are to long, move code to alarm 0 and set time to the alarm
at the bottom of this file. */

// Code was moved to Alarm 0.

/* As both numbers have been reduced to 1, bubbles should disappear
and the next phase of the excercise should start, that is, the times phase */

if(phaseOneDone){
	phaseOne = false;
	/* A message to congratulate or to give feedback appears and all bubbles are popped. */
	/* with(obj_bubble)
		instance_destroy();	
	*/
	
	with(obj_little_bubble)
		instance_destroy();
	
	if(!instance_exists(obj_bubble)){
		phaseOneDone = false;
		show_debug_message("Phase 1 Done");
		mult_list_inst = instance_create_depth(-room_width/2,room_height/2,-1000,obj_multiples_list);
		phaseTwo = true;
	}
	
	
	
}
/* In here, a new pair of numbers is selected to be the next excercise
and to set the creation of new bubbles*/

if(phaseTwoDone){
	show_debug_message("Phase 2 Done");
	left_number = 82;
	right_number = 14;
	wave_generator_timer = 1.5; // Set value to Congratulations or Feedback message's time on screen.
	alarm[0] = room_speed*wave_generator_timer;
	spawner_enabled = true;
	
	exercise_number++;
	new_exercise = true;
	show_debug_message(exercise_number);
	show_debug_message(new_exercise);
}

/* In case steps are too long for the spawner's creation of bubbles*/
//alarm[0] = 1;