for(i = 0; i < ds_list_size(table_multiples); i++){
	draw_set_font(font_multiples_list);
	draw_text(first_number_x+space_between_numbers*i,multiples_y,table_multiples[| i]);
	draw_set_font(font_x_list);
	if(i != ds_list_size(table_multiples)-1)
		draw_text(first_x+space_between_numbers*i,multiples_y,"x");
}