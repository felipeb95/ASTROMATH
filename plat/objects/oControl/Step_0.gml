var i = undefined;
//for(i=0;i<2;i++){
	if(device_mouse_check_button(0, mb_left)){
		rightFinger = 1;
		if(point_in_rectangle(device_mouse_x(0),device_mouse_y(0),30,540,220,670)){
			show_debug_message("left");
		}
		
		if(point_in_rectangle(device_mouse_x(0),device_mouse_y(0),221,540,415,670)){
			show_debug_message("right");
		}
	}
	else
		rightFinger = 0;
//}




