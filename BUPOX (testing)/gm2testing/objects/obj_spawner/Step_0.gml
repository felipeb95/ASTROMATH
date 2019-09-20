/* When the spawner gets enabled, then bubbles are created 
If the steps to select number are to long, move code to alarm 0 and set time to the alarm
at the bottom of this file. */
if(spawner_enabled){
	var left_bubble = instance_create_depth(x_left_bubble,room_height/2,-1000,obj_bubble);
	with(left_bubble){
		number_on_bubble = obj_spawner.left_number;
		first_number = obj_spawner.left_number;
		side = "left";
	}
	var right_bubble = instance_create_depth(x_right_bubble,room_height/2,-1000,obj_bubble);
	with(right_bubble){
		number_on_bubble = obj_spawner.right_number;
		first_number = obj_spawner.right_number;
		side = "right";
	}
	
	for(i=0;i<ds_list_size(multiples_list);i++)
	{
	
		var little_bubble = instance_create_depth(x_first_little_bubble+(i*space_between_bubbles),y_little_bubble,-1000,obj_little_bubble);
		with(little_bubble){
			number_on_bubble = obj_spawner.multiples_list[| obj_spawner.i];
			first_x = obj_spawner.x_first_little_bubble+(obj_spawner.i*150);
			first_y = obj_spawner.y_little_bubble;
		}
	}
	
	spawner_enabled = false;
}

/* As both numbers have been reduced to 1, bubbles should disappear
and the next phase of the excercise should start, that is, the times phase */

if(multiplesExcerciseDone){
	
	/* A message to congratulate or to give feedback appears and all bubbles are popped. */
	with(obj_bubble)
		instance_destroy();	
	
	with(obj_little_bubble)
		instance_destroy();

	multiplesExcerciseDone = false;
	show_debug_message("Phase 1 Done");
}
/* In here, a new pair of numbers is selected to be the next excercise
and to set the creation of new bubbles*/

if(timesExcerciseDone){
	show_debug_message("Phase 2 Done");
	left_number = 82;
	right_number = 14;
	spawner_enabled = true;
}

/* In case steps are too long for the spawner's creation of bubbles*/
//alarm[0] = 1;