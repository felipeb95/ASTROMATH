/* Initial numbers for testing */
left_number = 30;
right_number = 72;

/* Creation of bubbles flag */
spawner_enabled = true;

/* Excercise by phase flag */
multiplesExcerciseDone = false; // Set to true when numbers where reduced to 1 by its multiples.
timesExcerciseDone = false; // Set to true when the multiples are multiplied between them.


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
alarm[1] = 1;


/* Variables for relative positioning */

x_left_bubble = room_width/2-300;
x_right_bubble = room_width/2+300;
x_first_little_bubble = room_width/8;
y_little_bubble = room_height-100;
space_between_bubbles = sprite_get_width(obj_little_bubble);