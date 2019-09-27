/* Counters for the steps of the exercise and the exercise number (Joel suck my dick)*/
exercise_number = 1;
step_number = 0;
new_exercise = false;

/* Initial numbers for testing */
left_number = 30;
left_to_table_header = 30;
right_number = 72;
right_to_table_header = 72;

/* Creation of bubbles flag */
spawner_enabled = true;

/* Excercise by phase flag */
phaseOneDone = false; // Set to true when numbers where reduced to 1 by its multiples.
phaseTwoDone= false; // Set to true when the multiples are multiplied between them.


/* If feedback or animations are added, the generation of the excercise should delay some time */
wave_generator_timer = 1.5;

/* List of prime numbers */
multiples_list = ds_list_create();
ds_list_add(multiples_list,2);
ds_list_add(multiples_list,3);
ds_list_add(multiples_list,5);
ds_list_add(multiples_list,7);
ds_list_add(multiples_list,11);
ds_list_add(multiples_list,13);


/* Alarms */
to_next_phase_message = false;
alarm[0] = 1;
excercise_finished_message = false;
alarm[1] = 1; // Alarm form the table creation code, which is delayed to get all variables set.

/* Saving instances in globals */

global.left_bubble_inst = undefined;
global.right_bubble_inst = undefined;
global.middle_bubble_inst = undefined;

/* Variables for relative positioning */
big_bubble_width = sprite_get_width(spr_big_bubble);
x_left_bubble = room_width/2-big_bubble_width*1.5;
x_right_bubble = room_width/2+big_bubble_width*1.5;
x_middle_bubble = room_width/2;
y_for_bubbles = room_height/2+40;

x_first_little_bubble = room_width/8;
y_little_bubble = room_height-60;
space_between_bubbles = sprite_get_width(obj_little_bubble);

