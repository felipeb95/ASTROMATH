for(i = 0; i < 2; i++){
	if(device_mouse_check_button(i,mb_left)){
		if(point_in_rectangle(mouse_x,mouse_y,0,room_height-barHeight*2,room_width/6+3,room_height-barHeight)){
		oCannon.x -= oCannon.xSpeed;
		show_debug_message("MOVE LEFT");
		}
	

		if(point_in_rectangle(mouse_x,mouse_y,room_width/6+4,room_height-barHeight*2,room_width/3+3,room_height-barHeight)){
			oCannon.x += oCannon.xSpeed;
			show_debug_message("MOVE RIGHT");
		}
	}
	
	if(device_mouse_check_button_released(i,mb_left)){
		if(point_in_rectangle(mouse_x,mouse_y,room_width/3,0,room_width,room_height)){
			audio_play_sound(sndShoot,10,false);
			instance_create_depth(oCannon.x,oCannon.y-sprite_get_height(sCannon),-1001,oProjectile);
			show_debug_message("SHOOT");
		}	
	}
}

