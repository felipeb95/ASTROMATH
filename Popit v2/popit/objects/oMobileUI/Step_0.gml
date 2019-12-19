if(device_mouse_check_button(0,mb_left)){
	right_finger = 1;
	if(point_in_rectangle(device_mouse_x(0),device_mouse_y(0),0,room_height-barHeight*2,room_width/6+3,room_height-barHeight)){
		oCannon.x -= oCannon.xSpeed;
		show_debug_message("MOVE LEFT");
	}

	if(point_in_rectangle(device_mouse_x(0),device_mouse_y(0),room_width/6+4,room_height-barHeight*2,room_width/3+3,room_height-barHeight)){
		oCannon.x += oCannon.xSpeed;
		show_debug_message("MOVE RIGHT");
	}
	
	offset = sprite_get_width(sCorrectAnswerBonus)/2;
	if(point_in_rectangle(device_mouse_x(0),device_mouse_y(0),room_width/3/2 - offset, room_height-sprite_height, room_width/3/2 + offset, room_height)){
		oPlayerProperties.alarm[0] = 1;
		show_debug_message("Esta wea");
	}
	
	if(point_in_rectangle(device_mouse_x(0),device_mouse_y(0),room_width/3/2 + offset+10, room_height-sprite_height, room_width/3/2 + offset+offset*2+10, room_height)){
		oPlayerProperties.alarm[1] = 1;
		show_debug_message("La otra wea");
	}
	
}
else
	right_finger = 0;

if(canShoot){
	if(device_mouse_check_button_released(right_finger,mb_left)){
		if(point_in_rectangle(device_mouse_x(right_finger),device_mouse_y(right_finger),room_width/3,0,room_width,room_height)){
			audio_play_sound(sndShoot,10,false);
			instance_create_depth(oCannon.x,oCannon.y-sprite_get_height(sCannon),-1001,oProjectile);
			show_debug_message("SHOOT");
		}	
	}
}



