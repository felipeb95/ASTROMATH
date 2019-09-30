/*  Instances of bubbles */
inst_of_left = global.left_bubble_inst;
inst_of_right = global.right_bubble_inst;
left_partials = inst_of_left.partials;
right_partials = inst_of_right.partials;

/* List that collects the multiples */
table_multiples = ds_list_create();

/* Positions */

/* Horizontal Line */
hline_x1 = room_width/2 - 150;
hline_x2 = room_width/2 + 150;
hline_y = room_height/12;
hline_width = 5;

/* Vertical line */

vline_y1 = room_height/12 - 50;
vline_y2 = room_height/12 + 200;
vline_x = room_width/2 + 80;
vline_width = 5;

/* Numbers placement */
left_number_x = room_width/2 - 100;
right_number_x = room_width/2 + 30;

space_between_numbers = 30;
first_partial_y = hline_width+space_between_numbers;
first_table_multiple_x = vline_x + 30;