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
	
	if(ds_list_size(table_multiples) > 1){ // If there is more than one multiple in the list, then the player hasn't finished.
		
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
			var little_bubble_inst = instance_create_depth(x_pos, y_pos, -1000, obj_little_bubble); // Bubbles are created anywhere outside the room boundaries
			bubble_number = (i == choice_n ? correct_answer : irandom_range(1,100)); // Checks if bubble should have right answer or if it will have another number.
	
			with(little_bubble_inst){ // Little bubble's variables are set after its creation.
				number_on_bubble = bubble_number; // Number the bubble will have on it.
				x_to_move = (room_width/(_n_choices+2))*(1+(1.5*(i))); // X coord. where the bubble will land from outside the room limits.
				y_to_move = 600; // Y coord. where the bubble will land. 
				speed_to_move = 10; // X change in every step. How fast the bubble moves towards its position in the room.
			}
		}
	
	}
	else{
		alarm[2] = 50;	// There's only one multiple, which is the final times result. So the alarm fires after 50 steps.
	}
	correct_bubble_clicked = false;
}


if(ds_list_size(table_multiples) >= 2){
	str_marked = string(table_multiples[| 0]) +" \u00b7 "+ string(table_multiples[| 1]); // \u2022 is the times dot symbol.
	str_not_marked = "";
	if(ds_list_size(table_multiples) > 2){
		for(i = 2 ; i < ds_list_size(table_multiples); i++){
			str_not_marked += " \u00b7 "+string(table_multiples[| i]); 	
		}
	}
} 
else{
	str_marked = string(table_multiples[| 0]);
	str_not_marked = "";
}

