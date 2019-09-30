/// multiples_on_table();

/* Prints the list of multiples that have been correctly selected and are being printed
on the board */

var multiples_list_size;
var multiples_list;
var message;
var str;
var i;

with(obj_table){
	multiples_list_size = ds_list_size(table_multiples);
	multiples_list = table_multiples;
	message = "The Table has collected "+string(multiples_list_size)+" multiples.";
	str = "";
	if(multiples_list_size > 0){
		for(i = 0; i < multiples_list_size; i ++)
			str += "{"+string(multiples_list[| i])+"} ";
	}
	message += " "+str;
	show_debug_message(message);
}
