if(is_dragging && mouse_check_button(mb_left)){
	
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
		inst = instance_place(x,y,obj_bubble);
		if(inst.number_on_bubble mod number_on_bubble == 0){
			inst.number_on_bubble /= number_on_bubble;
			
			ds_list_add(inst.multiples,number_on_bubble); // The bubble where the number was dropped saves that number.
			
			switch(inst.side){
				case "left" : obj_spawner.left_number /= number_on_bubble; break;
				case "right" : obj_spawner.right_number /= number_on_bubble; break;
				default: break;
			}

			global.multiples_on_bubbles_report = true; // The multiples list for each bubble is reported.
		}
		
		if(bubbles_module(number_on_bubble)) // Checks if the number in the little bubble can entirely divide the one in the big bubble.
			instance_destroy(self);
		else{
			x =	first_x;
			y = first_y;
		}
		
		numbers_reduced(); // Checks if both numbers are 1, so it can delete the bubbles from the spawner object.
		
	}

}


if(mouse_check_button_released(mb_left)){
	
	is_dragging = false;	
}