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
	draw_set_halign(fa_center);
	
	/*
	if(numbers_in_position)
		text_color = (i == 0 or i == 1 ? marked_color : not_marked_color); // Checks if number should be marked or not.
	draw_set_colour(text_color);
	draw_text(first_number_x+space_between_numbers*i,multiples_y,table_multiples[| i]);
	
	if(numbers_in_position)
		text_color = (i == 0 ? marked_color : not_marked_color); // Checks if 'x' should be marked or not.
	draw_set_colour(text_color);
	draw_set_font(font_x_list);
	if(i != ds_list_size(table_multiples)-1)
		draw_text(first_x+space_between_numbers*i,multiples_y,"x");
	*/
	//draw_text_custom(first_number_x,multiples_y,"[$=c_orange]"+str_marked+"[$=c_white]"+str_not_marked,1);