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
		show_debug_message("Soy "+string(number_on_bubble)+" y estoy en "+string(inst.number_on_bubble));
	}

}

if(mouse_check_button_released(mb_left)){
	
	is_dragging = false;	
}