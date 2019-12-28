for(i=0;i<4;i++){
	if(device_mouse_check_button(i,mb_any)){
		if(point_in_rectangle(device_mouse_x(i),device_mouse_y(i),0,room_height-barHeight*2,room_width/6+3,room_height-barHeight)){
			leftFinger = -1;
		}
	
		if(point_in_rectangle(device_mouse_x(i),device_mouse_y(i),room_width/6+4,room_height-barHeight*2,room_width/3+3,room_height-barHeight)){
			leftFinger = 1;
		}
	}
	
	if(device_mouse_check_button_released(i,mb_any) and canShoot){
		if(point_in_rectangle(device_mouse_x(i),device_mouse_y(i),room_width-room_width/4,0,room_width,room_height)){
			rightFinger = 1;
		}	
	}
	
	if(point_in_rectangle(device_mouse_x(i),device_mouse_y(i),room_width/3/2 - offset, room_height-sprite_height, room_width/3/2 + offset, room_height)){
		oPlayerProperties.alarm[0] = 1;
	}
	
	if(point_in_rectangle(device_mouse_x(i),device_mouse_y(i),room_width/3/2 + offset+10, room_height-sprite_height, room_width/3/2 + offset+offset*2+10, room_height)){
		oPlayerProperties.alarm[1] = 1;
	}

}


if(leftFinger == -1){
	oCannon.x -= oCannon.xSpeed;
	show_debug_message("MOVE LEFT");
	leftFinger =  0;
}

if(leftFinger == 1){
	oCannon.x += oCannon.xSpeed;
	show_debug_message("MOVE RIGHT");
	leftFinger = 0;
}
	
if(rightFinger == 1){
	audio_play_sound(sndShoot,10,false);
	instance_create_depth(oCannon.x,oCannon.y-sprite_get_height(sCannon),-1001,oProjectile);
	show_debug_message("SHOOT");
	rightFinger = 0;
}