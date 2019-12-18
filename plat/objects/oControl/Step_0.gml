var i = undefined;
for(i=0;i<4;i++){
	if(device_mouse_check_button_pressed(i, mb_left)){
		instCatch = instance_place(device_mouse_x(i),device_mouse_y(i),oLeft);
		if(instCatch!=noone)
			show_debug_message("IS LEFT");
	}
}

if(leftCheck){
	show_debug_message("LEFT");
	leftCheck = false;
}

if(rightCheck){
	show_debug_message("RIGHT");
	rightCheck = false;
}

if(jumpCheck){
	show_debug_message("JUMP");
	jumpCheck = false;
}

if(shootCheck){
	show_debug_message("SHOOT");
	shootCheck = false;
}

