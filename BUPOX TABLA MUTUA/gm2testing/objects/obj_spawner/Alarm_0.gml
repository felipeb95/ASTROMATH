/* When the spawner gets enabled, then bubbles are created */
if(spawner_enabled){
	var left_bubble = instance_create_depth(x_left_bubble,y_for_bubbles,-1000,obj_bubble);
	global.left_bubble_inst = left_bubble;
	with(left_bubble){
		number_on_bubble = obj_spawner.left_number;
		side = "left";
	}
	var right_bubble = instance_create_depth(x_right_bubble,y_for_bubbles,-1000,obj_bubble);
	global.right_bubble_inst = right_bubble;
	with(right_bubble){
		number_on_bubble = obj_spawner.right_number;
		side = "right";
	}
	var middle_bubble = instance_create_depth(x_middle_bubble,y_for_bubbles,-1000,obj_bubble);
	with(middle_bubble){
		left_bubble_number = obj_spawner.left_number;
		right_bubble_number = obj_spawner.right_number;
		side = "middle";
	}
	global.middle_bubble_inst = middle_bubble;
	
	for(i=0;i<ds_list_size(multiples_list);i++)
	{
	
		var little_bubble = instance_create_depth(x_first_little_bubble+(i*space_between_bubbles),y_little_bubble,-1000,obj_little_bubble);
		with(little_bubble){
			number_on_bubble = obj_spawner.multiples_list[| obj_spawner.i];
			first_x = obj_spawner.x_first_little_bubble+(obj_spawner.i*150);
			first_y = obj_spawner.y_little_bubble;
		}
	}
	
	spawner_enabled = false;
}

alarm[0] = 1;