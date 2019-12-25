var i = undefined;
//for(i=0;i<2;i++){
	if(device_mouse_check_button(0, mb_left)){
		rightFinger = 1;
		if(point_in_rectangle(device_mouse_x(0),device_mouse_y(0),30,540,220,670)){
			show_debug_message("left");
			global.movimiento -= 5;
		}
		
		if(point_in_rectangle(device_mouse_x(0),device_mouse_y(0),221,540,415,670)){
			show_debug_message("right");
			global.movimiento += 5;
		}
	}
	else
		rightFinger = 0;
//}
global.movimiento = clamp(global.movimiento,-5,5);

if(device_mouse_check_button_released(0, mb_left)){
	global.movimiento = 0;
}


