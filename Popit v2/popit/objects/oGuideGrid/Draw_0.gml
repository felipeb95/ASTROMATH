draw_set_color(c_silver);

/* Room separator for table and gameplay */ 
draw_line_width(room_width/3,0,room_width/3,room_height,1);

/* Bottom limit for bubbles */
draw_line_width(room_width/3,room_height-sprite_get_height(sCannon),room_width,room_height-sprite_get_height(sCannon),1);

draw_set_color(c_white);