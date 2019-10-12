if(rotation == 1)
	image_angle -= rotation_degree;
else
	image_angle += rotation_degree;


if(position_meeting(mouse_x,mouse_y,id) and mouse_check_button_pressed(mb_left)){
		
	x_offset = x-mouse_x;
	y_offset = y-mouse_y;
	is_dragging = true;
	
}

if(!is_dragging and obj_spawner.phaseOne)
{
	y = anchorY + sin(obj_spawner.timer*frequency)*amplitude;
}