/// @description Insert description here
// You can write your code in this editor

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
			show_debug_message("Lado: "+inst.side);
			switch(inst.side){
				case "left" : obj_spawner.left_number /= number_on_bubble; break;
				case "right" : obj_spawner.right_number /= number_on_bubble; break;
				default: break;
			}
		}
		if(bubbles_module(number_on_bubble))
			instance_destroy(self);
		else{
			x =	first_x;
			y = first_y;
		}
		
	}

}


if(mouse_check_button_released(mb_left)){
	
	is_dragging = false;	
}