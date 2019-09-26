table_multiples = ds_list_create();
ds_list_copy(table_multiples, obj_table.table_multiples);
list_size = ds_list_size(table_multiples);

/* Flags */

moving_text = true;

/* Positions */

space_between_numbers = 120;
times_cross_margin = 60;
first_number_x = -1*room_width/2 - space_between_numbers*(list_size/2) + times_cross_margin;
first_x = first_number_x + times_cross_margin;
multiples_y = room_height/2;


/* Physics */

aceleration = 0.5;

/* Alarms */
alarm[0] = 1;