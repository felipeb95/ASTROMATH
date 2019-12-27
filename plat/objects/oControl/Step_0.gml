var i = undefined;
//for(i=0;i<4;i++){
	/*if(device_mouse_check_button(0, mb_left)){
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
}*/

for(i=0;i<2;i++){
    if(device_mouse_check_button(i,mb_any)){
        if(point_in_rectangle(device_mouse_x(i),device_mouse_y(i),30,540,220,670)){
			show_debug_message("left");
			leftFinger = -1;
		}
   
        if(point_in_rectangle(device_mouse_x(i),device_mouse_y(i),221,540,415,670)){
			show_debug_message("right");
			leftFinger = 1;
		}
		
		if(point_in_circle(device_mouse_x(i),device_mouse_y(i),oDisparo.x, oDisparo.y,64)){
			show_debug_message("shoot");
			rightFinger = -1;
		}
		
		if(point_in_circle(device_mouse_x(i),device_mouse_y(i),oJump.x, oJump.y,64)){
			show_debug_message("jump");
			rightFinger = 1;
		}
		if(point_in_circle(device_mouse_x(i),device_mouse_y(i),oCofre.x, oCofre.y,32)){
			show_debug_message("cofre");
			rightFinger = 2;
		}
    }
   
    if(device_mouse_check_button_released(i,mb_any)){
		if(point_in_rectangle(device_mouse_x(i),device_mouse_y(i),30,540,220,670)){
			show_debug_message("stopped left");
			stopped = true;
		}
		
		if(point_in_rectangle(device_mouse_x(i),device_mouse_y(i),221,540,415,670)){
			show_debug_message("stopped right");
			stopped = true;
		}
		
		if(point_in_circle(device_mouse_x(i),device_mouse_y(i),oJump.x, oJump.y,64)){
			show_debug_message("jump");
			justJumped = true;
		}
		
    }
	
	
}

if(rightFinger = -1){
	global.disparo = true;
	rightFinger = 0;
}

if(rightFinger = 1){
	global.salto = true;
	rightFinger = 0;
}

if(rightFinger = 2){
	global.cofre = true;
	rightFinger = 0;
}

if(leftFinger == -1 and !stopped){
	global.movimiento -= 5;
    show_debug_message("MOVE LEFT");
    leftFinger =  0;
}

if(leftFinger == 1 and !stopped){
    global.movimiento += 5;
    show_debug_message("MOVE RIGHT");
    leftFinger = 0;
}

if(stopped){
	global.movimiento = 0;	
}

if(justJumped)
	global.salto = false;

stopped = false;
justJumped = false;
global.movimiento = clamp(global.movimiento,-5,5);