/* Bubble numbers (multiples and partials too) */
number_on_bubble = undefined;
left_bubble_number = undefined;
right_bubble_number = undefined;
side = undefined;
multiples = ds_list_create();
partials = ds_list_create();

/* Flags */
deinflate = false;

/* Alarms */
alarm[0] = 50; // This alarm set deinflate to true, so the bubble has some time before it starts shrinking.

/* Position and physics */
image_angle = irandom_range(0,360);
aceleration = 0.5;

