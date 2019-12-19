/*show_debug_message("("+string(mouse_x)+","+string(mouse_y)+")");

if(point_in_rectangle(mouse_x,mouse_y,0,room_height-barHeight,room_width/6,room_height-barHeight*2)){
	oCannon.x -= oCannon.xSpeed;
	show_debug_message("LEFT");
}
	

if(point_in_rectangle(mouse_x,mouse_y,room_width/6,room_height-barHeight,room_width/3,room_height-barHeight*2)){
	oCannon.x += oCannon.xSpeed;
	show_debug_message("RIGHT");
}

if(point_in_rectangle(mouse_x,mouse_y,0,0,room_width,room_height)){
	show_debug_message("INSIDE");
}


oCannon.x = clamp(oCannon.x, room_width/3+sprite_get_width(sCannon)/2,room_width-sprite_get_width(sCannon)/2);
*/