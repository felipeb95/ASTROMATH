draw_self();
draw_set_halign(fa_center);
draw_set_font(topbarfont);
//draw_rectangle_colour(0, 0, room_width, sprite_height, c_black, c_white, c_white, c_black, false);
draw_text(room_width/2,sprite_height/2,"Tu puntaje: "+string(oPlayerInfo.playerScore));