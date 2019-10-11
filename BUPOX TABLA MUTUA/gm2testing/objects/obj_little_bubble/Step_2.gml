if(obj_spawner.phaseOne){
	if(is_dragging and mouse_check_button(mb_left)){
	
		x = mouse_x + x_offset;
		y = mouse_y + y_offset;
	}
	else {
	
		if(!position_meeting(x,y,obj_bubble))
		{
			x =	first_x;
			y = first_y;
		}
		else {
			inst = instance_place(x,y,obj_bubble); // Instance of bubble where little bubble is dropped.
			if(modules_check(inst, number_on_bubble, inst_of_left, inst_of_middle, inst_of_right)){
				switch(inst.side){
					case "left" : 
						obj_spawner.left_number /= number_on_bubble;
						inst.number_on_bubble /= number_on_bubble; // Number on bubble where little bubble drops changes to its division.
						inst_of_middle.left_bubble_number /= number_on_bubble;
						break;
					case "right" : 
						obj_spawner.right_number /= number_on_bubble; 
						inst.number_on_bubble /= number_on_bubble; // Number on bubble where little bubble drops changes to its division.
						inst_of_middle.right_bubble_number /= number_on_bubble;
						break;
					case "middle" : 
						obj_spawner.left_number /= number_on_bubble; 
						obj_spawner.right_number /= number_on_bubble;
						inst_of_left.number_on_bubble /= number_on_bubble;
						inst_of_right.number_on_bubble /= number_on_bubble;
						inst.left_bubble_number /= number_on_bubble;
						inst.right_bubble_number /= number_on_bubble;
						break;
					default: break;
				}
			
				show_debug_message("ADDED");
				ds_list_add(inst_of_left.partials, inst_of_left.number_on_bubble);
				ds_list_add(inst_of_right.partials, inst_of_right.number_on_bubble);
				ds_list_add(obj_table.table_multiples, number_on_bubble);

				global.partials_and_multiples_report= true; // The multiples list for each bubble is reported.
			}
		
			if(bubble_fitness(number_on_bubble)) // Checks if the number in the little bubble can entirely divide the one in the big bubble.
				instance_destroy(self);
			else{
				x =	first_x;
				y = first_y;
			}
			
			/* All big bubbles' size is reset to its original size and all of their alarms tick after 50 steps
				to start shrinking the bubbles */
				
			with(obj_bubble){
				deinflate = false; // Stops shrinking
				image_xscale = 1; 
				image_yscale = 1;
				alarm[0] = 50; // Delay
			}
		
			numbers_reduced(); // Checks if both numbers are 1, so it can delete the bubbles from the spawner object.
		
		}

	}
	
	if(mouse_check_button_released(mb_left)){
		is_dragging = false;	
	}
}


if(obj_spawner.phaseTwo){
	if(point_distance(x, y, x_to_move, y_to_move) > 50){
		move_towards_point( x_to_move, y_to_move, speed_to_move);
	}
	else{
		speed_to_move = 0;
	}
	
	if(mouse_check_button_pressed(mb_left))
		if(position_meeting(mouse_x,mouse_y,self)){
			obj_multiples_list.bubble_clicked = true;
			if(check_answer(self.number_on_bubble,obj_multiples_list.correct_answer)){
				show_debug_message("Correct bubble was clicked");
				obj_multiples_list.correct_bubble_clicked = true;
			}
			else
				show_debug_message("Wrong bubble was clicked");
			
		}
	
}
