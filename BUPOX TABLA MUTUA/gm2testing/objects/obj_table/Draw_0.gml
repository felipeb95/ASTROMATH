/* Lines to make the table */
draw_line_width(hline_x1,hline_y,hline_x2,hline_y,hline_width);
draw_line_width(vline_x, vline_y1, vline_x, vline_y2, vline_width);

/* Numbers of big bubbles placement */
draw_set_font(font_bubble);
draw_set_valign(fa_bottom);
draw_text(left_number_x, hline_y + hline_width+1, string(obj_spawner.left_to_table_header)); // Left Bubble Number
draw_text(right_number_x, hline_y + hline_width+1, string(obj_spawner.right_to_table_header)); // Right Bubble Number

/* Partials on table */
draw_set_font(font_table_number);
draw_set_valign(fa_middle);

if(!ds_list_empty(inst_of_left.partials)){ // Any of the list can be used, as their partials list have the same size.
	
	for(i = 0; i < ds_list_size(inst_of_left.partials); i++){
		draw_text(left_number_x, hline_y + first_partial_y + space_between_numbers*i, string(inst_of_left.partials[| i]));
		draw_text(right_number_x, hline_y + first_partial_y + space_between_numbers*i, string(inst_of_right.partials[| i]));
	}
	
	for(i = 0; i < ds_list_size(table_multiples); i++){ // If there are partials, there are multiples on table.
		if(i = 0){
			draw_set_valign(fa_bottom);
			draw_text(first_table_multiple_x, hline_y + hline_width+1, string(table_multiples[| i]));
		}
		else{	
			draw_set_valign(fa_middle);
			draw_text(first_table_multiple_x, hline_y + first_partial_y + space_between_numbers*(i-1), string(table_multiples[| i]));
		}
	}
}
