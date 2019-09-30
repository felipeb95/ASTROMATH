for(i = 0; i < ds_list_size(table_multiples); i++){
	draw_set_font(font_multiples_list);
	
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
}

	draw_set_color(c_white); // To keep other elements with white color.