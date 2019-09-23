/// partials_list_on_bubbles()

/* Prints the list of partials collected by each bubble (left or right)
	and it also shows them one by one. This happens everytime a little number
	is correctly dragged and dropped inside into the big bubbles */

var partials_list_size;
var partials_list;
var bubble_side;
var message;
var str;
var i;

with(obj_bubble){
	partials_list_size = ds_list_size(partials);
	partials_list = partials;
	bubble_side = side;
	message = "Bubble at: "+string_upper(bubble_side)+" has collected "+string(partials_list_size)+" partials.";
	str = "";
	if(partials_list_size > 0){
		for(i = 0; i < partials_list_size; i ++)
			str += "{"+string(partials_list[| i])+"} ";
	}
	message += " "+str;
	show_debug_message(message);
}
