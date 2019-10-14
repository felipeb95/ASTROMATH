if(rotation == 1)
	image_angle -= rotation_degree;
else
	image_angle += rotation_degree;


if(position_meeting(mouse_x,mouse_y,id) and mouse_check_button_pressed(mb_left)){
		
	x_offset = x-mouse_x;
	y_offset = y-mouse_y;
	is_dragging = true;
	
}

if(obj_spawner.phaseOne)
	my_timer++;

if(!is_dragging and obj_spawner.phaseOne){
	//y = anchorY + sin(obj_spawner.timer*frequency)*amplitude; // This causes the bubbles to mover together.
	y = anchorY + sin(my_timer*frequency)*amplitude; // This gives every little bubble a unique y value so they create a wave.
}