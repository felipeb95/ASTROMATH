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
	
	phaseTwoDone = false;
	ds_list_clear(obj_table.table_multiples);
	ds_list_clear(obj_table.left_partials);
	ds_list_clear(obj_table.right_partials);
	phaseOne = true;
	
	exercise_number++;

	left_number = 40;
	left_to_table_header = 40;
	right_number = 84;
	right_to_table_header = 84;
	
	wave_generator_timer = 1.5; // Set value to Congratulations or Feedback message's time on screen.
	spawner_enabled = true;
	alarm[0] = room_speed*wave_generator_timer;
}

/* In case steps are too long for the spawner's creation of bubbles*/
//alarm[0] = 1;