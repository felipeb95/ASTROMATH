/// multiples_list_on_bubbles()

/* Prints the list of multiples collected by each bubble (left or right)
	and it also shows them one by one. This happens everytime a little number
	is correctly dragged and dropped inside into the big bubbles */

var multiples_list_size;
var multiples_list;
var bubble_side;
var message;
var str;
var i;

with(obj_bubble){
	multiples_list_size = ds_list_size(multiples);
	multiples_list = multiples;
	bubble_side = side;
	message = "Bubble at: "+string_upper(bubble_side)+" has collected "+string(multiples_list_size)+" multiples.";
	str = "";
	if(multiples_list_size > 0){
		for(i = 0; i < multiples_list_size; i ++)
			str += "{"+string(multiples_list[| i])+"} ";
	}
	message += " "+str;
	show_debug_message(message);
}
