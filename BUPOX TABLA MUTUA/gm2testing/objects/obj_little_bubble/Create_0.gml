bubble_radius = 30;
bubble_number = 0;

rotation = irandom_range(0,1);
rotation_degree = random_range(0,0.3);
mx = -1;
my = -1;
is_dragging = false;

anchorY = room_height-60;
frequency = 0.05;
amplitude = 20;
timer = 0;
alarm[0] = 1;


first_x = 0;
first_y = 0;
x_to_move = 0;
y_to_move = 0
speed_to_move = 0;

inst_of_left = instance_place(obj_spawner.x_left_bubble,obj_spawner.y_for_bubbles,obj_bubble);
inst_of_right = instance_place(obj_spawner.x_right_bubble,obj_spawner.y_for_bubbles,obj_bubble);
inst_of_middle = instance_place(obj_spawner.x_middle_bubble,obj_spawner.y_for_bubbles,obj_bubble);