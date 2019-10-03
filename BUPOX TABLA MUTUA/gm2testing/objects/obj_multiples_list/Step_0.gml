if(moving_text){
	x += aceleration;
	first_number_x += aceleration;
	first_x += aceleration;
	aceleration += 0.5;
	show_debug_message("X value is : "+string(x));
	if(x > (room_width/2  - string_width(str_marked+str_not_marked)/2) -1){
		moving_text = false;
		numbers_in_position = true;
	}
}

if(correct_bubble_clicked){
	table_multiples_reorder(table_multiples);
	correct_answer = (ds_list_size(table_multiples) > 1 ? table_multiples[| 0] * table_multiples[| 1] : table_multiples[| 0]);
	show_debug_message("Correct answer is :"+string(correct_answer));
	
	if(ds_list_size(table_multiples) > 1){
		
		/* Instances of little bubbles are created */
		
		randomize();
		choice_n = irandom_range(0,n_choices-1);
		var bubble_number = undefined;
		var x_pos = undefined;
		var y_pos = undefined;
		var _n_choices = n_choices;
		var x_randomizer = undefined;


		for(var i = 0; i < n_choices; i++){
	
			x_randomizer = irandom_range(0,1) // 0 is for left, 1 is for right;
			x_pos = (x_randomizer == 1 ? -1*x_out : x_out);
			y_pos = irandom_range(-1000,1000);
			var little_bubble_inst = instance_create_depth(x_pos, y_pos, -1000, obj_little_bubble);
			bubble_number = (i == choice_n ? correct_answer : irandom_range(1,100));
	
			with(little_bubble_inst){
				number_on_bubble = bubble_number;
				x_to_move = (room_width/(_n_choices+2))*(1+(1.5*(i)));
				y_to_move = 600;
				speed_to_move = 10;
			}
		}
	
	}
	else{
		alarm[2] = 50;	
	}
	correct_bubble_clicked = false;
}


if(ds_list_size(table_multiples) >= 2){
	str_marked = string(table_multiples[| 0]) +" x "+ string(table_multiples[| 1]);
	str_not_marked = "";
	if(ds_list_size(table_multiples) > 2){
		for(i = 2 ; i < ds_list_size(table_multiples); i++){
			str_not_marked += " x "+string(table_multiples[| i]); 	
		}
	}
} 
else{
	str_marked = string(table_multiples[| 0]);
	str_not_marked = "";
}

