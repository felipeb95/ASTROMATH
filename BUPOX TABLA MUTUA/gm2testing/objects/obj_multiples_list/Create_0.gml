table_multiples = ds_list_create();
ds_list_copy(table_multiples, obj_table.table_multiples);
list_size = ds_list_size(table_multiples);
operations = list_size - 1;
operation_index = 0;
n_choices = 3; // Quantity of alternatives in the times excercise.
choice_n = undefined; // Bubble number where answer is (set in alarm 1).
correct_answer = undefined;
str_marked = "";
str_not_marked = "";

/* Flags */
numbers_in_position = false; // Numbers already moved across the screen.
moving_text = true; // Text should be moving across the screen.
correct_bubble_clicked = false; // Sets to true when mouse interacts with the correct bubble;

/* Positions */

space_between_numbers = 120;
times_cross_margin = 60;
first_number_x = -1*room_width/2 - space_between_numbers*(list_size/2) + times_cross_margin;
first_x = first_number_x + times_cross_margin;
multiples_y = room_height/2;
x_out = 500; // Puts the little bubbles out of screen with a 500 px offset.

/* Colours */
marked_color = c_orange;
not_marked_color = c_white;
text_color = c_white;
/* Physics */

aceleration = 0.5;

/* Alarms */
alarm[0] = 100; // This alarm sets numbers_in_position to true with a little delay.