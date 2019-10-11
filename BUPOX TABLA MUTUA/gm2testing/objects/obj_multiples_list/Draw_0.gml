for(i = 0; i < ds_list_size(table_multiples); i++){
	draw_set_font(font_multiples_list);
	
	draw_set_halign(fa_left);
	text_color = (numbers_in_position) ? marked_color : not_marked_color;
	if(numbers_in_position){
		first_number_x = room_width/2 - string_width(str_marked+str_not_marked)/2;
	}
	
	draw_set_color(text_color);
	//draw_circle(room_width/2, 600, 10, false); // Circle in middle of the room for placement.
	draw_text(first_number_x ,multiples_y, str_marked); // Highlighted text
	draw_set_color(not_marked_color);
	draw_text(first_number_x+string_width(str_marked+" "), multiples_y, str_not_marked);
	//draw_text(room_width/2 - string_width(str_marked+str_not_marked)/2 + string_width(str_marked+" ") , multiples_y, str_not_marked); // Text not highlighted right next to highlighted one.

}

	draw_set_color(c_white); // To keep other elements with white color.
	draw_set_halign(fa_center); // Reset alignment for other drawings.
	