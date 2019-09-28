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